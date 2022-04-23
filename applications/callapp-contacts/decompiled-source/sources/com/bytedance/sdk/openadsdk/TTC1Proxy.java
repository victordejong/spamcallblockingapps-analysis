package com.bytedance.sdk.openadsdk;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.component.a.b;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTC1Proxy.class */
public class TTC1Proxy {
    public static void load(Context context, AdSlot adSlot, TTAdNative.BannerAdListener bannerAdListener) {
        b.a(context).a(adSlot, bannerAdListener);
    }
}
