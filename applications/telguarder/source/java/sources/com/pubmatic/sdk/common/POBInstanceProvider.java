package com.pubmatic.sdk.common;

import android.app.Application;
import android.content.Context;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBBiddingPartnerService;
import com.pubmatic.sdk.common.cache.POBAdViewCacheService;
import com.pubmatic.sdk.common.cache.POBCacheManager;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBAppInfo;
import com.pubmatic.sdk.common.models.POBDeviceInfo;
import com.pubmatic.sdk.common.network.PMNetworkMonitor;
import com.pubmatic.sdk.common.network.POBHttpRequest;
import com.pubmatic.sdk.common.network.POBNetworkHandler;
import com.pubmatic.sdk.common.network.POBTrackerHandler;
import com.pubmatic.sdk.common.utility.POBLocationDetector;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.lang.reflect.Method;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/POBInstanceProvider.class */
public class POBInstanceProvider {

    /* renamed from: a */
    private static volatile POBDeviceInfo f350a;

    /* renamed from: b */
    private static volatile POBAppInfo f351b;

    /* renamed from: c */
    private static volatile POBLocationDetector f352c;

    /* renamed from: d */
    private static volatile POBNetworkHandler f353d;

    /* renamed from: e */
    private static volatile POBSDKConfig f354e;

    /* renamed from: f */
    private static volatile POBCacheManager f355f;

    /* renamed from: g */
    private static POBBiddingPartnerService f356g;

    /* renamed from: h */
    private static volatile POBTrackerHandler f357h;

    /* renamed from: i */
    private static volatile PMNetworkMonitor f358i;

    /* renamed from: j */
    private static volatile POBAdViewCacheService f359j;

    /* renamed from: com.pubmatic.sdk.common.POBInstanceProvider$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/POBInstanceProvider$a.class */
    public static final class C1842a implements POBNetworkHandler.POBNetworkListener<JSONObject> {
        C1842a() {
        }

        /* renamed from: a */
        public void onSuccess(JSONObject jSONObject) {
            String version = OpenWrapSDK.getVersion();
            if (version.compareTo(jSONObject.optString("latest_ver", version)) < 0) {
                PMLog.info("POBInstanceProvider", jSONObject.optString("message"), new Object[0]);
            }
        }

        @Override // com.pubmatic.sdk.common.network.POBNetworkHandler.POBNetworkListener
        public void onFailure(POBError pOBError) {
            PMLog.debug("POBInstanceProvider", pOBError.getErrorMessage(), new Object[0]);
        }
    }

    static {
        try {
            Method method = Class.forName("com.pubmatic.sdk.monitor.POBMonitor").getMethod("load", new Class[0]);
            method.setAccessible(true);
            method.invoke(null, new Object[0]);
        } catch (Exception e) {
            PMLog.debug("POBInstanceProvider", e.getLocalizedMessage(), new Object[0]);
        }
        try {
            Method method2 = Class.forName("com.pubmatic.sdk.fanbidder.POBFANHelper").getMethod("init", new Class[0]);
            method2.setAccessible(true);
            method2.invoke(null, new Object[0]);
        } catch (Exception e2) {
            PMLog.debug("POBInstanceProvider", e2.getLocalizedMessage(), new Object[0]);
        }
        try {
            Context applicationContext = ((Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null)).getApplicationContext();
            if (!((Boolean) POBUtils.getBuildConfigValue(applicationContext, "DEBUG")).booleanValue()) {
                return;
            }
            m1108a(applicationContext);
        } catch (Exception e3) {
            PMLog.debug("POBInstanceProvider", e3.getLocalizedMessage(), new Object[0]);
        }
    }

    /* renamed from: a */
    private static void m1108a(Context context) {
        POBNetworkHandler networkHandler = getNetworkHandler(context);
        POBHttpRequest pOBHttpRequest = new POBHttpRequest();
        pOBHttpRequest.setUrl("https://repo.pubmatic.com/artifactory/public-repos/apis/android/ow-sdk/release.json");
        networkHandler.sendJSONRequest(pOBHttpRequest, new C1842a());
    }

    public static POBAdViewCacheService getAdViewCacheService() {
        if (f359j == null) {
            synchronized (POBAdViewCacheService.class) {
                try {
                    if (f359j == null) {
                        f359j = new POBAdViewCacheService();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f359j;
    }

    public static POBAppInfo getAppInfo(Context context) {
        if (f351b == null) {
            synchronized (POBAppInfo.class) {
                try {
                    if (f351b == null) {
                        f351b = new POBAppInfo(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f351b;
    }

    public static POBCacheManager getCacheManager(Context context) {
        if (f355f == null) {
            synchronized (POBCacheManager.class) {
                try {
                    if (f355f == null) {
                        f355f = new POBCacheManager(context, getNetworkHandler(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f355f;
    }

    public static POBDeviceInfo getDeviceInfo(Context context) {
        if (f350a == null) {
            synchronized (POBDeviceInfo.class) {
                try {
                    if (f350a == null) {
                        f350a = new POBDeviceInfo(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f350a;
    }

    public static POBLocationDetector getLocationDetector(Context context) {
        if (f352c == null) {
            synchronized (POBLocationDetector.class) {
                try {
                    if (f352c == null) {
                        f352c = new POBLocationDetector(context);
                        f352c.setLocationUpdateIntervalInMs(getSdkConfig().getLocationDetectionDurationInMillis());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f352c;
    }

    public static POBNetworkHandler getNetworkHandler(Context context) {
        if (f353d == null) {
            synchronized (POBNetworkHandler.class) {
                try {
                    if (f353d == null) {
                        f353d = new POBNetworkHandler(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f353d;
    }

    public static PMNetworkMonitor getNetworkMonitor(Context context) {
        if (f358i == null) {
            synchronized (PMNetworkMonitor.class) {
                try {
                    if (f358i == null) {
                        f358i = new PMNetworkMonitor(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f358i;
    }

    public static <T extends POBAdDescriptor> POBBiddingPartnerService<T> getPartnerServices() {
        return f356g;
    }

    public static POBSDKConfig getSdkConfig() {
        if (f354e == null) {
            synchronized (POBNetworkHandler.class) {
                try {
                    if (f354e == null) {
                        f354e = new POBSDKConfig();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f354e;
    }

    public static POBTrackerHandler getTrackerHandler(POBNetworkHandler pOBNetworkHandler) {
        if (f357h == null) {
            synchronized (POBTrackerHandler.class) {
                try {
                    if (f357h == null) {
                        f357h = new POBTrackerHandler(pOBNetworkHandler);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f357h;
    }

    public static void setPartnerServices(POBBiddingPartnerService<? extends POBAdDescriptor> pOBBiddingPartnerService) {
        f356g = pOBBiddingPartnerService;
    }
}
