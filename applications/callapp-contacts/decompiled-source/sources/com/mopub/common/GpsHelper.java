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

    /* renamed from: a  reason: collision with root package name */
    private static String f33827a = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

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

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/GpsHelper$a.class */
    static final class a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<Context> f33828a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<GpsHelperListener> f33829b;

        public a(Context context, GpsHelperListener gpsHelperListener) {
            this.f33828a = new WeakReference<>(context);
            this.f33829b = new WeakReference<>(gpsHelperListener);
        }

        private Void a() {
            try {
                Context context = this.f33828a.get();
                if (context == null) {
                    return null;
                }
                MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(GpsHelper.f33827a)).addParam((Class<Class>) Context.class, (Class) context).execute();
                return null;
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r3) {
            GpsHelperListener gpsHelperListener = this.f33829b.get();
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
            }
        }
    }

    private static String a(Object obj) {
        try {
            return (String) MethodBuilderFactory.create(obj, "getId").execute();
        } catch (Exception e) {
            return null;
        }
    }

    private static boolean b(Object obj) {
        try {
            Boolean bool = (Boolean) MethodBuilderFactory.create(obj, IS_LIMIT_AD_TRACKING_ENABLED_KEY).execute();
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static void fetchAdvertisingInfoAsync(Context context, GpsHelperListener gpsHelperListener) {
        if (Reflection.classFound(f33827a)) {
            try {
                AsyncTasks.safeExecuteOnExecutor(new a(context, gpsHelperListener), new Void[0]);
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

    public static AdvertisingInfo fetchAdvertisingInfoSync(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Object execute = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(f33827a)).addParam((Class<Class>) Context.class, (Class) context).execute();
            return new AdvertisingInfo(a(execute), b(execute));
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            return null;
        }
    }

    public static boolean isLimitAdTrackingEnabled(Context context) {
        return SharedPreferencesHelper.getSharedPreferences(context).getBoolean(IS_LIMIT_AD_TRACKING_ENABLED_KEY, false);
    }
}
