package com.bytedance.sdk.openadsdk;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.component.c.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTC4Proxy.class */
public class TTC4Proxy {
    public static void load(Context context, AdSlot adSlot, TTAdNative.InteractionAdListener interactionAdListener) {
        a.a().a(context, adSlot, interactionAdListener);
    }
}
