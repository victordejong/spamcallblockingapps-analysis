package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.DefaultAudience;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/NativeProtocol.class */
public final class NativeProtocol {
    public static final String ACTION_APPINVITE_DIALOG = "com.facebook.platform.action.request.APPINVITES_DIALOG";
    public static final String ACTION_CAMERA_EFFECT = "com.facebook.platform.action.request.CAMERA_EFFECT";
    public static final String ACTION_FEED_DIALOG = "com.facebook.platform.action.request.FEED_DIALOG";
    public static final String ACTION_LIKE_DIALOG = "com.facebook.platform.action.request.LIKE_DIALOG";
    public static final String ACTION_MESSAGE_DIALOG = "com.facebook.platform.action.request.MESSAGE_DIALOG";
    public static final String ACTION_OGACTIONPUBLISH_DIALOG = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
    public static final String ACTION_OGMESSAGEPUBLISH_DIALOG = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
    public static final String ACTION_SHARE_STORY = "com.facebook.platform.action.request.SHARE_STORY";
    public static final String AUDIENCE_EVERYONE = "everyone";
    public static final String AUDIENCE_FRIENDS = "friends";
    public static final String AUDIENCE_ME = "only_me";
    public static final String BRIDGE_ARG_ACTION_ID_STRING = "action_id";
    public static final String BRIDGE_ARG_APP_NAME_STRING = "app_name";
    public static final String BRIDGE_ARG_ERROR_BUNDLE = "error";
    public static final String BRIDGE_ARG_ERROR_CODE = "error_code";
    public static final String BRIDGE_ARG_ERROR_DESCRIPTION = "error_description";
    public static final String BRIDGE_ARG_ERROR_JSON = "error_json";
    public static final String BRIDGE_ARG_ERROR_SUBCODE = "error_subcode";
    public static final String BRIDGE_ARG_ERROR_TYPE = "error_type";
    private static final String CONTENT_SCHEME = "content://";
    public static final String ERROR_APPLICATION_ERROR = "ApplicationError";
    public static final String ERROR_NETWORK_ERROR = "NetworkError";
    public static final String ERROR_PERMISSION_DENIED = "PermissionDenied";
    public static final String ERROR_PROTOCOL_ERROR = "ProtocolError";
    public static final String ERROR_SERVICE_DISABLED = "ServiceDisabled";
    public static final String ERROR_UNKNOWN_ERROR = "UnknownError";
    public static final String ERROR_USER_CANCELED = "UserCanceled";
    public static final String EXTRA_ACCESS_TOKEN = "com.facebook.platform.extra.ACCESS_TOKEN";
    public static final String EXTRA_APPLICATION_ID = "com.facebook.platform.extra.APPLICATION_ID";
    public static final String EXTRA_APPLICATION_NAME = "com.facebook.platform.extra.APPLICATION_NAME";
    public static final String EXTRA_DATA_ACCESS_EXPIRATION_TIME = "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME";
    public static final String EXTRA_DIALOG_COMPLETE_KEY = "com.facebook.platform.extra.DID_COMPLETE";
    public static final String EXTRA_DIALOG_COMPLETION_GESTURE_KEY = "com.facebook.platform.extra.COMPLETION_GESTURE";
    public static final String EXTRA_EXPIRES_SECONDS_SINCE_EPOCH = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH";
    public static final String EXTRA_GET_INSTALL_DATA_PACKAGE = "com.facebook.platform.extra.INSTALLDATA_PACKAGE";
    public static final String EXTRA_GRAPH_API_VERSION = "com.facebook.platform.extra.GRAPH_API_VERSION";
    public static final String EXTRA_LOGGER_REF = "com.facebook.platform.extra.LOGGER_REF";
    public static final String EXTRA_PERMISSIONS = "com.facebook.platform.extra.PERMISSIONS";
    public static final String EXTRA_PROTOCOL_ACTION = "com.facebook.platform.protocol.PROTOCOL_ACTION";
    public static final String EXTRA_PROTOCOL_BRIDGE_ARGS = "com.facebook.platform.protocol.BRIDGE_ARGS";
    public static final String EXTRA_PROTOCOL_CALL_ID = "com.facebook.platform.protocol.CALL_ID";
    public static final String EXTRA_PROTOCOL_METHOD_ARGS = "com.facebook.platform.protocol.METHOD_ARGS";
    public static final String EXTRA_PROTOCOL_METHOD_RESULTS = "com.facebook.platform.protocol.RESULT_ARGS";
    public static final String EXTRA_PROTOCOL_VERSION = "com.facebook.platform.protocol.PROTOCOL_VERSION";
    static final String EXTRA_PROTOCOL_VERSIONS = "com.facebook.platform.extra.PROTOCOL_VERSIONS";
    public static final String EXTRA_TOAST_DURATION_MS = "com.facebook.platform.extra.EXTRA_TOAST_DURATION_MS";
    public static final String EXTRA_USER_ID = "com.facebook.platform.extra.USER_ID";
    private static final String FACEBOOK_PROXY_AUTH_ACTIVITY = "com.facebook.katana.ProxyAuth";
    public static final String FACEBOOK_PROXY_AUTH_APP_ID_KEY = "client_id";
    public static final String FACEBOOK_PROXY_AUTH_E2E_KEY = "e2e";
    public static final String FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY = "scope";
    public static final String FACEBOOK_SDK_VERSION_KEY = "facebook_sdk_version";
    private static final String FACEBOOK_TOKEN_REFRESH_ACTIVITY = "com.facebook.katana.platform.TokenRefreshService";
    public static final String IMAGE_URL_KEY = "url";
    public static final String IMAGE_USER_GENERATED_KEY = "user_generated";
    static final String INTENT_ACTION_PLATFORM_ACTIVITY = "com.facebook.platform.PLATFORM_ACTIVITY";
    static final String INTENT_ACTION_PLATFORM_SERVICE = "com.facebook.platform.PLATFORM_SERVICE";
    public static final int MESSAGE_GET_ACCESS_TOKEN_REPLY = 65537;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REQUEST = 65536;
    public static final int MESSAGE_GET_AK_SEAMLESS_TOKEN_REPLY = 65545;
    public static final int MESSAGE_GET_AK_SEAMLESS_TOKEN_REQUEST = 65544;
    public static final int MESSAGE_GET_INSTALL_DATA_REPLY = 65541;
    public static final int MESSAGE_GET_INSTALL_DATA_REQUEST = 65540;
    public static final int MESSAGE_GET_LIKE_STATUS_REPLY = 65543;
    public static final int MESSAGE_GET_LIKE_STATUS_REQUEST = 65542;
    public static final int MESSAGE_GET_LOGIN_STATUS_REPLY = 65547;
    public static final int MESSAGE_GET_LOGIN_STATUS_REQUEST = 65546;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REPLY = 65539;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST = 65538;
    public static final int NO_PROTOCOL_AVAILABLE = -1;
    public static final String OPEN_GRAPH_CREATE_OBJECT_KEY = "fbsdk:create_object";
    private static final String PLATFORM_PROVIDER = ".provider.PlatformProvider";
    private static final String PLATFORM_PROVIDER_VERSIONS = ".provider.PlatformProvider/versions";
    private static final String PLATFORM_PROVIDER_VERSION_COLUMN = "version";
    public static final int PROTOCOL_VERSION_20170213 = 20170213;
    public static final int PROTOCOL_VERSION_20170411 = 20170411;
    public static final int PROTOCOL_VERSION_20171115 = 20171115;
    public static final String RESULT_ARGS_ACCESS_TOKEN = "access_token";
    public static final String RESULT_ARGS_DIALOG_COMPLETE_KEY = "didComplete";
    public static final String RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY = "completionGesture";
    public static final String RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH = "expires_seconds_since_epoch";
    public static final String RESULT_ARGS_GRAPH_DOMAIN = "graph_domain";
    public static final String RESULT_ARGS_PERMISSIONS = "permissions";
    public static final String RESULT_ARGS_SIGNED_REQUEST = "signed request";
    public static final String STATUS_ERROR_CODE = "com.facebook.platform.status.ERROR_CODE";
    public static final String STATUS_ERROR_DESCRIPTION = "com.facebook.platform.status.ERROR_DESCRIPTION";
    public static final String STATUS_ERROR_JSON = "com.facebook.platform.status.ERROR_JSON";
    public static final String STATUS_ERROR_SUBCODE = "com.facebook.platform.status.ERROR_SUBCODE";
    public static final String STATUS_ERROR_TYPE = "com.facebook.platform.status.ERROR_TYPE";
    private static final String TAG = "com.facebook.internal.NativeProtocol";
    public static final String WEB_DIALOG_ACTION = "action";
    public static final String WEB_DIALOG_IS_FALLBACK = "is_fallback";
    public static final String WEB_DIALOG_PARAMS = "params";
    public static final String WEB_DIALOG_URL = "url";
    private static final List<NativeAppInfo> facebookAppInfoList = buildFacebookAppList();
    private static final List<NativeAppInfo> effectCameraAppInfoList = buildEffectCameraAppInfoList();
    private static final Map<String, List<NativeAppInfo>> actionToAppInfoMap = buildActionToAppInfoMap();
    private static final AtomicBoolean protocolVersionsAsyncUpdating = new AtomicBoolean(false);
    public static final int PROTOCOL_VERSION_20170417 = 20170417;
    public static final int PROTOCOL_VERSION_20160327 = 20160327;
    public static final int PROTOCOL_VERSION_20141218 = 20141218;
    public static final int PROTOCOL_VERSION_20141107 = 20141107;
    public static final int PROTOCOL_VERSION_20141028 = 20141028;
    public static final int PROTOCOL_VERSION_20141001 = 20141001;
    public static final int PROTOCOL_VERSION_20140701 = 20140701;
    public static final int PROTOCOL_VERSION_20140324 = 20140324;
    public static final int PROTOCOL_VERSION_20140204 = 20140204;
    public static final int PROTOCOL_VERSION_20131107 = 20131107;
    public static final int PROTOCOL_VERSION_20130618 = 20130618;
    public static final int PROTOCOL_VERSION_20130502 = 20130502;
    public static final int PROTOCOL_VERSION_20121101 = 20121101;
    private static final List<Integer> KNOWN_PROTOCOL_VERSIONS = Arrays.asList(Integer.valueOf((int) PROTOCOL_VERSION_20170417), Integer.valueOf((int) PROTOCOL_VERSION_20160327), Integer.valueOf((int) PROTOCOL_VERSION_20141218), Integer.valueOf((int) PROTOCOL_VERSION_20141107), Integer.valueOf((int) PROTOCOL_VERSION_20141028), Integer.valueOf((int) PROTOCOL_VERSION_20141001), Integer.valueOf((int) PROTOCOL_VERSION_20140701), Integer.valueOf((int) PROTOCOL_VERSION_20140324), Integer.valueOf((int) PROTOCOL_VERSION_20140204), Integer.valueOf((int) PROTOCOL_VERSION_20131107), Integer.valueOf((int) PROTOCOL_VERSION_20130618), Integer.valueOf((int) PROTOCOL_VERSION_20130502), Integer.valueOf((int) PROTOCOL_VERSION_20121101));

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/NativeProtocol$EffectTestAppInfo.class */
    public static class EffectTestAppInfo extends NativeAppInfo {
        static final String EFFECT_TEST_APP_PACKAGE = "com.facebook.arstudio.player";

        private EffectTestAppInfo() {
            super();
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getLoginActivity() {
            return null;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getPackage() {
            return EFFECT_TEST_APP_PACKAGE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/NativeProtocol$FBLiteAppInfo.class */
    public static class FBLiteAppInfo extends NativeAppInfo {
        static final String FACEBOOK_LITE_ACTIVITY = "com.facebook.lite.platform.LoginGDPDialogActivity";
        static final String FBLITE_PACKAGE = "com.facebook.lite";

        private FBLiteAppInfo() {
            super();
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getLoginActivity() {
            return FACEBOOK_LITE_ACTIVITY;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getPackage() {
            return FBLITE_PACKAGE;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/NativeProtocol$KatanaAppInfo.class */
    public static class KatanaAppInfo extends NativeAppInfo {
        static final String KATANA_PACKAGE = "com.facebook.katana";

        private KatanaAppInfo() {
            super();
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getLoginActivity() {
            return NativeProtocol.FACEBOOK_PROXY_AUTH_ACTIVITY;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getPackage() {
            return KATANA_PACKAGE;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/NativeProtocol$MessengerAppInfo.class */
    public static class MessengerAppInfo extends NativeAppInfo {
        static final String MESSENGER_PACKAGE = "com.facebook.orca";

        private MessengerAppInfo() {
            super();
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getLoginActivity() {
            return null;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getPackage() {
            return "com.facebook.orca";
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/NativeProtocol$NativeAppInfo.class */
    public static abstract class NativeAppInfo {
        private TreeSet<Integer> availableVersions;

        private NativeAppInfo() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0013, code lost:
            if (r0.isEmpty() == false) goto L12;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void fetchAvailableVersions(boolean r4) {
            /*
                r3 = this;
                r0 = r3
                monitor-enter(r0)
                r0 = r4
                if (r0 != 0) goto L16
                r0 = r3
                java.util.TreeSet<java.lang.Integer> r0 = r0.availableVersions     // Catch: java.lang.Throwable -> L21
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L16
                r0 = r5
                boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L21
                if (r0 == 0) goto L1e
            L16:
                r0 = r3
                r1 = r3
                java.util.TreeSet r1 = com.facebook.internal.NativeProtocol.access$000(r1)     // Catch: java.lang.Throwable -> L21
                r0.availableVersions = r1     // Catch: java.lang.Throwable -> L21
            L1e:
                r0 = r3
                monitor-exit(r0)
                return
            L21:
                r5 = move-exception
                r0 = r3
                monitor-exit(r0)
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeProtocol.NativeAppInfo.fetchAvailableVersions(boolean):void");
        }

        public TreeSet<Integer> getAvailableVersions() {
            TreeSet<Integer> treeSet = this.availableVersions;
            if (treeSet == null || treeSet.isEmpty()) {
                fetchAvailableVersions(false);
            }
            return this.availableVersions;
        }

        protected abstract String getLoginActivity();

        protected abstract String getPackage();
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/NativeProtocol$ProtocolVersionQueryResult.class */
    public static class ProtocolVersionQueryResult {
        private NativeAppInfo nativeAppInfo;
        private int protocolVersion;

        private ProtocolVersionQueryResult() {
        }

        public static ProtocolVersionQueryResult create(NativeAppInfo nativeAppInfo, int i) {
            ProtocolVersionQueryResult protocolVersionQueryResult = new ProtocolVersionQueryResult();
            protocolVersionQueryResult.nativeAppInfo = nativeAppInfo;
            protocolVersionQueryResult.protocolVersion = i;
            return protocolVersionQueryResult;
        }

        public static ProtocolVersionQueryResult createEmpty() {
            ProtocolVersionQueryResult protocolVersionQueryResult = new ProtocolVersionQueryResult();
            protocolVersionQueryResult.protocolVersion = -1;
            return protocolVersionQueryResult;
        }

        public NativeAppInfo getAppInfo() {
            return this.nativeAppInfo;
        }

        public int getProtocolVersion() {
            return this.protocolVersion;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/internal/NativeProtocol$WakizashiAppInfo.class */
    public static class WakizashiAppInfo extends NativeAppInfo {
        static final String WAKIZASHI_PACKAGE = "com.facebook.wakizashi";

        private WakizashiAppInfo() {
            super();
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getLoginActivity() {
            return NativeProtocol.FACEBOOK_PROXY_AUTH_ACTIVITY;
        }

        @Override // com.facebook.internal.NativeProtocol.NativeAppInfo
        protected String getPackage() {
            return WAKIZASHI_PACKAGE;
        }
    }

    static /* synthetic */ TreeSet access$000(NativeAppInfo nativeAppInfo) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            return fetchAllAvailableProtocolVersionsForAppInfo(nativeAppInfo);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    static /* synthetic */ AtomicBoolean access$1100() {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            return protocolVersionsAsyncUpdating;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    static /* synthetic */ List access$900() {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            return facebookAppInfoList;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    private static Map<String, List<NativeAppInfo>> buildActionToAppInfoMap() {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new MessengerAppInfo());
            List<NativeAppInfo> list = facebookAppInfoList;
            hashMap.put(ACTION_OGACTIONPUBLISH_DIALOG, list);
            hashMap.put(ACTION_FEED_DIALOG, list);
            hashMap.put(ACTION_LIKE_DIALOG, list);
            hashMap.put(ACTION_APPINVITE_DIALOG, list);
            hashMap.put(ACTION_MESSAGE_DIALOG, arrayList);
            hashMap.put(ACTION_OGMESSAGEPUBLISH_DIALOG, arrayList);
            hashMap.put(ACTION_CAMERA_EFFECT, effectCameraAppInfoList);
            hashMap.put(ACTION_SHARE_STORY, list);
            return hashMap;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    private static List<NativeAppInfo> buildEffectCameraAppInfoList() {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList(buildFacebookAppList());
            arrayList.add(0, new EffectTestAppInfo());
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    private static List<NativeAppInfo> buildFacebookAppList() {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new KatanaAppInfo());
            arrayList.add(new WakizashiAppInfo());
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    private static Uri buildPlatformProviderVersionURI(NativeAppInfo nativeAppInfo) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            return Uri.parse(CONTENT_SCHEME + nativeAppInfo.getPackage() + PLATFORM_PROVIDER_VERSIONS);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
        r9 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
        if ((r11 % 2) != 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0077, code lost:
        r9 = java.lang.Math.min(r0, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0081, code lost:
        return r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int computeLatestAvailableVersionFromVersionSpec(java.util.TreeSet<java.lang.Integer> r3, int r4, int[] r5) {
        /*
            java.lang.Class<com.facebook.internal.NativeProtocol> r0 = com.facebook.internal.NativeProtocol.class
            boolean r0 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r0)
            if (r0 == 0) goto La
            r0 = 0
            return r0
        La:
            r0 = r5
            int r0 = r0.length     // Catch: java.lang.Throwable -> L82
            r1 = 1
            int r0 = r0 - r1
            r6 = r0
            r0 = r3
            java.util.Iterator r0 = r0.descendingIterator()     // Catch: java.lang.Throwable -> L82
            r3 = r0
            r0 = -1
            r7 = r0
            r0 = -1
            r8 = r0
        L1a:
            r0 = r7
            r9 = r0
            r0 = r3
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> L82
            if (r0 == 0) goto L7f
            r0 = r3
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L82
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L82
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L82
            r9 = r0
            r0 = r8
            r1 = r9
            int r0 = java.lang.Math.max(r0, r1)     // Catch: java.lang.Throwable -> L82
            r10 = r0
            r0 = r6
            r11 = r0
        L41:
            r0 = r11
            if (r0 < 0) goto L55
            r0 = r5
            r1 = r11
            r0 = r0[r1]
            r1 = r9
            if (r0 <= r1) goto L55
            int r11 = r11 + (-1)
            goto L41
        L55:
            r0 = r11
            if (r0 >= 0) goto L5c
            r0 = -1
            return r0
        L5c:
            r0 = r11
            r6 = r0
            r0 = r10
            r8 = r0
            r0 = r5
            r1 = r11
            r0 = r0[r1]
            r1 = r9
            if (r0 != r1) goto L1a
            r0 = r7
            r9 = r0
            r0 = r11
            r1 = 2
            int r0 = r0 % r1
            if (r0 != 0) goto L7f
            r0 = r10
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)     // Catch: java.lang.Throwable -> L82
            r9 = r0
        L7f:
            r0 = r9
            return r0
        L82:
            r3 = move-exception
            r0 = r3
            java.lang.Class<com.facebook.internal.NativeProtocol> r1 = com.facebook.internal.NativeProtocol.class
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeProtocol.computeLatestAvailableVersionFromVersionSpec(java.util.TreeSet, int, int[]):int");
    }

    public static Bundle createBundleForException(FacebookException facebookException) {
        if (!CrashShieldHandler.isObjectCrashing(NativeProtocol.class) && facebookException != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString(BRIDGE_ARG_ERROR_DESCRIPTION, facebookException.toString());
                if (facebookException instanceof FacebookOperationCanceledException) {
                    bundle.putString("error_type", ERROR_USER_CANCELED);
                }
                return bundle;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
                return null;
            }
        }
        return null;
    }

    public static Intent createFacebookLiteIntent(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, DefaultAudience defaultAudience, String str3, String str4) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            FBLiteAppInfo fBLiteAppInfo = new FBLiteAppInfo();
            return validateActivityIntent(context, createNativeAppIntent(fBLiteAppInfo, str, collection, str2, z, z2, defaultAudience, str3, str4, false), fBLiteAppInfo);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    private static Intent createNativeAppIntent(NativeAppInfo nativeAppInfo, String str, Collection<String> collection, String str2, boolean z, boolean z2, DefaultAudience defaultAudience, String str3, String str4, boolean z3) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            String loginActivity = nativeAppInfo.getLoginActivity();
            if (loginActivity == null) {
                return null;
            }
            Intent putExtra = new Intent().setClassName(nativeAppInfo.getPackage(), loginActivity).putExtra("client_id", str);
            putExtra.putExtra(FACEBOOK_SDK_VERSION_KEY, FacebookSdk.getSdkVersion());
            if (!Utility.isNullOrEmpty(collection)) {
                putExtra.putExtra("scope", TextUtils.join(",", collection));
            }
            if (!Utility.isNullOrEmpty(str2)) {
                putExtra.putExtra("e2e", str2);
            }
            putExtra.putExtra("state", str3);
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, ServerProtocol.DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST);
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_RETURN_SCOPES, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            if (z2) {
                putExtra.putExtra(ServerProtocol.DIALOG_PARAM_DEFAULT_AUDIENCE, defaultAudience.getNativeProtocolAudience());
            }
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_LEGACY_OVERRIDE, FacebookSdk.getGraphApiVersion());
            putExtra.putExtra(ServerProtocol.DIALOG_PARAM_AUTH_TYPE, str4);
            if (z3) {
                putExtra.putExtra(ServerProtocol.DIALOG_PARAM_FAIL_ON_LOGGED_OUT, true);
            }
            return putExtra;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    public static Intent createPlatformActivityIntent(Context context, String str, String str2, ProtocolVersionQueryResult protocolVersionQueryResult, Bundle bundle) {
        Intent validateActivityIntent;
        if (!CrashShieldHandler.isObjectCrashing(NativeProtocol.class) && protocolVersionQueryResult != null) {
            try {
                NativeAppInfo nativeAppInfo = protocolVersionQueryResult.nativeAppInfo;
                if (nativeAppInfo == null || (validateActivityIntent = validateActivityIntent(context, new Intent().setAction(INTENT_ACTION_PLATFORM_ACTIVITY).setPackage(nativeAppInfo.getPackage()).addCategory("android.intent.category.DEFAULT"), nativeAppInfo)) == null) {
                    return null;
                }
                setupProtocolRequestIntent(validateActivityIntent, str, str2, protocolVersionQueryResult.protocolVersion, bundle);
                return validateActivityIntent;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
                return null;
            }
        }
        return null;
    }

    public static Intent createPlatformServiceIntent(Context context) {
        Intent validateServiceIntent;
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Iterator<NativeAppInfo> it = facebookAppInfoList.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                NativeAppInfo next = it.next();
                validateServiceIntent = validateServiceIntent(context, new Intent(INTENT_ACTION_PLATFORM_SERVICE).setPackage(next.getPackage()).addCategory("android.intent.category.DEFAULT"), next);
            } while (validateServiceIntent == null);
            return validateServiceIntent;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    public static Intent createProtocolResultIntent(Intent intent, Bundle bundle, FacebookException facebookException) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            UUID callIdFromIntent = getCallIdFromIntent(intent);
            if (callIdFromIntent == null) {
                return null;
            }
            Intent intent2 = new Intent();
            intent2.putExtra(EXTRA_PROTOCOL_VERSION, getProtocolVersionFromIntent(intent));
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", callIdFromIntent.toString());
            if (facebookException != null) {
                bundle2.putBundle("error", createBundleForException(facebookException));
            }
            intent2.putExtra(EXTRA_PROTOCOL_BRIDGE_ARGS, bundle2);
            if (bundle != null) {
                intent2.putExtra(EXTRA_PROTOCOL_METHOD_RESULTS, bundle);
            }
            return intent2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    public static List<Intent> createProxyAuthIntents(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, DefaultAudience defaultAudience, String str3, String str4, boolean z3) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            for (NativeAppInfo nativeAppInfo : facebookAppInfoList) {
                Intent createNativeAppIntent = createNativeAppIntent(nativeAppInfo, str, collection, str2, z, z2, defaultAudience, str3, str4, z3);
                if (createNativeAppIntent != null) {
                    arrayList.add(createNativeAppIntent);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    public static Intent createTokenRefreshIntent(Context context) {
        Intent validateServiceIntent;
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            Iterator<NativeAppInfo> it = facebookAppInfoList.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                NativeAppInfo next = it.next();
                validateServiceIntent = validateServiceIntent(context, new Intent().setClassName(next.getPackage(), FACEBOOK_TOKEN_REFRESH_ACTIVITY), next);
            } while (validateServiceIntent == null);
            return validateServiceIntent;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ce A[Catch: all -> 0x00d6, TRY_ENTER, TryCatch #1 {all -> 0x00d6, blocks: (B:5:0x000a, B:6:0x001e, B:30:0x00bf, B:37:0x00ce, B:39:0x00d5), top: B:45:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.TreeSet<java.lang.Integer> fetchAllAvailableProtocolVersionsForAppInfo(com.facebook.internal.NativeProtocol.NativeAppInfo r7) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeProtocol.fetchAllAvailableProtocolVersionsForAppInfo(com.facebook.internal.NativeProtocol$NativeAppInfo):java.util.TreeSet");
    }

    public static Bundle getBridgeArgumentsFromIntent(Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            if (isVersionCompatibleWithBucketedIntent(getProtocolVersionFromIntent(intent))) {
                return intent.getBundleExtra(EXTRA_PROTOCOL_BRIDGE_ARGS);
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    public static UUID getCallIdFromIntent(Intent intent) {
        String str;
        if (!CrashShieldHandler.isObjectCrashing(NativeProtocol.class) && intent != null) {
            try {
                if (isVersionCompatibleWithBucketedIntent(getProtocolVersionFromIntent(intent))) {
                    Bundle bundleExtra = intent.getBundleExtra(EXTRA_PROTOCOL_BRIDGE_ARGS);
                    str = bundleExtra != null ? bundleExtra.getString("action_id") : null;
                } else {
                    str = intent.getStringExtra(EXTRA_PROTOCOL_CALL_ID);
                }
                UUID uuid = null;
                if (str != null) {
                    try {
                        uuid = UUID.fromString(str);
                    } catch (IllegalArgumentException e) {
                        uuid = null;
                    }
                }
                return uuid;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
                return null;
            }
        }
        return null;
    }

    public static Bundle getErrorDataFromResultIntent(Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            if (!isErrorResult(intent)) {
                return null;
            }
            Bundle bridgeArgumentsFromIntent = getBridgeArgumentsFromIntent(intent);
            return bridgeArgumentsFromIntent != null ? bridgeArgumentsFromIntent.getBundle("error") : intent.getExtras();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    public static FacebookException getExceptionFromErrorData(Bundle bundle) {
        if (!CrashShieldHandler.isObjectCrashing(NativeProtocol.class) && bundle != null) {
            try {
                String string = bundle.getString("error_type");
                String str = string;
                if (string == null) {
                    str = bundle.getString(STATUS_ERROR_TYPE);
                }
                String string2 = bundle.getString(BRIDGE_ARG_ERROR_DESCRIPTION);
                String str2 = string2;
                if (string2 == null) {
                    str2 = bundle.getString(STATUS_ERROR_DESCRIPTION);
                }
                return (str == null || !str.equalsIgnoreCase(ERROR_USER_CANCELED)) ? new FacebookException(str2) : new FacebookOperationCanceledException(str2);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
                return null;
            }
        }
        return null;
    }

    public static ProtocolVersionQueryResult getLatestAvailableProtocolVersionForAction(String str, int[] iArr) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            return getLatestAvailableProtocolVersionForAppInfoList(actionToAppInfoMap.get(str), iArr);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    private static ProtocolVersionQueryResult getLatestAvailableProtocolVersionForAppInfoList(List<NativeAppInfo> list, int[] iArr) {
        NativeAppInfo next;
        int computeLatestAvailableVersionFromVersionSpec;
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            updateAllAvailableProtocolVersionsAsync();
            if (list == null) {
                return ProtocolVersionQueryResult.createEmpty();
            }
            Iterator<NativeAppInfo> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    return ProtocolVersionQueryResult.createEmpty();
                }
                next = it.next();
                computeLatestAvailableVersionFromVersionSpec = computeLatestAvailableVersionFromVersionSpec(next.getAvailableVersions(), getLatestKnownVersion(), iArr);
            } while (computeLatestAvailableVersionFromVersionSpec == -1);
            return ProtocolVersionQueryResult.create(next, computeLatestAvailableVersionFromVersionSpec);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    public static int getLatestAvailableProtocolVersionForService(int i) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return 0;
        }
        try {
            return getLatestAvailableProtocolVersionForAppInfoList(facebookAppInfoList, new int[]{i}).getProtocolVersion();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return 0;
        }
    }

    public static final int getLatestKnownVersion() {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return 0;
        }
        try {
            return KNOWN_PROTOCOL_VERSIONS.get(0).intValue();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return 0;
        }
    }

    public static Bundle getMethodArgumentsFromIntent(Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            return !isVersionCompatibleWithBucketedIntent(getProtocolVersionFromIntent(intent)) ? intent.getExtras() : intent.getBundleExtra(EXTRA_PROTOCOL_METHOD_ARGS);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    public static int getProtocolVersionFromIntent(Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return 0;
        }
        try {
            return intent.getIntExtra(EXTRA_PROTOCOL_VERSION, 0);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return 0;
        }
    }

    public static Bundle getSuccessResultsFromIntent(Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return null;
        }
        try {
            int protocolVersionFromIntent = getProtocolVersionFromIntent(intent);
            Bundle extras = intent.getExtras();
            Bundle bundle = extras;
            if (isVersionCompatibleWithBucketedIntent(protocolVersionFromIntent)) {
                bundle = extras == null ? extras : extras.getBundle(EXTRA_PROTOCOL_METHOD_RESULTS);
            }
            return bundle;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return null;
        }
    }

    public static boolean isErrorResult(Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return false;
        }
        try {
            Bundle bridgeArgumentsFromIntent = getBridgeArgumentsFromIntent(intent);
            return bridgeArgumentsFromIntent != null ? bridgeArgumentsFromIntent.containsKey("error") : intent.hasExtra(STATUS_ERROR_TYPE);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return false;
        }
    }

    public static boolean isVersionCompatibleWithBucketedIntent(int i) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return false;
        }
        try {
            boolean z = false;
            if (KNOWN_PROTOCOL_VERSIONS.contains(Integer.valueOf(i))) {
                z = false;
                if (i >= 20140701) {
                    z = true;
                }
            }
            return z;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
            return false;
        }
    }

    public static void setupProtocolRequestIntent(Intent intent, String str, String str2, int i, Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return;
        }
        try {
            String applicationId = FacebookSdk.getApplicationId();
            String applicationName = FacebookSdk.getApplicationName();
            intent.putExtra(EXTRA_PROTOCOL_VERSION, i).putExtra(EXTRA_PROTOCOL_ACTION, str2).putExtra(EXTRA_APPLICATION_ID, applicationId);
            if (!isVersionCompatibleWithBucketedIntent(i)) {
                intent.putExtra(EXTRA_PROTOCOL_CALL_ID, str);
                if (!Utility.isNullOrEmpty(applicationName)) {
                    intent.putExtra(EXTRA_APPLICATION_NAME, applicationName);
                }
                intent.putExtras(bundle);
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", str);
            Utility.putNonEmptyString(bundle2, BRIDGE_ARG_APP_NAME_STRING, applicationName);
            intent.putExtra(EXTRA_PROTOCOL_BRIDGE_ARGS, bundle2);
            Bundle bundle3 = bundle;
            if (bundle == null) {
                bundle3 = new Bundle();
            }
            intent.putExtra(EXTRA_PROTOCOL_METHOD_ARGS, bundle3);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
        }
    }

    public static void updateAllAvailableProtocolVersionsAsync() {
        if (CrashShieldHandler.isObjectCrashing(NativeProtocol.class)) {
            return;
        }
        try {
            if (!protocolVersionsAsyncUpdating.compareAndSet(false, true)) {
                return;
            }
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.internal.NativeProtocol.1
                @Override // java.lang.Runnable
                public void run() {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        for (NativeAppInfo nativeAppInfo : NativeProtocol.access$900()) {
                            nativeAppInfo.fetchAvailableVersions(true);
                        }
                        NativeProtocol.access$1100().set(false);
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
        }
    }

    static Intent validateActivityIntent(Context context, Intent intent, NativeAppInfo nativeAppInfo) {
        if (!CrashShieldHandler.isObjectCrashing(NativeProtocol.class) && intent != null) {
            try {
                ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
                if (resolveActivity == null) {
                    return null;
                }
                if (FacebookSignatureValidator.validateSignature(context, resolveActivity.activityInfo.packageName)) {
                    return intent;
                }
                return null;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
                return null;
            }
        }
        return null;
    }

    static Intent validateServiceIntent(Context context, Intent intent, NativeAppInfo nativeAppInfo) {
        if (!CrashShieldHandler.isObjectCrashing(NativeProtocol.class) && intent != null) {
            try {
                ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
                if (resolveService == null) {
                    return null;
                }
                if (FacebookSignatureValidator.validateSignature(context, resolveService.serviceInfo.packageName)) {
                    return intent;
                }
                return null;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, NativeProtocol.class);
                return null;
            }
        }
        return null;
    }
}
