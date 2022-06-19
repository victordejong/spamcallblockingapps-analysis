package com.bytedance.sdk.openadsdk;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.component.p148b.C4369a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTC5Proxy.class */
public class TTC5Proxy {
    public static void loadDraw(Context context, AdSlot adSlot, TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        C4369a.m35682a().m35681a(context, adSlot, drawFeedAdListener);
    }

    public static void loadFeed(Context context, AdSlot adSlot, TTAdNative.FeedAdListener feedAdListener) {
        C4369a.m35682a().m35680a(context, adSlot, feedAdListener);
    }
}
