package com.appsflyer.internal;

import android.content.Context;
import android.support.annotation.NonNull;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.appsflyer.AFLogger;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appsflyer.internal.cj */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/cj.class */
public class C0795cj extends AbstractC0797cl {
    public final Map<String, Object> AFInAppEventParameterName = new HashMap();

    public C0795cj(Runnable runnable) {
        super("google", runnable);
    }

    private static boolean values(@NonNull Context context) {
        C0726ai.valueOf();
        if (C0726ai.AFInAppEventParameterName(C0726ai.values(context), "appsFlyerCount", false) > 0) {
            AFLogger.AFInAppEventParameterName("Install referrer will not load, the counter > 1, ");
            return false;
        }
        try {
            Class.forName("com.android.installreferrer.api.InstallReferrerClient");
            if (C0714ac.AFKeystoreWrapper(context, "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE")) {
                AFLogger.AFInAppEventType("Install referrer is allowed");
                return true;
            }
            AFLogger.AFInAppEventType("Install referrer is not allowed");
            return false;
        } catch (ClassNotFoundException e) {
            StringBuilder sb = new StringBuilder("Class ");
            sb.append("com.android.installreferrer.api.InstallReferrerClient");
            sb.append(" not found");
            AFLogger.AFInAppEventParameterName(sb.toString());
            return false;
        } catch (Throwable th) {
            AFLogger.valueOf("An error occurred while trying to verify manifest : ".concat("com.android.installreferrer.api.InstallReferrerClient"), th);
            return false;
        }
    }

    @Override // com.appsflyer.internal.AbstractC0797cl
    public final void AFKeystoreWrapper(final Context context) {
        if (!values(context)) {
            return;
        }
        AFInAppEventType();
        try {
            final InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
            AFLogger.AFInAppEventType("Connecting to Install Referrer Library...");
            build.startConnection(new InstallReferrerStateListener() { // from class: com.appsflyer.internal.cj.2
                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public final void onInstallReferrerServiceDisconnected() {
                    AFLogger.AFInAppEventType("Install Referrer service disconnected");
                }

                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public final void onInstallReferrerSetupFinished(int i) {
                    C0795cj.this.AFInAppEventParameterName.put("code", String.valueOf(i));
                    C0795cj.this.values.put("api_ver", Long.valueOf(C0714ac.valueOf(context, "com.android.vending")));
                    C0795cj.this.values.put("api_ver_name", C0714ac.values(context, "com.android.vending"));
                    if (i == -1) {
                        AFLogger.values("InstallReferrer SERVICE_DISCONNECTED");
                        C0795cj.this.values.put("response", "SERVICE_DISCONNECTED");
                    } else if (i == 0) {
                        C0795cj.this.values.put("response", "OK");
                        try {
                            AFLogger.AFInAppEventType("InstallReferrer connected");
                            if (build.isReady()) {
                                ReferrerDetails installReferrer = build.getInstallReferrer();
                                String installReferrer2 = installReferrer.getInstallReferrer();
                                if (installReferrer2 != null) {
                                    C0795cj.this.AFInAppEventParameterName.put("val", installReferrer2);
                                    C0795cj.this.values.put("referrer", installReferrer2);
                                }
                                long referrerClickTimestampSeconds = installReferrer.getReferrerClickTimestampSeconds();
                                C0795cj.this.AFInAppEventParameterName.put("clk", Long.toString(referrerClickTimestampSeconds));
                                C0795cj.this.values.put("click_ts", Long.valueOf(referrerClickTimestampSeconds));
                                long installBeginTimestampSeconds = installReferrer.getInstallBeginTimestampSeconds();
                                C0795cj.this.AFInAppEventParameterName.put("install", Long.toString(installBeginTimestampSeconds));
                                C0795cj.this.values.put("install_begin_ts", Long.valueOf(installBeginTimestampSeconds));
                                HashMap hashMap = new HashMap();
                                try {
                                    boolean googlePlayInstantParam = installReferrer.getGooglePlayInstantParam();
                                    C0795cj.this.AFInAppEventParameterName.put("instant", Boolean.valueOf(googlePlayInstantParam));
                                    hashMap.put("instant", Boolean.valueOf(googlePlayInstantParam));
                                } catch (NoSuchMethodError e) {
                                }
                                try {
                                    hashMap.put("click_server_ts", Long.valueOf(installReferrer.getReferrerClickTimestampServerSeconds()));
                                    hashMap.put("install_begin_server_ts", Long.valueOf(installReferrer.getInstallBeginTimestampServerSeconds()));
                                    hashMap.put("install_version", installReferrer.getInstallVersion());
                                } catch (NoSuchMethodError e2) {
                                }
                                if (!hashMap.isEmpty()) {
                                    C0795cj.this.values.put("google_custom", hashMap);
                                }
                            } else {
                                AFLogger.values("ReferrerClient: InstallReferrer is not ready");
                                C0795cj.this.AFInAppEventParameterName.put("err", "ReferrerClient: InstallReferrer is not ready");
                            }
                        } catch (Throwable th) {
                            StringBuilder m8728C = C22128a.m8728C("Failed to get install referrer: ");
                            m8728C.append(th.getMessage());
                            AFLogger.values(m8728C.toString());
                            C0795cj.this.AFInAppEventParameterName.put("err", th.getMessage());
                        }
                    } else if (i == 1) {
                        C0795cj.this.values.put("response", "SERVICE_UNAVAILABLE");
                        AFLogger.values("InstallReferrer not supported");
                    } else if (i == 2) {
                        AFLogger.values("InstallReferrer FEATURE_NOT_SUPPORTED");
                        C0795cj.this.values.put("response", "FEATURE_NOT_SUPPORTED");
                    } else if (i != 3) {
                        AFLogger.values("responseCode not found.");
                    } else {
                        AFLogger.values("InstallReferrer DEVELOPER_ERROR");
                        C0795cj.this.values.put("response", "DEVELOPER_ERROR");
                    }
                    AFLogger.AFInAppEventType("Install Referrer collected locally");
                    C0795cj.this.AFKeystoreWrapper();
                    build.endConnection();
                }
            });
        } catch (Throwable th) {
            AFLogger.valueOf("referrerClient -> startConnection", th);
        }
    }
}
