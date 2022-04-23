package com.appsflyer.internal.referrer;

import android.content.Context;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.appsflyer.AFLogger;
import com.appsflyer.AndroidUtils;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.internal.referrer.Referrer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/referrer/GoogleReferrer.class */
public class GoogleReferrer extends Referrer {
    public final Map<String, Object> oldMap = new HashMap();

    public static boolean allow(AppsFlyerLibCore appsFlyerLibCore, Context context) {
        if (appsFlyerLibCore.getLaunchCounter(AppsFlyerLibCore.getSharedPreferences(context), false) > 2) {
            AFLogger.afRDLog("Install referrer will not load, the counter > 2, ");
            return false;
        }
        try {
            Class.forName("com.android.installreferrer.api.InstallReferrerClient");
            if (AndroidUtils.isPermissionAvailable(context, "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE")) {
                AFLogger.afDebugLog("Install referrer is allowed");
                return true;
            }
            AFLogger.afDebugLog("Install referrer is not allowed");
            return false;
        } catch (ClassNotFoundException e) {
            StringBuilder sb = new StringBuilder("Class ");
            sb.append("com.android.installreferrer.api.InstallReferrerClient");
            sb.append(" not found");
            AFLogger.afRDLog(sb.toString());
            return false;
        } catch (Throwable th) {
            AFLogger.afErrorLog("An error occurred while trying to verify manifest : ".concat("com.android.installreferrer.api.InstallReferrerClient"), th);
            return false;
        }
    }

    public void start(final Context context, final Runnable runnable) {
        m1021(context);
        try {
            final InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
            AFLogger.afDebugLog("Connecting to Install Referrer Library...");
            build.startConnection(new InstallReferrerStateListener() { // from class: com.appsflyer.internal.referrer.GoogleReferrer.2
                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public final void onInstallReferrerServiceDisconnected() {
                    AFLogger.afDebugLog("Install Referrer service disconnected");
                }

                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public final void onInstallReferrerSetupFinished(int i) {
                    GoogleReferrer.this.oldMap.put("code", String.valueOf(i));
                    GoogleReferrer.this.map.put(Payload.SOURCE, Payload.SOURCE_GOOGLE);
                    GoogleReferrer.this.map.put(Payload.API, Long.valueOf(AndroidUtils.getVersionCode(context, "com.android.vending")));
                    GoogleReferrer.this.map.put(Payload.API_NAME, AndroidUtils.getVersionName(context, "com.android.vending"));
                    GoogleReferrer.this.map.putAll(new MandatoryFields());
                    if (i == -1) {
                        AFLogger.afWarnLog("InstallReferrer SERVICE_DISCONNECTED");
                        GoogleReferrer.this.map.put(Payload.RESPONSE, Payload.RESPONSE_SERVICE_DISCONNECTED);
                    } else if (i == 0) {
                        GoogleReferrer.this.map.put(Payload.RESPONSE, Payload.RESPONSE_OK);
                        try {
                            AFLogger.afDebugLog("InstallReferrer connected");
                            if (build.isReady()) {
                                ReferrerDetails installReferrer = build.getInstallReferrer();
                                String installReferrer2 = installReferrer.getInstallReferrer();
                                if (installReferrer2 != null) {
                                    GoogleReferrer.this.oldMap.put("val", installReferrer2);
                                    GoogleReferrer.this.map.put(Payload.RFR, installReferrer2);
                                }
                                long referrerClickTimestampSeconds = installReferrer.getReferrerClickTimestampSeconds();
                                GoogleReferrer.this.oldMap.put("clk", Long.toString(referrerClickTimestampSeconds));
                                GoogleReferrer.this.map.put(Payload.CLICK_TS, Long.valueOf(referrerClickTimestampSeconds));
                                long installBeginTimestampSeconds = installReferrer.getInstallBeginTimestampSeconds();
                                GoogleReferrer.this.oldMap.put("install", Long.toString(installBeginTimestampSeconds));
                                GoogleReferrer.this.map.put(Payload.INSTALL_BEGIN_TS, Long.valueOf(installBeginTimestampSeconds));
                                HashMap hashMap = new HashMap();
                                try {
                                    boolean googlePlayInstantParam = installReferrer.getGooglePlayInstantParam();
                                    GoogleReferrer.this.oldMap.put(Payload.INSTANT, Boolean.valueOf(googlePlayInstantParam));
                                    hashMap.put(Payload.INSTANT, Boolean.valueOf(googlePlayInstantParam));
                                } catch (NoSuchMethodError e) {
                                }
                                try {
                                    hashMap.put(Payload.CLICK_SERVER_TS, Long.valueOf(installReferrer.getReferrerClickTimestampServerSeconds()));
                                    hashMap.put(Payload.INSTALL_BEGIN_SERVER_TS, Long.valueOf(installReferrer.getInstallBeginTimestampServerSeconds()));
                                    hashMap.put(Payload.INSTALL_VERSION, installReferrer.getInstallVersion());
                                } catch (NoSuchMethodError e2) {
                                }
                                if (!hashMap.isEmpty()) {
                                    GoogleReferrer.this.map.put(Payload.GOOGLE_CUSTOM, hashMap);
                                }
                            } else {
                                AFLogger.afWarnLog("ReferrerClient: InstallReferrer is not ready");
                                GoogleReferrer.this.oldMap.put("err", "ReferrerClient: InstallReferrer is not ready");
                            }
                        } catch (Throwable th) {
                            StringBuilder sb = new StringBuilder("Failed to get install referrer: ");
                            sb.append(th.getMessage());
                            AFLogger.afWarnLog(sb.toString());
                            GoogleReferrer.this.oldMap.put("err", th.getMessage());
                        }
                    } else if (i == 1) {
                        GoogleReferrer.this.map.put(Payload.RESPONSE, Payload.RESPONSE_SERVICE_UNAVAILABLE);
                        AFLogger.afWarnLog("InstallReferrer not supported");
                    } else if (i == 2) {
                        AFLogger.afWarnLog("InstallReferrer FEATURE_NOT_SUPPORTED");
                        GoogleReferrer.this.map.put(Payload.RESPONSE, Payload.RESPONSE_FEATURE_NOT_SUPPORTED);
                    } else if (i != 3) {
                        AFLogger.afWarnLog("responseCode not found.");
                    } else {
                        AFLogger.afWarnLog("InstallReferrer DEVELOPER_ERROR");
                        GoogleReferrer.this.map.put(Payload.RESPONSE, Payload.RESPONSE_DEVELOPER_ERROR);
                    }
                    AFLogger.afDebugLog("Install Referrer collected locally");
                    GoogleReferrer googleReferrer = GoogleReferrer.this;
                    googleReferrer.map.put(Payload.LATENCY, Long.valueOf(System.currentTimeMillis() - googleReferrer.f323));
                    googleReferrer.f322 = Referrer.State.FINISHED;
                    runnable.run();
                    build.endConnection();
                }
            });
        } catch (Throwable th) {
            AFLogger.afErrorLog("referrerClient -> startConnection", th);
        }
    }
}
