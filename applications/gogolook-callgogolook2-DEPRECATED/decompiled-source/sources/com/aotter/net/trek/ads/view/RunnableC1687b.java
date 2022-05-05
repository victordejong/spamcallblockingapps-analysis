package com.aotter.net.trek.ads.view;

import android.app.Activity;
/* renamed from: com.aotter.net.trek.ads.view.b */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/b.class */
public class RunnableC1687b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f1340a;

    /* renamed from: b */
    public final /* synthetic */ InterActiveWebView f1341b;

    public RunnableC1687b(InterActiveWebView interActiveWebView, String str) {
        this.f1341b = interActiveWebView;
        this.f1340a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        activity = this.f1341b.f1264c;
        if (!activity.isFinishing()) {
            this.f1341b.m36498a(this.f1340a);
            this.f1341b.m36489e();
        }
    }
}
