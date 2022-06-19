package net.pubnative.lite.sdk.vpaid.helpers;

import android.content.Context;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import net.pubnative.lite.sdk.network.PNHttpClient;
import net.pubnative.lite.sdk.vpaid.models.vast.Tracking;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/helpers/EventTracker.class */
public class EventTracker {
    private static Set<String> sUsedEvents = new HashSet();

    private EventTracker() {
    }

    public static void clear() {
        sUsedEvents.clear();
    }

    public static void post(Context context, String str) {
        synchronized (EventTracker.class) {
            try {
                if (sUsedEvents.contains(str)) {
                    return;
                }
                sUsedEvents.add(str);
                PNHttpClient.makeRequest(context, str, null, null, false, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.vpaid.helpers.EventTracker.1
                    @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                    public final void onFailure(Throwable th) {
                    }

                    @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                    public final void onSuccess(String str2) {
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void postEventByType(Context context, List<Tracking> list, String str) {
        if (list == null) {
            return;
        }
        for (Tracking tracking : list) {
            if (tracking.getEvent().equalsIgnoreCase(str)) {
                post(context, tracking.getText());
            }
        }
    }
}
