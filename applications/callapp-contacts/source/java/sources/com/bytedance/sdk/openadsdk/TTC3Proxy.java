package com.bytedance.sdk.openadsdk;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.component.reward.C4408c;
import com.bytedance.sdk.openadsdk.component.reward.C4417d;
import com.bytedance.sdk.openadsdk.component.reward.C4418e;
import com.bytedance.sdk.openadsdk.component.reward.C4431h;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTC3Proxy.class */
public class TTC3Proxy {
    /* renamed from: a */
    public static void m36031a(Context context) {
        try {
            C4431h.m35601a(context).m35593b();
        } catch (Throwable th) {
        }
        try {
            C4408c.m35637a(context).m35638a();
        } catch (Throwable th2) {
        }
    }

    public static void loadFull(Context context, AdSlot adSlot, TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        C4408c.m35637a(context).m35635a(adSlot, new C4418e(fullScreenVideoAdListener));
    }

    public static void loadReward(Context context, AdSlot adSlot, TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        C4431h.m35601a(context).m35599a(adSlot, new C4418e(rewardVideoAdListener));
    }

    public static void verityPlayable(String str, int i, String str2, String str3, String str4) {
        C4417d.m35621a(str, i, str2, str3, str4);
    }
}
