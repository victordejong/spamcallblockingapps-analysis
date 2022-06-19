package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import com.mopub.common.factories.MethodBuilderFactory;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Reflection;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/GpsHelper.class */
public class GpsHelper {
    public static final int GOOGLE_PLAY_SUCCESS_CODE = 0;
    public static final String IS_LIMIT_AD_TRACKING_ENABLED_KEY = "isLimitAdTrackingEnabled";

    /* renamed from: a */
    public static String f4247a = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/GpsHelper$AdvertisingInfo.class */
    public static class AdvertisingInfo {
        public final String advertisingId;
        public final boolean limitAdTracking;

        public AdvertisingInfo(String str, boolean z) {
            this.advertisingId = str;
            this.limitAdTracking = z;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/GpsHelper$GpsHelperListener.class */
    public interface GpsHelperListener {
        void onFetchAdInfoCompleted();
    }

    /* renamed from: com.mopub.common.GpsHelper$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/GpsHelper$a.class */
    public static class AsyncTaskC1010a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public WeakReference<Context> f4248a;

        /* renamed from: b */
        public WeakReference<GpsHelperListener> f4249b;

        public AsyncTaskC1010a(Context context, GpsHelperListener gpsHelperListener) {
            this.f4248a = new WeakReference<>(context);
            this.f4249b = new WeakReference<>(gpsHelperListener);
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            try {
                Context context = this.f4248a.get();
                if (context == null) {
                    return null;
                }
                MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(GpsHelper.f4247a)).addParam((Class<Class>) Context.class, (Class) context).execute();
                return null;
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
                return null;
            }
        }

        /* renamed from: b */
        public void onPostExecute(Void r3) {
            GpsHelperListener gpsHelperListener = this.f4249b.get();
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
            }
        }
    }

    /* renamed from: b */
    public static void m3962b(Context context, GpsHelperListener gpsHelperListener) {
        if (!Reflection.classFound(f4247a)) {
            if (gpsHelperListener == null) {
                return;
            }
            gpsHelperListener.onFetchAdInfoCompleted();
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC1010a(context, gpsHelperListener), new Void[0]);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error executing FetchAdvertisingInfoTask", e);
            if (gpsHelperListener == null) {
                return;
            }
            gpsHelperListener.onFetchAdInfoCompleted();
        }
    }

    /* renamed from: c */
    public static String m3961c(Object obj, String str) {
        try {
            return (String) MethodBuilderFactory.create(obj, "getId").execute();
        } catch (Exception e) {
            return str;
        }
    }

    /* renamed from: d */
    public static boolean m3960d(Object obj, boolean z) {
        boolean z2;
        try {
            Boolean bool = (Boolean) MethodBuilderFactory.create(obj, IS_LIMIT_AD_TRACKING_ENABLED_KEY).execute();
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
        m3962b(context, gpsHelperListener);
    }

    public static AdvertisingInfo fetchAdvertisingInfoSync(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Object execute = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(f4247a)).addParam((Class<Class>) Context.class, (Class) context).execute();
            return new AdvertisingInfo(m3961c(execute, null), m3960d(execute, false));
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            return null;
        }
    }

    public static boolean isLimitAdTrackingEnabled(Context context) {
        return SharedPreferencesHelper.getSharedPreferences(context).getBoolean(IS_LIMIT_AD_TRACKING_ENABLED_KEY, false);
    }
}
