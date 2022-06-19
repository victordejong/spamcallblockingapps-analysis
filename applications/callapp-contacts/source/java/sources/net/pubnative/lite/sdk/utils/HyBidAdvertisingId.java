package net.pubnative.lite.sdk.utils;

import android.content.Context;
import android.os.AsyncTask;
import com.mopub.common.GpsHelper;
import java.lang.ref.WeakReference;
import net.pubnative.lite.sdk.models.AdvertisingInfo;
import net.pubnative.lite.sdk.utils.reflection.MethodBuilderFactory;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/HyBidAdvertisingId.class */
public class HyBidAdvertisingId extends AsyncTask<Void, Void, AdvertisingInfo> {
    private static final String TAG = "HyBidAdvertisingId";
    private static final String sAdvertisingIdClientClassName = "com.google.android.gms.ads.identifier.AdvertisingIdClient";
    private WeakReference<Context> mContextRef;
    private Listener mListener;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener.class */
    public interface Listener {
        void onHyBidAdvertisingIdFinish(String str, Boolean bool);
    }

    public HyBidAdvertisingId(Context context, Listener listener) {
        this.mContextRef = new WeakReference<>(context);
        this.mListener = listener;
    }

    private String reflectedGetAdvertisingId(Object obj, String str) {
        try {
            return (String) MethodBuilderFactory.create(obj, "getId").execute();
        } catch (Exception e) {
            return str;
        }
    }

    private boolean reflectedIsLimitAdTrackingEnabled(Object obj, boolean z) {
        try {
            Boolean bool = (Boolean) MethodBuilderFactory.create(obj, GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY).execute();
            if (bool != null) {
                return bool.booleanValue();
            }
        } catch (Exception e) {
        }
        return z;
    }

    public AdvertisingInfo doInBackground(Void... voidArr) {
        String str = null;
        boolean z = false;
        if (this.mContextRef.get() != null) {
            str = null;
            try {
                Object execute = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(sAdvertisingIdClientClassName)).addParam(Context.class, this.mContextRef.get()).execute();
                String reflectedGetAdvertisingId = reflectedGetAdvertisingId(execute, null);
                str = reflectedGetAdvertisingId;
                z = reflectedIsLimitAdTrackingEnabled(execute, false);
                str = reflectedGetAdvertisingId;
            } catch (Exception e) {
                Logger.m628e(TAG, "Unable to obtain Advertising ID.");
                z = false;
            }
        }
        return new AdvertisingInfo(str, Boolean.valueOf(z));
    }

    public void onPostExecute(AdvertisingInfo advertisingInfo) {
        super.onPostExecute((HyBidAdvertisingId) advertisingInfo);
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onHyBidAdvertisingIdFinish(advertisingInfo.getAdvertisingId(), advertisingInfo.isLimitTrackingEnabled());
        }
    }
}
