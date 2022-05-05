package com.appsflyer.internal.referrer;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AFLogger;
import com.appsflyer.AndroidUtils;
import com.appsflyer.AppsFlyerLibCore;
import gogolook.callgogolook2.p074ad.AdConstant;
import java.util.HashMap;
import java.util.Map;
import p081h.p093b.p110d.p111a.AbstractC5663a;
import p081h.p093b.p110d.p111a.AbstractC5669c;
import p081h.p093b.p110d.p111a.C5670d;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/referrer/GoogleReferrer.class */
public class GoogleReferrer {
    public final Map<String, Object> oldMap = new HashMap();
    public final Map<String, Object> newMap = new HashMap();

    public static boolean allow(@NonNull AppsFlyerLibCore appsFlyerLibCore, @NonNull Context context) {
        if (appsFlyerLibCore.getLaunchCounter(AppsFlyerLibCore.getSharedPreferences(context), false) > 2) {
            AFLogger.afRDLog("Install referrer will not load, the counter > 2, ");
            return false;
        }
        try {
            Class.forName("h.b.d.a.a");
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

    public void start(Context context, @NonNull final Runnable runnable) {
        try {
            final AbstractC5663a a = AbstractC5663a.m24855a(context).m24854a();
            AFLogger.afDebugLog("Connecting to Install Referrer Library...");
            a.mo24850a(new AbstractC5669c() { // from class: com.appsflyer.internal.referrer.GoogleReferrer.1
                @Override // p081h.p093b.p110d.p111a.AbstractC5669c
                public final void onInstallReferrerServiceDisconnected() {
                    AFLogger.afDebugLog("Install Referrer service disconnected");
                }

                @Override // p081h.p093b.p110d.p111a.AbstractC5669c
                public final void onInstallReferrerSetupFinished(int i) {
                    GoogleReferrer.this.oldMap.put("code", String.valueOf(i));
                    GoogleReferrer.this.newMap.put("source", Payload.SOURCE_GOOGLE);
                    GoogleReferrer.this.newMap.putAll(new MandatoryFields());
                    if (i == -1) {
                        AFLogger.afWarnLog("InstallReferrer SERVICE_DISCONNECTED");
                        GoogleReferrer.this.newMap.put(Payload.RESPONSE, Payload.RESPONSE_SERVICE_DISCONNECTED);
                    } else if (i == 0) {
                        GoogleReferrer.this.newMap.put(Payload.RESPONSE, Payload.RESPONSE_OK);
                        try {
                            AFLogger.afDebugLog("InstallReferrer connected");
                            if (a.mo24848c()) {
                                C5670d b = a.mo24849b();
                                String c = b.m24844c();
                                if (c != null) {
                                    GoogleReferrer.this.oldMap.put("val", c);
                                    GoogleReferrer.this.newMap.put(Payload.REFERRER, c);
                                }
                                long d = b.m24843d();
                                GoogleReferrer.this.oldMap.put("clk", Long.toString(d));
                                GoogleReferrer.this.newMap.put(Payload.CLICK_TS, Long.valueOf(d));
                                long b2 = b.m24845b();
                                GoogleReferrer.this.oldMap.put(AdConstant.KEY_INSTALL, Long.toString(b2));
                                GoogleReferrer.this.newMap.put(Payload.INSTALL_BEGIN_TS, Long.valueOf(b2));
                                try {
                                    GoogleReferrer.this.oldMap.put(Payload.INSTANT, Boolean.valueOf(b.m24846a()));
                                } catch (NoSuchMethodError e) {
                                }
                            } else {
                                AFLogger.afWarnLog("ReferrerClient: InstallReferrer is not ready");
                                GoogleReferrer.this.oldMap.put(NotificationCompat.CATEGORY_ERROR, "ReferrerClient: InstallReferrer is not ready");
                            }
                        } catch (Throwable th) {
                            StringBuilder sb = new StringBuilder("Failed to get install referrer: ");
                            sb.append(th.getMessage());
                            AFLogger.afWarnLog(sb.toString());
                            GoogleReferrer.this.oldMap.put(NotificationCompat.CATEGORY_ERROR, th.getMessage());
                        }
                    } else if (i == 1) {
                        GoogleReferrer.this.newMap.put(Payload.RESPONSE, Payload.RESPONSE_SERVICE_UNAVAILABLE);
                        AFLogger.afWarnLog("InstallReferrer not supported");
                    } else if (i == 2) {
                        AFLogger.afWarnLog("InstallReferrer FEATURE_NOT_SUPPORTED");
                        GoogleReferrer.this.newMap.put(Payload.RESPONSE, Payload.RESPONSE_FEATURE_NOT_SUPPORTED);
                    } else if (i != 3) {
                        AFLogger.afWarnLog("responseCode not found.");
                    } else {
                        AFLogger.afWarnLog("InstallReferrer DEVELOPER_ERROR");
                        GoogleReferrer.this.newMap.put(Payload.RESPONSE, Payload.RESPONSE_DEVELOPER_ERROR);
                    }
                    AFLogger.afDebugLog("Install Referrer collected locally");
                    runnable.run();
                    a.mo24853a();
                }
            });
        } catch (Throwable th) {
            AFLogger.afErrorLog("referrerClient -> startConnection", th);
        }
    }
}
