package com.pubmatic.sdk.common.cache;

import android.view.View;
import com.pubmatic.sdk.common.p019ui.POBFullScreenActivityBackPressListener;
import com.pubmatic.sdk.common.p019ui.POBFullScreenActivityListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBAdViewCacheService.class */
public class POBAdViewCacheService {

    /* renamed from: a */
    private Map<Integer, AdViewConfig> f398a = Collections.synchronizedMap(new HashMap());

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/cache/POBAdViewCacheService$AdViewConfig.class */
    public static class AdViewConfig {

        /* renamed from: a */
        private View f399a;

        /* renamed from: b */
        private POBFullScreenActivityListener f400b;

        /* renamed from: c */
        private POBFullScreenActivityBackPressListener f401c;

        public AdViewConfig(View view, POBFullScreenActivityListener pOBFullScreenActivityListener) {
            this.f399a = view;
            this.f400b = pOBFullScreenActivityListener;
        }

        public View getAdView() {
            return this.f399a;
        }

        public POBFullScreenActivityBackPressListener getBackPressListener() {
            return this.f401c;
        }

        public POBFullScreenActivityListener getEventListener() {
            return this.f400b;
        }

        public void setBackPressListener(POBFullScreenActivityBackPressListener pOBFullScreenActivityBackPressListener) {
            this.f401c = pOBFullScreenActivityBackPressListener;
        }
    }

    public AdViewConfig getStoredAdView(Integer num) {
        return this.f398a.get(num);
    }

    public AdViewConfig popStoredAdView(Integer num) {
        return this.f398a.remove(num);
    }

    public void storeAdView(Integer num, AdViewConfig adViewConfig) {
        this.f398a.put(num, adViewConfig);
    }
}
