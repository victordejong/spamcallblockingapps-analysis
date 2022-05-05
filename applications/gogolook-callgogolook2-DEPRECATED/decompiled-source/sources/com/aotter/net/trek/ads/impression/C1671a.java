package com.aotter.net.trek.ads.impression;

import android.os.SystemClock;
import android.view.View;
import java.util.Map;
/* renamed from: com.aotter.net.trek.ads.impression.a */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/impression/a.class */
public class C1671a implements AbstractC1677g {

    /* renamed from: a */
    public final /* synthetic */ ImpressionTracker f1208a;

    public C1671a(ImpressionTracker impressionTracker) {
        this.f1208a = impressionTracker;
    }

    @Override // com.aotter.net.trek.ads.impression.AbstractC1677g
    public void onVisibilityChanged(View view) {
        Map map;
        map = this.f1208a.f1205j;
        map.put(view, Long.valueOf(SystemClock.uptimeMillis()));
        this.f1208a.m36555a();
    }
}
