package net.pubnative.lite.sdk;

import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/AdCache.class */
public class AdCache {
    private static final String TAG = "AdCache";
    private final Map<String, Ad> mAdMap = new HashMap();

    public Ad inspect(String str) {
        Ad ad;
        synchronized (this) {
            ad = this.mAdMap.get(str);
        }
        return ad;
    }

    public void put(String str, Ad ad) {
        synchronized (this) {
            Logger.d(TAG, "AdCache putting ad for zone id: ".concat(String.valueOf(str)));
            this.mAdMap.put(str, ad);
        }
    }

    public Ad remove(String str) {
        Ad remove;
        synchronized (this) {
            remove = this.mAdMap.remove(str);
        }
        return remove;
    }
}
