package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import androidx.annotation.Nullable;
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
    public static String f8091a = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

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
    public static class AsyncTaskC3761a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public WeakReference<Context> f8092a;

        /* renamed from: b */
        public WeakReference<GpsHelperListener> f8093b;

        public AsyncTaskC3761a(Context context, GpsHelperListener gpsHelperListener) {
            this.f8092a = new WeakReference<>(context);
            this.f8093b = new WeakReference<>(gpsHelperListener);
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            try {
                Context context = this.f8092a.get();
                if (context == null) {
                    return null;
                }
                MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(GpsHelper.f8091a)).addParam((Class<Class>) Context.class, (Class) context).execute();
                return null;
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
                return null;
            }
        }

        /* renamed from: a */
        public void onPostExecute(Void r3) {
            GpsHelperListener gpsHelperListener = this.f8093b.get();
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
            }
        }
    }

    /* renamed from: a */
    public static String m30800a(Object obj, String str) {
        try {
            return (String) MethodBuilderFactory.create(obj, "getId").execute();
        } catch (Exception e) {
            return str;
        }
    }

    /* renamed from: a */
    public static void m30801a(Context context, GpsHelperListener gpsHelperListener) {
        if (Reflection.classFound(f8091a)) {
            try {
                AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC3761a(context, gpsHelperListener), new Void[0]);
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
    public static boolean m30799a(Object obj, boolean z) {
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
        m30801a(context, gpsHelperListener);
    }

    @Nullable
    public static AdvertisingInfo fetchAdvertisingInfoSync(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Object execute = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(f8091a)).addParam((Class<Class>) Context.class, (Class) context).execute();
            return new AdvertisingInfo(m30800a(execute, (String) null), m30799a(execute, false));
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            return null;
        }
    }

    public static boolean isLimitAdTrackingEnabled(Context context) {
        return SharedPreferencesHelper.getSharedPreferences(context).getBoolean("isLimitAdTrackingEnabled", false);
    }
}
