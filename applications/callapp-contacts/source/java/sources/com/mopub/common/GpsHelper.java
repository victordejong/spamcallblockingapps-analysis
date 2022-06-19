package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import com.mopub.common.factories.MethodBuilderFactory;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Reflection;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/GpsHelper.class */
public class GpsHelper {
    public static final int GOOGLE_PLAY_SUCCESS_CODE = 0;
    public static final String IS_LIMIT_AD_TRACKING_ENABLED_KEY = "isLimitAdTrackingEnabled";

    /* renamed from: a */
    private static String f58745a = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/GpsHelper$AdvertisingInfo.class */
    public static class AdvertisingInfo {
        public final String advertisingId;
        public final boolean limitAdTracking;

        public AdvertisingInfo(String str, boolean z) {
            this.advertisingId = str;
            this.limitAdTracking = z;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/GpsHelper$GpsHelperListener.class */
    public interface GpsHelperListener {
        void onFetchAdInfoCompleted();
    }

    /* renamed from: com.mopub.common.GpsHelper$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/GpsHelper$a.class */
    static final class AsyncTaskC16683a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        private WeakReference<Context> f58746a;

        /* renamed from: b */
        private WeakReference<GpsHelperListener> f58747b;

        public AsyncTaskC16683a(Context context, GpsHelperListener gpsHelperListener) {
            this.f58746a = new WeakReference<>(context);
            this.f58747b = new WeakReference<>(gpsHelperListener);
        }

        /* renamed from: a */
        private Void m6740a() {
            try {
                Context context = this.f58746a.get();
                if (context == null) {
                    return null;
                }
                MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(GpsHelper.f58745a)).addParam((Class<Class>) Context.class, (Class) context).execute();
                return null;
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return m6740a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r3) {
            GpsHelperListener gpsHelperListener = this.f58747b.get();
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
            }
        }
    }

    /* renamed from: a */
    private static String m6742a(Object obj) {
        try {
            return (String) MethodBuilderFactory.create(obj, "getId").execute();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    private static boolean m6741b(Object obj) {
        try {
            Boolean bool = (Boolean) MethodBuilderFactory.create(obj, IS_LIMIT_AD_TRACKING_ENABLED_KEY).execute();
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    public static void fetchAdvertisingInfoAsync(Context context, GpsHelperListener gpsHelperListener) {
        if (!Reflection.classFound(f58745a)) {
            if (gpsHelperListener == null) {
                return;
            }
            gpsHelperListener.onFetchAdInfoCompleted();
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC16683a(context, gpsHelperListener), new Void[0]);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error executing FetchAdvertisingInfoTask", e);
            if (gpsHelperListener == null) {
                return;
            }
            gpsHelperListener.onFetchAdInfoCompleted();
        }
    }

    public static AdvertisingInfo fetchAdvertisingInfoSync(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Object execute = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(f58745a)).addParam((Class<Class>) Context.class, (Class) context).execute();
            return new AdvertisingInfo(m6742a(execute), m6741b(execute));
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            return null;
        }
    }

    public static boolean isLimitAdTrackingEnabled(Context context) {
        return SharedPreferencesHelper.getSharedPreferences(context).getBoolean(IS_LIMIT_AD_TRACKING_ENABLED_KEY, false);
    }
}
