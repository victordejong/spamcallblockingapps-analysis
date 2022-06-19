package net.pubnative.lite.sdk.vpaid;

import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAdCache.class */
public class VideoAdCache {
    private static final String TAG = "VideoAdCache";
    private final Map<String, VideoAdCacheItem> mAdMap = new HashMap();

    public VideoAdCacheItem inspect(String str) {
        return this.mAdMap.get(str);
    }

    public void put(String str, VideoAdCacheItem videoAdCacheItem) {
        Logger.m630d(TAG, "VideoAdCache putting video for zone id: ".concat(String.valueOf(str)));
        this.mAdMap.put(str, videoAdCacheItem);
    }

    public VideoAdCacheItem remove(String str) {
        return this.mAdMap.remove(str);
    }
}
