package io.bidmachine.core;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.mopub.common.GpsHelper;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/core/AdvertisingIdClientInfo.class */
public class AdvertisingIdClientInfo implements Runnable {
    private static final int RESULT = 0;
    private Closure closure;
    private Context context;
    private Handler handler = new Handler(Looper.getMainLooper()) { // from class: io.bidmachine.core.AdvertisingIdClientInfo.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            AdvertisingIdClientInfo.this.closure.executed((AdvertisingProfile) message.obj);
        }
    };

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/AdvertisingIdClientInfo$AdvertisingProfile.class */
    public static class AdvertisingProfile {
        private String id;
        private boolean limitAdTrackingEnabled;

        public String getId() {
            return this.id;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }

        public void setId(String str) {
            this.id = str;
        }

        void setLimitAdTrackingEnabled(boolean z) {
            this.limitAdTrackingEnabled = z;
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/AdvertisingIdClientInfo$Closure.class */
    public interface Closure {
        void executed(AdvertisingProfile advertisingProfile);
    }

    public AdvertisingIdClientInfo(Context context, Closure closure) {
        this.context = context;
        this.closure = closure;
    }

    public static void executeTask(Context context, Closure closure) {
        if (context != null && closure != null) {
            BackgroundTaskManager.async(new AdvertisingIdClientInfo(context, closure));
        }
    }

    private static AdvertisingProfile getAdvertisingIdInfo(Context context) {
        AdvertisingProfile advertisingProfile = new AdvertisingProfile();
        try {
            Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            Object invokeMethodByName = Utils.invokeMethodByName(cls, cls, "getAdvertisingIdInfo", new Pair(Context.class, context));
            if (invokeMethodByName != null) {
                String str = (String) Utils.invokeMethodByName(invokeMethodByName, "getId", new Pair[0]);
                boolean booleanValue = ((Boolean) Utils.invokeMethodByName(invokeMethodByName, GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, new Pair[0])).booleanValue();
                advertisingProfile.setId(str);
                advertisingProfile.setLimitAdTrackingEnabled(booleanValue);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return advertisingProfile;
    }

    @Override // java.lang.Runnable
    public void run() {
        Handler handler = this.handler;
        handler.sendMessage(handler.obtainMessage(0, getAdvertisingIdInfo(this.context)));
    }
}
