package net.pubnative.lite.sdk;

import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.models.C20576Ad;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/AdCache.class */
public class AdCache {
    private static final String TAG = "AdCache";
    private final Map<String, C20576Ad> mAdMap = new HashMap();

    public C20576Ad inspect(String str) {
        C20576Ad c20576Ad;
        synchronized (this) {
            c20576Ad = this.mAdMap.get(str);
        }
        return c20576Ad;
    }

    public void put(String str, C20576Ad c20576Ad) {
        synchronized (this) {
            Logger.m630d(TAG, "AdCache putting ad for zone id: ".concat(String.valueOf(str)));
            this.mAdMap.put(str, c20576Ad);
        }
    }

    public C20576Ad remove(String str) {
        C20576Ad remove;
        synchronized (this) {
            remove = this.mAdMap.remove(str);
        }
        return remove;
    }
}
