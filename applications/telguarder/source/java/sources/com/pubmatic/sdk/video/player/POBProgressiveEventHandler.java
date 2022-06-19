package com.pubmatic.sdk.video.player;

import com.pubmatic.sdk.video.vastmodels.POBVastCreative;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBProgressiveEventHandler.class */
public class POBProgressiveEventHandler {

    /* renamed from: a */
    private SortedMap<Integer, Map<POBVastCreative.POBEventTypes, List<String>>> f889a = new TreeMap();

    /* renamed from: b */
    private POBProgressiveEventListener f890b;

    public POBProgressiveEventHandler(POBProgressiveEventListener pOBProgressiveEventListener) {
        this.f890b = pOBProgressiveEventListener;
    }

    public void addProgressUrls(Integer num, POBVastCreative.POBEventTypes pOBEventTypes, List<String> list) {
        Map<POBVastCreative.POBEventTypes, List<String>> map = this.f889a.get(num);
        if (map == null) {
            HashMap hashMap = new HashMap();
            hashMap.put(pOBEventTypes, list);
            this.f889a.put(num, hashMap);
            return;
        }
        List<String> list2 = map.get(pOBEventTypes);
        if (list2 == null) {
            map.put(pOBEventTypes, list);
        } else {
            list2.addAll(list);
        }
    }

    public void onProgress(int i) {
        int intValue;
        Map<POBVastCreative.POBEventTypes, List<String>> map;
        if (this.f889a.isEmpty() || i < (intValue = this.f889a.firstKey().intValue()) || (map = this.f889a.get(Integer.valueOf(intValue))) == null) {
            return;
        }
        this.f890b.onProgressReached(map);
        this.f889a.remove(Integer.valueOf(intValue));
    }
}
