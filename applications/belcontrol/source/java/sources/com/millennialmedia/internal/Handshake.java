package com.millennialmedia.internal;

import android.os.Build;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.millennialmedia.MMLog;
import com.millennialmedia.MMSDK;
import com.millennialmedia.internal.playlistserver.PlayListServerAdapter;
import com.millennialmedia.internal.task.TaskFactory;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.IOUtils;
import com.millennialmedia.internal.utils.JSONUtils;
import com.millennialmedia.internal.utils.Utils;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/Handshake.class */
public class Handshake {
    public static final String HANDSHAKE_JSON = "handshake.json";
    public static final String HANDSHAKE_PATH = "/admax/sdk/handshake/1";
    public static final int HANDSHAKE_VERSION = 1;
    private static final String TAG = "Handshake";
    private static Map<String, Class<? extends PlayListServerAdapter>> availableHandshakePlayListServerAdapters;
    private static HandshakeInfo currentHandshakeInfo;
    private static HandshakeInfo defaultHandshakeInfo;
    private static int handshakeAttempts = 0;
    private static boolean initialized = false;
    private static AtomicBoolean requestInProgress = new AtomicBoolean(false);

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/Handshake$Defaults.class */
    public static class Defaults {
        public static final int CLIENT_MEDIATION_TIMEOUT_FLOOR = 1000;
        public static final String DEFAULT_HANDSHAKE_BASE_URL = "https://ads.nexage.com";
        public static final String DEFAULT_HANDSHAKE_JSON = "mmadsdk/default_handshake.json";
        public static final int EXCHANGE_TIMEOUT_FLOOR = 1000;
        public static final int HANDSHAKE_REQUEST_TIMEOUT = 15000;
        public static final int HANDSHAKE_TTL_FLOOR = 60000;
        public static final int INLINE_TIMEOUT_FLOOR = 3000;
        public static final int INTERSTITIAL_TIMEOUT_FLOOR = 3000;
        public static final int MAX_HANDSHAKE_ATTEMPTS = 10;
        public static final int MIN_IMPRESSION_DURATION_CEILING = 60000;
        public static final int MIN_IMPRESSION_DURATION_DEFAULT = 0;
        public static final int MIN_IMPRESSION_DURATION_FLOOR = 0;
        public static final int MIN_IMPRESSION_VIEWABILITY_PERCENT_CEILING = 100;
        public static final int MIN_IMPRESSION_VIEWABILITY_PERCENT_DEFAULT = 0;
        public static final int MIN_IMPRESSION_VIEWABILITY_PERCENT_FLOOR = 0;
        public static final int MIN_INLINE_REFRESH_RATE_FLOOR = 10000;
        public static final int NATIVE_TIMEOUT_FLOOR = 3000;
        public static final int REPORTING_BATCH_FREQUENCY_FLOOR = 120000;
        public static final int REPORTING_BATCH_SIZE_FLOOR = 1;
        public static final String SERVER_ADAPTER_KEY_GREEN = "green";
        public static final String SERVER_ADAPTER_KEY_ORANGE = "orange";
        public static final int SERVER_TO_SERVER_TIMEOUT_FLOOR = 1000;
        public static final int SMART_YIELD_TIMEOUT_DEFAULT = 10000;
        public static final int SMART_YIELD_TIMEOUT_FLOOR = 1000;
        public static final int SUPER_AUCTION_CACHE_TIMEOUT_CEILING = 86400000;
        public static final int SUPER_AUCTION_CACHE_TIMEOUT_DEFAULT = 600000;
        public static final int SUPER_AUCTION_CACHE_TIMEOUT_FLOOR = 1000;
        public static final int VAST_VIDEO_SKIP_OFFSET_FLOOR = 0;
        public static final int VPAID_AD_UNIT_TIMEOUT_FLOOR = 1000;
        public static final int VPAID_HTML_END_CARD_TIMEOUT_FLOOR = 0;
        public static final int VPAID_MAX_BACK_BUTTON_DELAY_FLOOR = 0;
        public static final int VPAID_SKIP_AD_TIMEOUT_FLOOR = 500;
        public static final int VPAID_START_AD_TIMEOUT_FLOOR = 1000;
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/Handshake$HandshakeInfo.class */
    public static class HandshakeInfo {
        public volatile String activePlaylistServerBaseUrl;
        public volatile String activePlaylistServerName;
        public volatile int clientMediationTimeout;
        public volatile String config;
        public volatile int exchangeTimeout;
        public volatile String handshakeBaseUrl;
        public volatile int handshakeTtl;
        public volatile int inlineTimeout;
        public volatile int interstitialExpirationDuration;
        public volatile int interstitialTimeout;
        public volatile int minImpressionDuration;
        public volatile int minImpressionViewabilityPercent;
        public volatile int minInlineRefreshRate;
        public volatile int nativeExpirationDuration;
        public volatile int nativeTimeout;
        public volatile Map<String, NativeTypeDefinition> nativeTypeDefinitions;
        public volatile String reportingBaseUrl;
        public volatile int reportingBatchFrequency;
        public volatile int reportingBatchSize;
        public volatile int serverToServerTimeout;
        public volatile int smartYieldTimeout;
        public volatile int superAuctionCacheTimeout;
        public volatile int vastVideoSkipOffsetMax;
        public volatile int vastVideoSkipOffsetMin;
        public volatile String version;
        public volatile boolean sdkEnabled = true;
        public volatile boolean moatEnabled = true;
        public volatile int vpaidStartAdTimeout = 5000;
        public volatile int vpaidSkipAdTimeout = 500;
        public volatile int vpaidAdUnitTimeout = 5000;
        public volatile int vpaidHtmlEndCardTimeout = 5000;
        public volatile int vpaidMaxBackButtonDelay = CredentialsApi.CREDENTIAL_PICKER_REQUEST_CODE;
        public volatile Map<String, String> existingPackages = new HashMap();
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/Handshake$NativeTypeDefinition.class */
    public static class NativeTypeDefinition {
        public List<ComponentDefinition> componentDefinitions = new ArrayList();
        public String typeName;

        /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition.class */
        public static class ComponentDefinition {
            public int adverstiserRequired;
            public String componentId;
            public int publisherRequired;

            public ComponentDefinition(String str, int i, int i2) {
                this.componentId = str;
                this.publisherRequired = i;
                this.adverstiserRequired = i2;
            }
        }

        public NativeTypeDefinition(String str) {
            this.typeName = str;
        }
    }

    public static Class<? extends PlayListServerAdapter> getActivePlayListServerAdapterClass() {
        Class<? extends PlayListServerAdapter> cls = availableHandshakePlayListServerAdapters.get(getActivePlaylistServerName());
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake active playlist server adapter class: " + cls);
        }
        return cls;
    }

    public static String getActivePlaylistServerBaseUrl() {
        String str = getCurrentHandshakeInfo().activePlaylistServerBaseUrl;
        if (MMLog.isDebugEnabled()) {
            String str2 = TAG;
            MMLog.m4070d(str2, "Handshake active playlist server base url: " + str);
        }
        return str;
    }

    public static String getActivePlaylistServerName() {
        String str = getCurrentHandshakeInfo().activePlaylistServerName;
        if (MMLog.isDebugEnabled()) {
            String str2 = TAG;
            MMLog.m4070d(str2, "Handshake playlist server name: " + str);
        }
        return str;
    }

    public static int getClientMediationTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().clientMediationTimeout, 1000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake client mediation timeout: " + max);
        }
        return max;
    }

    public static String getConfig() {
        String str = getCurrentHandshakeInfo().config;
        if (MMLog.isDebugEnabled()) {
            String str2 = TAG;
            MMLog.m4070d(str2, "Handshake config: " + str);
        }
        return str;
    }

    public static HandshakeInfo getCurrentHandshakeInfo() {
        if (currentHandshakeInfo != null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "Returning current handshake info");
            }
            return currentHandshakeInfo;
        } else if (defaultHandshakeInfo == null) {
            return new HandshakeInfo();
        } else {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "Returning default handshake info");
            }
            return defaultHandshakeInfo;
        }
    }

    public static int getExchangeTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().exchangeTimeout, 1000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake exchange timeout: " + max);
        }
        return max;
    }

    public static List<String> getExistingIds() {
        ArrayList arrayList = new ArrayList();
        Map<String, String> map = getCurrentHandshakeInfo().existingPackages;
        for (String str : map.keySet()) {
            if (Utils.isPackageAvailable(map.get(str))) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static Map<String, String> getExistingPackages() {
        HashMap hashMap = new HashMap(getCurrentHandshakeInfo().existingPackages);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake existing packages: " + hashMap);
        }
        return hashMap;
    }

    public static int getHandshakeTtl() {
        int max = Math.max(getCurrentHandshakeInfo().handshakeTtl, 60000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake handshake ttl: " + max);
        }
        return max;
    }

    public static int getInlineTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().inlineTimeout, 3000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake inline timeout: " + max);
        }
        return max;
    }

    public static int getInterstitialExpirationDuration() {
        int max = Math.max(getCurrentHandshakeInfo().interstitialExpirationDuration, 0);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake interstitial expiration: " + max);
        }
        return max;
    }

    public static int getInterstitialTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().interstitialTimeout, 3000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake interstitial timeout: " + max);
        }
        return max;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r0 > 60000) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getMinImpressionDuration() {
        /*
            com.millennialmedia.internal.Handshake$HandshakeInfo r0 = getCurrentHandshakeInfo()
            int r0 = r0.minImpressionDuration
            r3 = r0
            r0 = r3
            if (r0 < 0) goto L13
            r0 = r3
            r4 = r0
            r0 = r3
            r1 = 60000(0xea60, float:8.4078E-41)
            if (r0 <= r1) goto L15
        L13:
            r0 = 0
            r4 = r0
        L15:
            boolean r0 = com.millennialmedia.MMLog.isDebugEnabled()
            if (r0 == 0) goto L3c
            java.lang.String r0 = com.millennialmedia.internal.Handshake.TAG
            r5 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Handshake minimum impression duration: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.toString()
            com.millennialmedia.MMLog.m4070d(r0, r1)
        L3c:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.Handshake.getMinImpressionDuration():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r0 > 100) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getMinImpressionViewabilityPercent() {
        /*
            com.millennialmedia.internal.Handshake$HandshakeInfo r0 = getCurrentHandshakeInfo()
            int r0 = r0.minImpressionViewabilityPercent
            r3 = r0
            r0 = r3
            if (r0 < 0) goto L13
            r0 = r3
            r4 = r0
            r0 = r3
            r1 = 100
            if (r0 <= r1) goto L15
        L13:
            r0 = 0
            r4 = r0
        L15:
            boolean r0 = com.millennialmedia.MMLog.isDebugEnabled()
            if (r0 == 0) goto L3c
            java.lang.String r0 = com.millennialmedia.internal.Handshake.TAG
            r5 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Handshake minimum impression viewability percentage: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.toString()
            com.millennialmedia.MMLog.m4070d(r0, r1)
        L3c:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.Handshake.getMinImpressionViewabilityPercent():int");
    }

    public static int getMinInlineRefreshRate() {
        int max = Math.max(getCurrentHandshakeInfo().minInlineRefreshRate, 10000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake min inline refresh rate: " + max);
        }
        return max;
    }

    public static int getNativeExpirationDuration() {
        int max = Math.max(getCurrentHandshakeInfo().nativeExpirationDuration, 0);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake native expiration duration: " + max);
        }
        return max;
    }

    public static int getNativeTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().nativeTimeout, 3000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake native timeout: " + max);
        }
        return max;
    }

    public static NativeTypeDefinition getNativeTypeDefinition(String str) {
        NativeTypeDefinition nativeTypeDefinition = getCurrentHandshakeInfo().nativeTypeDefinitions != null ? getCurrentHandshakeInfo().nativeTypeDefinitions.get(str) : null;
        if (MMLog.isDebugEnabled()) {
            String str2 = TAG;
            MMLog.m4070d(str2, "Handshake native type definition: " + nativeTypeDefinition);
        }
        return nativeTypeDefinition;
    }

    public static Map<String, NativeTypeDefinition> getNativeTypeDefinitions() {
        Map<String, NativeTypeDefinition> map = getCurrentHandshakeInfo().nativeTypeDefinitions;
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake native type definitions: " + map);
        }
        return map;
    }

    public static String getReportingBaseUrl() {
        String str = getCurrentHandshakeInfo().reportingBaseUrl;
        if (MMLog.isDebugEnabled()) {
            String str2 = TAG;
            MMLog.m4070d(str2, "Handshake reporting base url: " + str);
        }
        return str;
    }

    public static int getReportingBatchFrequency() {
        int max = Math.max(getCurrentHandshakeInfo().reportingBatchFrequency, 120000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake reporting batch frequency: " + max);
        }
        return max;
    }

    public static int getReportingBatchSize() {
        int max = Math.max(getCurrentHandshakeInfo().reportingBatchSize, 1);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake reportingBatchSize: " + max);
        }
        return max;
    }

    public static int getServerToServerTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().serverToServerTimeout, 1000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake server to server timeout: " + max);
        }
        return max;
    }

    public static int getSmartYieldTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().smartYieldTimeout, 1000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake smart yield timeout: " + max);
        }
        return max;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r0 > 86400000) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getSuperAuctionCacheTimeout() {
        /*
            com.millennialmedia.internal.Handshake$HandshakeInfo r0 = getCurrentHandshakeInfo()
            int r0 = r0.superAuctionCacheTimeout
            r3 = r0
            r0 = r3
            r1 = 1000(0x3e8, float:1.401E-42)
            if (r0 < r1) goto L17
            r0 = r3
            r4 = r0
            r0 = r3
            r1 = 86400000(0x5265c00, float:7.82218E-36)
            if (r0 <= r1) goto L1b
        L17:
            r0 = 600000(0x927c0, float:8.40779E-40)
            r4 = r0
        L1b:
            boolean r0 = com.millennialmedia.MMLog.isDebugEnabled()
            if (r0 == 0) goto L43
            java.lang.String r0 = com.millennialmedia.internal.Handshake.TAG
            r5 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Handshake super auction cache timeout: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.toString()
            com.millennialmedia.MMLog.m4070d(r0, r1)
        L43:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.Handshake.getSuperAuctionCacheTimeout():int");
    }

    public static int getVASTVideoSkipOffsetMax() {
        int i = getCurrentHandshakeInfo().vastVideoSkipOffsetMax;
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Handshake VAST video max skip offset: " + i2);
        }
        return i2;
    }

    public static int getVASTVideoSkipOffsetMin() {
        int i = getCurrentHandshakeInfo().vastVideoSkipOffsetMin;
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Handshake VAST video min skip offset: " + i2);
        }
        return i2;
    }

    public static int getVPAIDAdUnitTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().vpaidAdUnitTimeout, 1000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake VPAID ad unit timeout: " + max);
        }
        return max;
    }

    public static int getVPAIDHTMLEndCardTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().vpaidHtmlEndCardTimeout, 0);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake VPAID html end card timeout: " + max);
        }
        return max;
    }

    public static int getVPAIDMaxBackButtonDelay() {
        int max = Math.max(getCurrentHandshakeInfo().vpaidMaxBackButtonDelay, 0);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake VPAID max back button delay: " + max);
        }
        return max;
    }

    public static int getVPAIDSkipAdTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().vpaidSkipAdTimeout, 500);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake VPAID skip ad timeout: " + max);
        }
        return max;
    }

    public static int getVPAIDStartAdTimeout() {
        int max = Math.max(getCurrentHandshakeInfo().vpaidStartAdTimeout, 1000);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake VPAID start ad timeout: " + max);
        }
        return max;
    }

    public static String getVersion() {
        String str = getCurrentHandshakeInfo().version;
        if (MMLog.isDebugEnabled()) {
            String str2 = TAG;
            MMLog.m4070d(str2, "Handshake version: " + str);
        }
        return str;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0121 A[Catch: all -> 0x0133, JSONException -> 0x013b, IOException -> 0x0146, FileNotFoundException -> 0x0151, TRY_ENTER, TryCatch #6 {FileNotFoundException -> 0x0151, IOException -> 0x0146, JSONException -> 0x013b, all -> 0x0133, blocks: (B:47:0x010f, B:49:0x0121), top: B:85:0x010f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void initialize() {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.Handshake.initialize():void");
    }

    public static boolean isMoatEnabled() {
        boolean z = getCurrentHandshakeInfo().moatEnabled;
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake moat enabled: " + z);
        }
        return z;
    }

    public static boolean isRequestInProgress() {
        return requestInProgress.get();
    }

    public static boolean isSdkEnabled() {
        boolean z = getCurrentHandshakeInfo().sdkEnabled;
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Handshake sdk enabled: " + z);
        }
        return z;
    }

    private static Map<String, NativeTypeDefinition> loadNativeAdConfig(JSONObject jSONObject) {
        HashMap hashMap;
        JSONObject optJSONObject = jSONObject.getJSONObject("nativeConfig").optJSONObject("typeDefs");
        if (optJSONObject != null) {
            HashMap hashMap2 = new HashMap();
            Iterator<String> keys = optJSONObject.keys();
            while (true) {
                hashMap = hashMap2;
                if (!keys.hasNext()) {
                    break;
                }
                String next = keys.next();
                JSONObject jSONObject2 = optJSONObject.getJSONObject(next);
                NativeTypeDefinition nativeTypeDefinition = new NativeTypeDefinition(jSONObject2.getString("name"));
                JSONObject jSONObject3 = jSONObject2.getJSONObject("components");
                Iterator<String> keys2 = jSONObject3.keys();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    JSONObject jSONObject4 = jSONObject3.getJSONObject(next2);
                    nativeTypeDefinition.componentDefinitions.add(new NativeTypeDefinition.ComponentDefinition(next2, jSONObject4.getInt("publisherRequired"), jSONObject4.getInt("advertiserRequired")));
                }
                hashMap2.put(next, nativeTypeDefinition);
            }
        } else {
            hashMap = null;
        }
        return hashMap;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0285 -> B:20:0x0241). Please submit an issue!!! */
    private static HandshakeInfo parseHandshake(String str) {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Parsing handshake:\n" + str);
        }
        HandshakeInfo handshakeInfo = null;
        if (str != null) {
            JSONObject jSONObject = new JSONObject(str);
            handshakeInfo = new HandshakeInfo();
            handshakeInfo.version = jSONObject.getString("ver");
            try {
                int parseInt = Integer.parseInt(handshakeInfo.version);
                if (parseInt > 1) {
                    MMLog.m4068e(TAG, "Handshake response did not contain a compatible version. Received version, " + parseInt + " expected max version of 1");
                    return null;
                }
                handshakeInfo.config = jSONObject.getString("config");
                JSONObject jSONObject2 = jSONObject.getJSONObject("playlistServer");
                handshakeInfo.activePlaylistServerName = jSONObject2.getString("name");
                handshakeInfo.activePlaylistServerBaseUrl = jSONObject2.getString("baseUrl");
                handshakeInfo.handshakeBaseUrl = jSONObject.getString("handshakeBaseUrl");
                handshakeInfo.reportingBaseUrl = jSONObject.getString("rptBaseUrl");
                handshakeInfo.handshakeTtl = jSONObject.getInt("ttl");
                handshakeInfo.sdkEnabled = jSONObject.optBoolean("sdkEnabled", true);
                handshakeInfo.moatEnabled = jSONObject.optBoolean("moatEnabled", true);
                handshakeInfo.reportingBatchSize = jSONObject.getInt("rptBatchSize");
                handshakeInfo.reportingBatchFrequency = jSONObject.getInt("rptFreq");
                handshakeInfo.inlineTimeout = jSONObject.getInt("inlineTmax");
                handshakeInfo.interstitialTimeout = jSONObject.getInt("instlTmax");
                handshakeInfo.nativeTimeout = jSONObject.getInt("nativeTmax");
                handshakeInfo.clientMediationTimeout = jSONObject.getInt("clientAdTmax");
                handshakeInfo.serverToServerTimeout = jSONObject.getInt("serverAdTmax");
                handshakeInfo.exchangeTimeout = jSONObject.getInt("exTmax");
                handshakeInfo.minInlineRefreshRate = jSONObject.getInt("minInlineRefresh");
                handshakeInfo.interstitialExpirationDuration = jSONObject.getInt("instlExpDur");
                handshakeInfo.nativeExpirationDuration = jSONObject.getInt("nativeExpDur");
                handshakeInfo.vastVideoSkipOffsetMax = jSONObject.getInt("vastSkipOffsetMax");
                handshakeInfo.vastVideoSkipOffsetMin = jSONObject.getInt("vastSkipOffsetMin");
                handshakeInfo.nativeTypeDefinitions = loadNativeAdConfig(jSONObject);
                JSONObject optJSONObject = jSONObject.optJSONObject("vpaid");
                handshakeInfo.vpaidStartAdTimeout = JSONUtils.optInt(optJSONObject, "startAdTimeout", 5000);
                handshakeInfo.vpaidSkipAdTimeout = JSONUtils.optInt(optJSONObject, "skipAdTimeout", 500);
                handshakeInfo.vpaidAdUnitTimeout = JSONUtils.optInt(optJSONObject, "adUnitTimeout", 5000);
                handshakeInfo.vpaidHtmlEndCardTimeout = JSONUtils.optInt(optJSONObject, "htmlEndCardTimeout", 5000);
                handshakeInfo.vpaidMaxBackButtonDelay = JSONUtils.optInt(optJSONObject, "maxBackButtonDelay", CredentialsApi.CREDENTIAL_PICKER_REQUEST_CODE);
                handshakeInfo.minImpressionDuration = jSONObject.optInt("minImpressionDuration", 0);
                handshakeInfo.minImpressionViewabilityPercent = jSONObject.optInt("minImpressionViewabilityPercent", 0);
                handshakeInfo.smartYieldTimeout = jSONObject.optInt("syTmax", 10000);
                handshakeInfo.superAuctionCacheTimeout = jSONObject.optInt("saCacheTimeout", 600000);
                JSONArray optJSONArray = jSONObject.optJSONArray("exists");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                        if (optJSONObject2 != null) {
                            try {
                                handshakeInfo.existingPackages.put(optJSONObject2.getString("id"), optJSONObject2.getString("pkg"));
                            } catch (JSONException e) {
                            }
                        }
                    }
                }
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "Handshake successfully parsed");
                }
            } catch (NumberFormatException e2) {
                MMLog.m4068e(TAG, "Handshake version is not a valid integer, " + handshakeInfo.version);
                handshakeInfo = null;
            }
        }
        return handshakeInfo;
    }

    public static void request(boolean z) {
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Requesting handshake, async mode <" + z + ">");
        }
        if (z) {
            TaskFactory.createHandshakeRequestTask().execute();
        } else {
            requestInternal();
        }
    }

    private static void requestInternal() {
        HttpUtils.Response contentFromPostRequest;
        String str;
        String str2;
        int i;
        HandshakeInfo parseHandshake;
        if (!requestInProgress.compareAndSet(false, true)) {
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            MMLog.m4070d(TAG, "Handshake request already in progress");
            return;
        }
        int i2 = 60000;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ver", 1);
            jSONObject.put("sdkVer", MMSDK.VERSION);
            jSONObject.put("os", Constants.ANDROID_PLATFORM);
            jSONObject.put("osv", Build.VERSION.RELEASE);
            jSONObject.put("appId", EnvironmentUtils.getApplicationContext().getPackageName());
            HandshakeInfo handshakeInfo = currentHandshakeInfo;
            String str3 = "https://ads.nexage.com";
            if (handshakeInfo != null) {
                str3 = "https://ads.nexage.com";
                if (handshakeAttempts < 10) {
                    str3 = handshakeInfo.handshakeBaseUrl;
                }
            }
            String concat = str3.concat(HANDSHAKE_PATH);
            handshakeAttempts++;
            String jSONObject2 = jSONObject.toString();
            if (MMLog.isDebugEnabled()) {
                String str4 = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Executing handshake request.\n\tattempt: ");
                sb.append(handshakeAttempts);
                sb.append("\n\turl: ");
                sb.append(concat);
                sb.append("\n\tpost data: ");
                sb.append(jSONObject2);
                MMLog.m4070d(str4, sb.toString());
            }
            contentFromPostRequest = HttpUtils.getContentFromPostRequest(concat, jSONObject2, "application/json", 15000);
        } catch (JSONException e) {
            MMLog.m4067e(TAG, "Cannot build the handshake request data", e);
        }
        if (contentFromPostRequest.code == 200) {
            i2 = 60000;
            String str5 = contentFromPostRequest.content;
            if (str5 != null) {
                try {
                    try {
                        try {
                            parseHandshake = parseHandshake(str5);
                        } catch (Exception e2) {
                            e = e2;
                            str = TAG;
                            str2 = "Exception occurred when trying to load handshake.";
                            i = 60000;
                            MMLog.m4067e(str, str2, e);
                            i2 = i;
                            requestInProgress.set(false);
                            TaskFactory.createHandshakeRequestTask().execute(i2);
                        }
                    } catch (FileNotFoundException e3) {
                        e = e3;
                        str = TAG;
                        str2 = "Unable to open a file to store the handshake response.";
                        i = 60000;
                        MMLog.m4067e(str, str2, e);
                        i2 = i;
                        requestInProgress.set(false);
                        TaskFactory.createHandshakeRequestTask().execute(i2);
                    }
                } catch (JSONException e4) {
                    e = e4;
                    str = TAG;
                    str2 = "An error occurred parsing the handshake response.  Reverting to last known good copy.";
                    i = 60000;
                    MMLog.m4067e(str, str2, e);
                    i2 = i;
                    requestInProgress.set(false);
                    TaskFactory.createHandshakeRequestTask().execute(i2);
                }
                if (parseHandshake == null) {
                    throw new Exception("Unable to create handshake info object");
                }
                currentHandshakeInfo = parseHandshake;
                FileOutputStream fileOutputStream = new FileOutputStream(new File(EnvironmentUtils.getMillennialDir(), HANDSHAKE_JSON));
                try {
                    try {
                        IOUtils.write(fileOutputStream, contentFromPostRequest.content);
                    } catch (IOException e5) {
                        MMLog.m4067e(TAG, "Error storing handshake response", e5);
                    }
                    IOUtils.closeStream(fileOutputStream);
                    i2 = getHandshakeTtl();
                    handshakeAttempts = 0;
                    requestInProgress.set(false);
                    TaskFactory.createHandshakeRequestTask().execute(i2);
                } catch (Throwable th) {
                    IOUtils.closeStream(fileOutputStream);
                    throw th;
                }
            }
        }
        String str6 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Handshake request failed with HTTP response code: ");
        sb2.append(contentFromPostRequest.code);
        MMLog.m4068e(str6, sb2.toString());
        i2 = 60000;
        requestInProgress.set(false);
        TaskFactory.createHandshakeRequestTask().execute(i2);
    }
}
