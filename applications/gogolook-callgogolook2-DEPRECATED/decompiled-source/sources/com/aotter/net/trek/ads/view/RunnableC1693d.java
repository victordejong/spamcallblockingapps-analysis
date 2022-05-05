package com.aotter.net.trek.ads.view;

import android.app.Activity;
import com.aotter.net.trek.util.TrekLog;
/* renamed from: com.aotter.net.trek.ads.view.d */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/d.class */
public class RunnableC1693d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f1379a;

    /* renamed from: b */
    public final /* synthetic */ InterActiveWebView f1380b;

    public RunnableC1693d(InterActiveWebView interActiveWebView, String str) {
        this.f1380b = interActiveWebView;
        this.f1379a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        activity = this.f1380b.f1264c;
        if (!activity.isFinishing()) {
            TrekLog.m36319d(this.f1379a);
            this.f1380b.m36498a(this.f1379a);
            this.f1380b.m36489e();
        }
    }
}
