package com.amazon.device.ads;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.preference.PreferenceManager;
import com.amazon.device.ads.AdError;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.DTBAdRequest;
import com.amazon.device.ads.DtbCommonUtils;
import com.amazon.device.ads.DtbMetrics;
import com.tenor.android.core.constant.ScreenDensity;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.json.JSONArray;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdRequest.class */
public class DTBAdRequest implements DTBAdLoader {
    private static final int DEFAULT_RERESH_DURATION = 60;
    private static final String LOG_TAG = "DTBAdRequest";
    private static final int MIN_REFRESH_DURATION = 20;
    private static final String[] MRAID_VALID_VERSIONS = {"1.0", ScreenDensity.SD_200, ScreenDensity.SD_300};
    private static final long WEEK = 604800000;
    public static JSONArray mRaidArray;
    private static JSONArray mRaidCustomArray;
    private static boolean mRaidDefined = false;
    private DTBAdResponse adResponse;
    private DTBAdCallback callback;
    private Context context;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private final List<DTBAdSize> adSizes = new ArrayList();
    private final Map<String, String> customTargets = new HashMap();
    private final Map<String, String> sizeSlotUUIDMap = new HashMap();
    private volatile AdError adError = null;
    private boolean requestHasBeenUsed = false;
    private boolean submitMetrics = true;
    private boolean isAutoRefresh = false;
    private int refreshDuration = 0;
    private final Runnable mRefreshRunnable = new Runnable() { // from class: e.c.b.a.b0
        @Override // java.lang.Runnable
        public final void run() {
            DTBAdRequest.this.m42589b();
        }
    };
    private String slotGroup = null;

    /* renamed from: com.amazon.device.ads.DTBAdRequest$1 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdRequest$1.class */
    public static /* synthetic */ class C04451 {
        public static final /* synthetic */ int[] $SwitchMap$com$amazon$device$ads$MRAIDPolicy;

        static {
            MRAIDPolicy.values();
            int[] iArr = new int[5];
            $SwitchMap$com$amazon$device$ads$MRAIDPolicy = iArr;
            try {
                MRAIDPolicy mRAIDPolicy = MRAIDPolicy.AUTO_DETECT;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$amazon$device$ads$MRAIDPolicy;
                MRAIDPolicy mRAIDPolicy2 = MRAIDPolicy.DFP;
                iArr2[2] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$amazon$device$ads$MRAIDPolicy;
                MRAIDPolicy mRAIDPolicy3 = MRAIDPolicy.MOPUB;
                iArr3[1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$amazon$device$ads$MRAIDPolicy;
                MRAIDPolicy mRAIDPolicy4 = MRAIDPolicy.CUSTOM;
                iArr4[3] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$amazon$device$ads$MRAIDPolicy;
                MRAIDPolicy mRAIDPolicy5 = MRAIDPolicy.NONE;
                iArr5[4] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdRequest$WrapperReport.class */
    public class WrapperReport {
        public String expectedPackage;
        public String wrapperPackage;

        public WrapperReport() {
            DTBAdRequest.this = r4;
        }
    }

    public DTBAdRequest() {
        try {
            if (!AdRegistration.isInitialized()) {
                DtbLog.warn(DtbConstants.MDTB_NOT_INITIALIZED);
                return;
            }
            if (this.context == null) {
                this.context = AdRegistration.getContext();
            }
            if (mRaidDefined) {
                return;
            }
            defineMraid();
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBAdRequest class");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to initialize DTBAdRequest class", e);
        }
    }

    public DTBAdRequest(Context context) {
        if (context != null) {
            try {
                if (!AdRegistration.isInitialized()) {
                    DtbLog.warn(DtbConstants.MDTB_NOT_INITIALIZED);
                    return;
                }
                if (AdRegistration.getContext() == null) {
                    AdRegistration.setContext(context);
                }
                this.context = context;
                if (mRaidDefined) {
                    return;
                }
                defineMraid();
                return;
            } catch (RuntimeException e) {
                DtbLog.error(LOG_TAG, "Fail to initialize DTBAdRequest class with context argument");
                C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to initialize DTBAdRequest class with context argument", e);
                return;
            }
        }
        throw new IllegalArgumentException("unable to initialize ad request with null app context");
    }

    private void addGDPRParameters(Map<String, Object> map) {
        Context context = this.context;
        if (context != null) {
            addGDPRParametersFromPreferences(map, PreferenceManager.getDefaultSharedPreferences(context));
        }
    }

    private void addMraidParameters(Map<String, Object> map) {
        JSONArray jSONArray = mRaidArray;
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        map.put("mraid", mRaidArray);
    }

    private WrapperReport detectWrapper(Object obj) {
        WrapperReport wrapperReport;
        Context applicationContext = AdRegistration.getContext().getApplicationContext();
        try {
            String name = obj.getClass().getPackage().getName();
            String str = applicationContext.getApplicationInfo().packageName;
            StringTokenizer stringTokenizer = new StringTokenizer(name, StringConstant.DOT);
            StringTokenizer stringTokenizer2 = new StringTokenizer(str, StringConstant.DOT);
            if (stringTokenizer.countTokens() < 2 || stringTokenizer2.countTokens() < 2) {
                wrapperReport = new WrapperReport();
                wrapperReport.expectedPackage = str;
                wrapperReport.wrapperPackage = name;
            } else {
                int i = 0;
                while (true) {
                    wrapperReport = null;
                    if (i >= 2) {
                        break;
                    } else if (!stringTokenizer.nextToken().equals(stringTokenizer2.nextToken())) {
                        wrapperReport = new WrapperReport();
                        wrapperReport.expectedPackage = name;
                        wrapperReport.wrapperPackage = str;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        } catch (Exception e) {
            wrapperReport = null;
        }
        return wrapperReport;
    }

    private void internalLoadAd() {
        DtbLog.debug("Loading DTB ad.");
        DtbThreadService.getInstance().execute(new Runnable() { // from class: e.c.b.a.a0
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdRequest.this.m42590a();
            }
        });
        DtbLog.debug("Dispatched the loadAd task on a background thread.");
    }

    private void loadAd(DTBAdCallback dTBAdCallback, int i, int i2) throws DTBLoadException {
        loadAd(dTBAdCallback, i, i2, AdType.DISPLAY);
    }

    private void loadAd(DTBAdCallback dTBAdCallback, int i, int i2, AdType adType) throws DTBLoadException {
        AdRegistration.SlotGroup slotGroup = AdRegistration.getSlotGroup(this.slotGroup);
        if (slotGroup != null) {
            DTBAdSize sizeByWidthHeightType = slotGroup.getSizeByWidthHeightType(i, i2, adType);
            if (sizeByWidthHeightType == null) {
                throw new DTBLoadException("Slot group does not contain required size of a given type");
            }
            setSizes(sizeByWidthHeightType);
            loadAd(dTBAdCallback);
            return;
        }
        throw new DTBLoadException("Slot group is not found");
    }

    private void loadAd(DTBAdCallback dTBAdCallback, String str) throws DTBLoadException {
        AdRegistration.SlotGroup slotGroup = AdRegistration.getSlotGroup(this.slotGroup);
        if (slotGroup != null) {
            DTBAdSize sizeBySlotUUID = slotGroup.getSizeBySlotUUID(str);
            if (sizeBySlotUUID == null) {
                throw new DTBLoadException("Slot group does not contain requested slotUUID");
            }
            setSizes(sizeBySlotUUID);
            loadAd(dTBAdCallback);
            return;
        }
        throw new DTBLoadException("Slot group is not found");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadAdRequest() {
        /*
            Method dump skipped, instructions count: 1138
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBAdRequest.loadAdRequest():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
        if (com.amazon.device.ads.DtbCommonUtils.isActivityDestroyed(r0) != false) goto L12;
     */
    /* renamed from: refreshAd */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m42589b() {
        /*
            r2 = this;
            r0 = r2
            boolean r0 = r0.isAutoRefresh
            if (r0 == 0) goto L58
            r0 = r2
            int r0 = r0.refreshDuration
            if (r0 <= 0) goto L58
            r0 = 0
            r3 = r0
            r0 = r2
            android.content.Context r0 = r0.context
            r4 = r0
            r0 = r4
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L3c
            r0 = r4
            android.app.Activity r0 = (android.app.Activity) r0
            r4 = r0
            r0 = r4
            boolean r0 = r0.isFinishing()
            if (r0 != 0) goto L31
            r0 = r4
            r3 = r0
            r0 = r4
            boolean r0 = com.amazon.device.ads.DtbCommonUtils.isActivityDestroyed(r0)
            if (r0 == 0) goto L3c
        L31:
            java.lang.String r0 = "Stopping DTB auto refresh..."
            com.amazon.device.ads.DtbLog.info(r0)
            r0 = r2
            r0.stop()
            return
        L3c:
            r0 = r3
            if (r0 == 0) goto L54
            r0 = r3
            boolean r0 = r0.hasWindowFocus()
            if (r0 != 0) goto L54
            java.lang.String r0 = "Skipping DTB auto refresh...activity not in focus"
            com.amazon.device.ads.DtbLog.debug(r0)
            r0 = r2
            r0.scheduleAdRefreshIfEnabled()
            goto L58
        L54:
            r0 = r2
            r0.internalLoadAd()
        L58:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBAdRequest.m42589b():void");
    }

    public static void resetMraid() {
        mRaidArray = null;
        mRaidDefined = false;
    }

    private void scheduleAdRefreshIfEnabled() {
        if (!this.isAutoRefresh || this.refreshDuration <= 0) {
            return;
        }
        stopAutoRefresh();
        Handler handler = this.mHandler;
        if (handler == null) {
            return;
        }
        handler.postDelayed(this.mRefreshRunnable, this.refreshDuration * 1000);
    }

    public static void setMRAIDSupportedVersions(String[] strArr) {
        if (strArr != null && strArr.length > 0) {
            mRaidCustomArray = new JSONArray();
            List asList = Arrays.asList(MRAID_VALID_VERSIONS);
            for (String str : strArr) {
                if (str == null) {
                    DtbLog.error(LOG_TAG, "null custom version supplied");
                } else {
                    if (!asList.contains(str)) {
                        DtbLog.warn(LOG_TAG, "custom version \"" + str + "\" is not valid");
                    }
                    mRaidCustomArray.put(str);
                }
            }
        }
        resetMraid();
    }

    private void setRefreshDuration(int i) {
        if (i >= 20) {
            this.refreshDuration = i;
            return;
        }
        DtbLog.warn(LOG_TAG, "Defaulting auto refresh duration to 60 seconds.");
        this.refreshDuration = 60;
    }

    private void stopAutoRefresh() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    private void triggerCallBack(final DtbMetrics dtbMetrics) {
        scheduleAdRefreshIfEnabled();
        DtbLog.info(LOG_TAG, "Forwarding the error handling to view on main thread.");
        DtbThreadService.executeOnMainThread(new Runnable() { // from class: e.c.b.a.z
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdRequest.this.m42588c(dtbMetrics);
            }
        });
        if (this.submitMetrics) {
            DtbMetrics.Submitter.INSTANCE.submitMetrics(dtbMetrics);
        }
    }

    private void useDFP(DtbCommonUtils.APIVersion aPIVersion) {
        if (aPIVersion.majorVersion > 0) {
            JSONArray jSONArray = new JSONArray();
            mRaidArray = jSONArray;
            jSONArray.put("1.0");
            int i = aPIVersion.majorVersion;
            if ((i == 7 && aPIVersion.minorVersion >= 8) || i > 7) {
                mRaidArray.put(ScreenDensity.SD_200);
            }
            if (aPIVersion.majorVersion < 15) {
                return;
            }
            mRaidArray.put(ScreenDensity.SD_300);
        }
    }

    private void useMoPUB(DtbCommonUtils.APIVersion aPIVersion) {
        if (aPIVersion.majorVersion > 0) {
            JSONArray jSONArray = new JSONArray();
            mRaidArray = jSONArray;
            jSONArray.put("1.0");
            int i = aPIVersion.majorVersion;
            if ((i < 3 || aPIVersion.minorVersion < 3) && i <= 3) {
                return;
            }
            mRaidArray.put(ScreenDensity.SD_200);
        }
    }

    private boolean wrapperDetectionNeeded() {
        DtbSharedPreferences dtbSharedPreferences = DtbSharedPreferences.getInstance();
        Long wrapperDetectionLastPing = dtbSharedPreferences.getWrapperDetectionLastPing();
        long m8638c = C22128a.m8638c();
        boolean z = true;
        if (wrapperDetectionLastPing != null) {
            z = m8638c - wrapperDetectionLastPing.longValue() > WEEK;
        }
        if (z) {
            dtbSharedPreferences.saveWrapperDetectionLastPing(m8638c);
        }
        return z;
    }

    /* renamed from: a */
    public /* synthetic */ void m42590a() {
        DtbLog.info("Fetching DTB ad.");
        try {
            loadAdRequest();
            DtbLog.debug("DTB Ad call is complete");
        } catch (Exception e) {
            DtbLog.error(LOG_TAG, "Unknown exception in DTB ad call process.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ab, code lost:
        if (r9 != null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addGDPRParametersFromPreferences(java.util.Map<java.lang.String, java.lang.Object> r5, android.content.SharedPreferences r6) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBAdRequest.addGDPRParametersFromPreferences(java.util.Map, android.content.SharedPreferences):void");
    }

    /* renamed from: c */
    public /* synthetic */ void m42588c(DtbMetrics dtbMetrics) {
        WrapperReport detectWrapper;
        if (this.callback == null) {
            DtbLog.error("No callback -DTBAdCallback- provided to loadAd() to handle success or failure.");
        } else if (this.adError == null || this.adError.getCode() != AdError.ErrorCode.NO_ERROR) {
            StringBuilder m8728C = C22128a.m8728C("Invoking onFailure() callback with errorCode: ");
            m8728C.append(this.adError.getCode());
            m8728C.append("[");
            m8728C.append(this.adError.getMessage());
            m8728C.append("]");
            DtbLog.debug(m8728C.toString());
            this.callback.onFailure(this.adError);
        } else {
            StringBuilder m8728C2 = C22128a.m8728C("Invoking onSuccess() callback for pricepoints: [");
            m8728C2.append(this.adResponse.getDefaultPricePoints());
            m8728C2.append("]");
            DtbLog.debug(m8728C2.toString());
            this.callback.onSuccess(this.adResponse);
            DtbLog.debug("Performing SDK wrapping detection. Will submit a report if needed.");
            if (!wrapperDetectionNeeded() || (detectWrapper = detectWrapper(this.callback)) == null) {
                return;
            }
            if (Math.random() > DTBMetricsConfiguration.getClientConfigVal(DTBMetricsConfiguration.WRAPPING_PIXEL_SAMPLE_RATE_KEY_NAME, DTBMetricsConfiguration.WRAPPING_PIXEL_DEFAULT_VALUE.intValue(), DTBMetricsConfiguration.SAMPLE_RATES_KEY_NAME).intValue() / 100.0f) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("expected_package", detectWrapper.expectedPackage);
            hashMap.put("wrapper_package", detectWrapper.wrapperPackage);
            DTBMetricsProcessor.getInstance().submitErrorReport("alert_sdk_wrapping_v2", hashMap, DTBMetricReport.addBid(null, DtbCommonUtils.getHostNameFromUrl(dtbMetrics.getInstPxlUrl())));
        }
    }

    public void defineMraid() {
        String[] dfpCandidateList;
        String stringFieldValue = DtbCommonUtils.getStringFieldValue(getFullyQuaifiedMoPUBClassName(), "SDK_VERSION");
        if (stringFieldValue != null) {
            DtbLog.debug("MOPUB VERSION:" + stringFieldValue);
        } else {
            DtbLog.debug("MOPUB VERSION NOT FOUND");
        }
        DtbCommonUtils.APIVersion aPIVersion = DtbCommonUtils.getAPIVersion(stringFieldValue);
        Integer num = null;
        DtbCommonUtils.APIVersion aPIVersion2 = new DtbCommonUtils.APIVersion();
        for (String str : dfpCandidateList()) {
            if (num != null) {
                break;
            }
            num = DtbCommonUtils.getIntegerFieldValue(str, "GOOGLE_PLAY_SERVICES_VERSION_CODE");
        }
        Integer num2 = num;
        if (num == null) {
            char c = 'a';
            while (true) {
                char c2 = c;
                num2 = num;
                if (c2 > 'z') {
                    break;
                }
                num = DtbCommonUtils.getIntegerFieldValue("com.google.android.gms.common.zz" + c2, "GOOGLE_PLAY_SERVICES_VERSION_CODE");
                if (num != null) {
                    num2 = num;
                    break;
                }
                c = (char) (c2 + 1);
            }
        }
        if (num2 != null) {
            int intValue = num2.intValue() / 1000;
            aPIVersion2.minorVersion = (intValue % 1000) / 100;
            aPIVersion2.majorVersion = intValue / 1000;
            StringBuilder m8728C = C22128a.m8728C("Google DFP major version:");
            m8728C.append(aPIVersion2.majorVersion);
            m8728C.append("minor version:");
            m8728C.append(aPIVersion2.minorVersion);
            DtbLog.debug(m8728C.toString());
        } else {
            DtbLog.debug("Not able to identify Google DFP version");
        }
        mRaidDefined = true;
        int ordinal = AdRegistration.getMRAIDPolicy().ordinal();
        if (ordinal == 0) {
            if (isServerless()) {
                return;
            }
            if (stringFieldValue != null) {
                useMoPUB(aPIVersion);
            } else if (num2 != null) {
                useDFP(aPIVersion2);
            }
        } else if (ordinal == 1) {
            if (stringFieldValue == null) {
                return;
            }
            useMoPUB(aPIVersion);
        } else if (ordinal != 2) {
            if (ordinal != 3) {
                return;
            }
            mRaidArray = mRaidCustomArray;
        } else if (num2 != null) {
            useDFP(aPIVersion2);
        }
    }

    public String[] dfpCandidateList() {
        return new String[]{"com.google.android.gms.common.GoogleApiAvailability", "com.google.android.gms.common.GoogleApiAvailabilityLight", "com.google.android.gms.common.GooglePlayServicesUtil", "com.google.android.gms.common.GooglePlayServicesUtilLight"};
    }

    public String getFullyQuaifiedMoPUBClassName() {
        return "com.mopub.common.MoPub";
    }

    public int getRefreshDuration() {
        return this.refreshDuration;
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public String getSlotGroupName() {
        return this.slotGroup;
    }

    public boolean isServerless() {
        for (String str : AdRegistration.getServerlessMarkers()) {
            try {
                Class.forName(str);
                JSONArray jSONArray = new JSONArray();
                mRaidArray = jSONArray;
                jSONArray.put("1.0");
                mRaidArray.put(ScreenDensity.SD_200);
                mRaidArray.put(ScreenDensity.SD_300);
                return true;
            } catch (Exception e) {
            }
        }
        return false;
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void loadAd(DTBAdCallback dTBAdCallback) {
        EnumC22019c enumC22019c = EnumC22019c.EXCEPTION;
        EnumC22018b enumC22018b = EnumC22018b.FATAL;
        try {
            this.callback = dTBAdCallback;
            if (this.adSizes.size() <= 0) {
                throw new IllegalArgumentException("Please set atleast one ad size in the request.");
            }
            if (this.requestHasBeenUsed) {
                DtbLog.error(LOG_TAG, "This ad request object is already used for loading an ad. Please create a new instance to load the Ad.");
                return;
            }
            this.requestHasBeenUsed = true;
            DtbDeviceRegistration.verifyRegistration();
            for (DTBAdSize dTBAdSize : this.adSizes) {
                Map<String, String> map = this.sizeSlotUUIDMap;
                map.put(dTBAdSize.getWidth() + "x" + dTBAdSize.getHeight(), dTBAdSize.getSlotUUID());
            }
            try {
                if (this.mHandlerThread == null && this.isAutoRefresh && this.refreshDuration > 0) {
                    HandlerThread handlerThread = new HandlerThread("DtbHandlerThread");
                    this.mHandlerThread = handlerThread;
                    handlerThread.start();
                    this.mHandler = new Handler(this.mHandlerThread.getLooper());
                }
                internalLoadAd();
            } catch (Exception e) {
                DtbLog.error(LOG_TAG, "Unknown exception occured in DTB ad call.");
                C22016a.m8829a(enumC22018b, enumC22019c, "Unknown exception occured in DTB ad call.", e);
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute loadAd method");
            C22016a.m8829a(enumC22018b, enumC22019c, "Fail to execute loadAd method", e2);
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void loadSmartBanner(DTBAdCallback dTBAdCallback) throws DTBLoadException {
        try {
            int i = 320;
            int i2 = 50;
            if (DtbDeviceDataRetriever.isTablet()) {
                i = 728;
                i2 = 90;
            }
            loadAd(dTBAdCallback, i, i2);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute loadSmartBanner method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute loadSmartBanner method", e);
        }
    }

    public void onRequestFormed(HashMap<String, Object> hashMap) {
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void pauseAutoRefresh() {
        this.isAutoRefresh = false;
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void putCustomTarget(String str, String str2) {
        try {
            this.customTargets.put(str, str2);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute putCustomTarget method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute putCustomTarget method", e);
        }
    }

    public void recycle() {
        this.requestHasBeenUsed = false;
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void resumeAutoRefresh() {
        try {
            setAutoRefresh(this.refreshDuration);
            m42589b();
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute resumeAutoRefresh method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute resumeAutoRefresh method", e);
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void setAutoRefresh() {
        try {
            this.isAutoRefresh = true;
            setRefreshDuration(60);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute setAutoRefresh method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute setAutoRefresh method", e);
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void setAutoRefresh(int i) {
        try {
            this.isAutoRefresh = true;
            setRefreshDuration(i);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute setAutoRefresh method with seconds argument");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute setAutoRefresh method with seconds argument", e);
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void setSizes(DTBAdSize... dTBAdSizeArr) throws IllegalArgumentException {
        this.adSizes.clear();
        String str = LOG_TAG;
        StringBuilder m8728C = C22128a.m8728C("Setting ");
        m8728C.append(dTBAdSizeArr.length);
        m8728C.append(" AdSize(s) to the ad request.");
        DtbLog.info(str, m8728C.toString());
        for (DTBAdSize dTBAdSize : dTBAdSizeArr) {
            if (dTBAdSize == null) {
                throw new IllegalArgumentException("DTBAdSize cannot be null.");
            }
            this.adSizes.add(dTBAdSize);
        }
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void setSlotGroup(String str) {
        this.slotGroup = str;
    }

    @Override // com.amazon.device.ads.DTBAdLoader
    public void stop() {
        try {
            stopAutoRefresh();
            HandlerThread handlerThread = this.mHandlerThread;
            if (handlerThread == null) {
                return;
            }
            handlerThread.quit();
            DtbLog.debug("Stopping DTB auto refresh");
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute stop method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute stop method", e);
        }
    }
}
