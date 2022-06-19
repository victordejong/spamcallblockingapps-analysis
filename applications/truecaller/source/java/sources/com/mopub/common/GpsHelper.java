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
    public static class AsyncTaskC2639a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public WeakReference<Context> f8510a;

        /* renamed from: b */
        public WeakReference<GpsHelperListener> f8511b;

        public AsyncTaskC2639a(Context context, GpsHelperListener gpsHelperListener) {
            this.f8510a = new WeakReference<>(context);
            this.f8511b = new WeakReference<>(gpsHelperListener);
        }

        /* renamed from: a */
        public Void m36311a() {
            try {
                Context context = this.f8510a.get();
                if (context == null) {
                    return null;
                }
                MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient")).addParam((Class<Class>) Context.class, (Class) context).execute();
                return null;
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
                return null;
            }
        }

        /* renamed from: b */
        public void m36310b() {
            GpsHelperListener gpsHelperListener = this.f8511b.get();
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ Void doInBackground(Void[] voidArr) {
            return m36311a();
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ void onPostExecute(Void r3) {
            m36310b();
        }
    }

    public static void fetchAdvertisingInfoAsync(Context context, GpsHelperListener gpsHelperListener) {
        if (!Reflection.classFound("com.google.android.gms.ads.identifier.AdvertisingIdClient")) {
            if (gpsHelperListener == null) {
                return;
            }
            gpsHelperListener.onFetchAdInfoCompleted();
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC2639a(context, gpsHelperListener), new Void[0]);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error executing FetchAdvertisingInfoTask", e);
            if (gpsHelperListener == null) {
                return;
            }
            gpsHelperListener.onFetchAdInfoCompleted();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x006d -> B:15:0x0049). Please submit an issue!!! */
    public static AdvertisingInfo fetchAdvertisingInfoSync(Context context) {
        String str;
        boolean z;
        if (context == null) {
            return null;
        }
        try {
            Object execute = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient")).addParam((Class<Class>) Context.class, (Class) context).execute();
            try {
                str = (String) MethodBuilderFactory.create(execute, "getId").execute();
            } catch (Exception e) {
                str = null;
            }
            try {
                Boolean bool = (Boolean) MethodBuilderFactory.create(execute, IS_LIMIT_AD_TRACKING_ENABLED_KEY).execute();
                z = false;
                if (bool != null) {
                    z = bool.booleanValue();
                }
            } catch (Exception e2) {
                z = false;
            }
            return new AdvertisingInfo(str, z);
        } catch (Exception e3) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            return null;
        }
    }

    public static boolean isLimitAdTrackingEnabled(Context context) {
        return SharedPreferencesHelper.getSharedPreferences(context).getBoolean(IS_LIMIT_AD_TRACKING_ENABLED_KEY, false);
    }
}
