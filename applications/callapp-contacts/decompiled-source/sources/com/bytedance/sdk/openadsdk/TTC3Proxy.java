package com.bytedance.sdk.openadsdk;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.component.reward.c;
import com.bytedance.sdk.openadsdk.component.reward.d;
import com.bytedance.sdk.openadsdk.component.reward.e;
import com.bytedance.sdk.openadsdk.component.reward.h;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTC3Proxy.class */
public class TTC3Proxy {
    public static void a(Context context) {
        try {
            h.a(context).b();
        } catch (Throwable th) {
        }
        try {
            c.a(context).a();
        } catch (Throwable th2) {
        }
    }

    public static void loadFull(Context context, AdSlot adSlot, TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        c.a(context).a(adSlot, new e(fullScreenVideoAdListener));
    }

    public static void loadReward(Context context, AdSlot adSlot, TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        h.a(context).a(adSlot, new e(rewardVideoAdListener));
    }

    public static void verityPlayable(String str, int i, String str2, String str3, String str4) {
        d.a(str, i, str2, str3, str4);
    }
}
