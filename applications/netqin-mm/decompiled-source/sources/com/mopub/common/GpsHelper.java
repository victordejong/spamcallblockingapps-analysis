package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import com.mopub.common.factories.MethodBuilderFactory;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Reflection;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/GpsHelper.class */
public class GpsHelper {
    public static final int GOOGLE_PLAY_SUCCESS_CODE = 0;
    public static final String IS_LIMIT_AD_TRACKING_ENABLED_KEY = "isLimitAdTrackingEnabled";

    /* renamed from: a */
    public static String f33735a = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/GpsHelper$AdvertisingInfo.class */
    public static class AdvertisingInfo {
        public final String advertisingId;
        public final boolean limitAdTracking;

        public AdvertisingInfo(String str, boolean z) {
            this.advertisingId = str;
            this.limitAdTracking = z;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/GpsHelper$GpsHelperListener.class */
    public interface GpsHelperListener {
        void onFetchAdInfoCompleted();
    }

    /* renamed from: com.mopub.common.GpsHelper$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/GpsHelper$a.class */
    public static class AsyncTaskC8699a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public WeakReference<Context> f33736a;

        /* renamed from: b */
        public WeakReference<GpsHelperListener> f33737b;

        public AsyncTaskC8699a(Context context, GpsHelperListener gpsHelperListener) {
            this.f33736a = new WeakReference<>(context);
            this.f33737b = new WeakReference<>(gpsHelperListener);
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            try {
                Context context = this.f33736a.get();
                if (context == null) {
                    return null;
                }
                MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(GpsHelper.f33735a)).addParam((Class<Class>) Context.class, (Class) context).execute();
                return null;
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
                return null;
            }
        }

        /* renamed from: a */
        public void onPostExecute(Void r3) {
            GpsHelperListener gpsHelperListener = this.f33737b.get();
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
            }
        }
    }

    /* renamed from: a */
    public static String m4646a(Object obj, String str) {
        try {
            return (String) MethodBuilderFactory.create(obj, "getId").execute();
        } catch (Exception e) {
            return str;
        }
    }

    /* renamed from: a */
    public static void m4647a(Context context, GpsHelperListener gpsHelperListener) {
        if (Reflection.classFound(f33735a)) {
            try {
                AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC8699a(context, gpsHelperListener), new Void[0]);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error executing FetchAdvertisingInfoTask", e);
                if (gpsHelperListener != null) {
                    gpsHelperListener.onFetchAdInfoCompleted();
                }
            }
        } else if (gpsHelperListener != null) {
            gpsHelperListener.onFetchAdInfoCompleted();
        }
    }

    /* renamed from: a */
    public static boolean m4645a(Object obj, boolean z) {
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
        m4647a(context, gpsHelperListener);
    }

    public static AdvertisingInfo fetchAdvertisingInfoSync(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Object execute = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(f33735a)).addParam((Class<Class>) Context.class, (Class) context).execute();
            return new AdvertisingInfo(m4646a(execute, (String) null), m4645a(execute, false));
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            return null;
        }
    }

    public static boolean isLimitAdTrackingEnabled(Context context) {
        return SharedPreferencesHelper.getSharedPreferences(context).getBoolean(IS_LIMIT_AD_TRACKING_ENABLED_KEY, false);
    }
}
