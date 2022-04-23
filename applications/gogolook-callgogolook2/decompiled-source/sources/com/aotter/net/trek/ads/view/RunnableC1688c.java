package com.aotter.net.trek.ads.view;

import android.app.Activity;
import com.aotter.net.trek.ads.click.ClcRecordHelper;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.model.NativeAd;
/* renamed from: com.aotter.net.trek.ads.view.c */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/c.class */
public class RunnableC1688c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterActiveWebView f1342a;

    /* renamed from: b */
    public final /* synthetic */ NativeAd f1343b;

    /* renamed from: c */
    public final /* synthetic */ InterActiveWebView f1344c;

    public RunnableC1688c(InterActiveWebView interActiveWebView, InterActiveWebView interActiveWebView2, NativeAd nativeAd) {
        this.f1344c = interActiveWebView;
        this.f1342a = interActiveWebView2;
        this.f1343b = nativeAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        AdListener adListener;
        InterActiveWebView interActiveWebView = this.f1342a;
        activity = this.f1344c.f1264c;
        NativeAd nativeAd = this.f1343b;
        adListener = this.f1344c.f1274m;
        ClcRecordHelper.sendClcWithInterActiveAd(interActiveWebView, activity, nativeAd, adListener);
    }
}
