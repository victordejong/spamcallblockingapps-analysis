package net.pubnative.lite.sdk.visibility;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import net.pubnative.lite.sdk.models.TrackingUrlModel;
import net.pubnative.lite.sdk.network.PNHttpClient;
import org.json.JSONArray;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/visibility/TrackingManager.class */
public class TrackingManager {
    private static final long ITEM_VALIDITY_TIME = 1800000;
    protected static final String SHARED_FAILED_LIST = "failed";
    protected static final String SHARED_PENDING_LIST = "pending";
    private static final String SHARED_PREFERENCES = "TrackingManager";
    private static final String TAG = "TrackingManager";
    private static boolean sIsTracking = false;

    protected static TrackingUrlModel dequeueItem(Context context, String str) {
        TrackingUrlModel trackingUrlModel;
        List<TrackingUrlModel> list = getList(context, str);
        if (list.size() > 0) {
            trackingUrlModel = list.get(0);
            list.remove(0);
            setList(context, str, list);
        } else {
            trackingUrlModel = null;
        }
        return trackingUrlModel;
    }

    protected static void enqueueFailedList(Context context) {
        List<TrackingUrlModel> list = getList(context, SHARED_FAILED_LIST);
        List<TrackingUrlModel> list2 = getList(context, SHARED_PENDING_LIST);
        list2.addAll(list);
        setList(context, SHARED_PENDING_LIST, list2);
        list.clear();
        setList(context, SHARED_FAILED_LIST, list);
    }

    protected static void enqueueItem(Context context, String str, TrackingUrlModel trackingUrlModel) {
        List<TrackingUrlModel> list = getList(context, str);
        list.add(trackingUrlModel);
        setList(context, str, list);
    }

    protected static List<TrackingUrlModel> getList(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        String string = getSharedPreferences(context).getString(str, null);
        if (string != null) {
            try {
                JSONArray jSONArray = new JSONArray(string);
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(new TrackingUrlModel(jSONArray.getJSONObject(i)));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    protected static SharedPreferences getSharedPreferences(Context context) {
        return context.getSharedPreferences("TrackingManager", 0);
    }

    protected static void setList(Context context, String str, List<TrackingUrlModel> list) {
        SharedPreferences.Editor edit = getSharedPreferences(context).edit();
        if (list == null) {
            edit.remove(str);
        } else {
            JSONArray jSONArray = new JSONArray();
            for (TrackingUrlModel trackingUrlModel : list) {
                try {
                    jSONArray.put(trackingUrlModel.toJson());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
    }

    public static void track(Context context, String str) {
        synchronized (TrackingManager.class) {
            try {
                if (context == null) {
                    Log.w(TAG, "track - ERROR: Context parameter is null");
                } else if (TextUtils.isEmpty(str)) {
                    Log.w(TAG, "track - ERROR: url parameter is null");
                } else {
                    enqueueFailedList(context);
                    TrackingUrlModel trackingUrlModel = new TrackingUrlModel();
                    trackingUrlModel.url = str;
                    trackingUrlModel.startTimestamp = System.currentTimeMillis();
                    enqueueItem(context, SHARED_PENDING_LIST, trackingUrlModel);
                    trackNextItem(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected static void trackNextItem(final Context context) {
        synchronized (TrackingManager.class) {
            try {
                if (sIsTracking) {
                    Log.w(TAG, "trackNextItem - Currently tracking, dropping the call, will be resumed soon");
                    return;
                }
                sIsTracking = true;
                final TrackingUrlModel dequeueItem = dequeueItem(context, SHARED_PENDING_LIST);
                if (dequeueItem == null) {
                    sIsTracking = false;
                } else if (dequeueItem.startTimestamp + ITEM_VALIDITY_TIME < System.currentTimeMillis()) {
                    sIsTracking = false;
                    trackNextItem(context);
                } else {
                    PNHttpClient.makeRequest(context, dequeueItem.url, null, null, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.visibility.TrackingManager.1
                        @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                        public final void onFailure(Throwable th) {
                            TrackingManager.enqueueItem(context, TrackingManager.SHARED_FAILED_LIST, dequeueItem);
                            boolean unused = TrackingManager.sIsTracking = false;
                            TrackingManager.trackNextItem(context);
                        }

                        @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                        public final void onSuccess(String str) {
                            boolean unused = TrackingManager.sIsTracking = false;
                            TrackingManager.trackNextItem(context);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
