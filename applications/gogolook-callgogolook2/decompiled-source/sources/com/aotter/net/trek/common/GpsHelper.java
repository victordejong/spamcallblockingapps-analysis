package com.aotter.net.trek.common;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.aotter.net.trek.common.factories.MethodBuilderFactory;
import com.aotter.net.trek.common.util.AsyncTasks;
import com.aotter.net.trek.common.util.Reflection;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.trek.util.TrekLog;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/GpsHelper.class */
public class GpsHelper {
    public static final String ADVERTISING_ID_KEY = "advertisingId";
    public static final int GOOGLE_PLAY_SUCCESS_CODE = 0;
    public static final String IS_LIMIT_AD_TRACKING_ENABLED_KEY = "isLimitAdTrackingEnabled";

    /* renamed from: a */
    public static String f1500a = "com.google.android.gms.common.GooglePlayServicesUtil";

    /* renamed from: b */
    public static String f1501b = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/GpsHelper$AdvertisingInfo.class */
    public class AdvertisingInfo {
        public final String advertisingId;
        public final boolean limitAdTracking;

        public AdvertisingInfo(String str, boolean z) {
            this.advertisingId = str;
            this.limitAdTracking = z;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/GpsHelper$GpsHelperListener.class */
    public interface GpsHelperListener {
        void onFetchAdInfoCompleted();
    }

    /* renamed from: a */
    public static String m36375a(Object obj, String str) {
        try {
            return (String) MethodBuilderFactory.create(obj, "getId").execute();
        } catch (Exception e) {
            return str;
        }
    }

    /* renamed from: a */
    public static void m36377a(Context context, GpsHelperListener gpsHelperListener) {
        if (Reflection.classFound(f1501b)) {
            try {
                AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC1749i(context, gpsHelperListener), new Void[0]);
            } catch (Exception e) {
                TrekLog.m36318d("Error executing FetchAdvertisingInfoTask", e);
                if (gpsHelperListener != null) {
                    gpsHelperListener.onFetchAdInfoCompleted();
                }
            }
        } else if (gpsHelperListener != null) {
            gpsHelperListener.onFetchAdInfoCompleted();
        }
    }

    /* renamed from: a */
    public static void m36376a(Context context, Object obj) {
        String a = m36375a(obj, (String) null);
        m36374a(obj, false);
        AotterTrekApplication.mDevice.setAdID(a);
    }

    /* renamed from: a */
    public static boolean m36378a(Context context) {
        return !TextUtils.isEmpty(AotterTrekApplication.mDevice.getAdID());
    }

    /* renamed from: a */
    public static boolean m36374a(Object obj, boolean z) {
        boolean z2;
        try {
            Boolean bool = (Boolean) MethodBuilderFactory.create(obj, "isLimitAdTrackingEnabled").execute();
            z2 = z;
            if (bool != null) {
                z2 = bool.booleanValue();
            }
        } catch (Exception e) {
            z2 = z;
        }
        return z2;
    }

    public static void fetchAdvertisingInfoAsync(Context context, GpsHelperListener gpsHelperListener) {
        m36377a(context, gpsHelperListener);
    }

    @Nullable
    public static AdvertisingInfo fetchAdvertisingInfoSync(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Object execute = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(f1501b)).addParam(Context.class, context).execute();
            return new AdvertisingInfo(m36375a(execute, (String) null), m36374a(execute, false));
        } catch (Exception e) {
            TrekLog.m36319d("Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            return null;
        }
    }

    public static boolean isLimitAdTrackingEnabled(Context context) {
        return SharedPreferencesHelper.getSharedPreferences(context).getBoolean("isLimitAdTrackingEnabled", false);
    }

    public static boolean isPlayServicesAvailable(Context context) {
        boolean z;
        try {
            Object execute = MethodBuilderFactory.create(null, "isGooglePlayServicesAvailable").setStatic(Class.forName(f1500a)).addParam(Context.class, context).execute();
            z = false;
            if (execute != null) {
                z = false;
                if (((Integer) execute).intValue() == 0) {
                    z = true;
                }
            }
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    @Deprecated
    public static void setClassNamesForTesting() {
        f1500a = "java.lang.Class";
        f1501b = "java.lang.Class";
    }
}
