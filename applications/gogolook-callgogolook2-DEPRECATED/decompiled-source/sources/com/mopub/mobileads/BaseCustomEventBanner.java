package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mopub.mobileads.CustomEventBanner;
import java.util.Map;
import p081h.p160h.p161a.p168n.C6260a;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseCustomEventBanner.class */
public abstract class BaseCustomEventBanner extends CustomEventBanner {
    public static final String IS_NEED_USING_TEST_SOURCE_KEY = "isNeedUsingTestSource";
    @Nullable

    /* renamed from: a */
    public C6260a f8425a = null;

    /* renamed from: b */
    public final void m30579b(Map<String, Object> map) {
        if (map.containsKey("com.gogolook.adsdk.fetcher.AdFetchLog")) {
            Object obj = map.get("com.gogolook.adsdk.fetcher.AdFetchLog");
            if (obj instanceof C6260a) {
                this.f8425a = (C6260a) obj;
            }
        }
    }

    public boolean isValidUsingTestAdSource(Map<String, String> map) {
        if (!map.containsKey("isNeedUsingTestSource")) {
            return false;
        }
        String str = map.get("isNeedUsingTestSource");
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            z = false;
            if (Boolean.parseBoolean(str)) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void loadBanner(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2) {
        m30579b(map);
    }
}
