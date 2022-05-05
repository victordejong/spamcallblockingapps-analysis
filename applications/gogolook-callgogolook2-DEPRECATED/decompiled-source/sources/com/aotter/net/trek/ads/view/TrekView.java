package com.aotter.net.trek.ads.view;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebViewDatabase;
import android.widget.FrameLayout;
import com.aotter.net.trek.ads.view.controller.AdViewController;
import com.aotter.net.trek.ads.view.factories.AdViewControllerFactory;
import com.aotter.net.trek.util.TrekLog;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/TrekView.class */
public class TrekView extends FrameLayout {

    /* renamed from: a */
    public AdViewController f1336a;

    /* renamed from: b */
    public Context f1337b;

    /* renamed from: c */
    public int f1338c;

    public TrekView(Context context) {
        this(context, null);
    }

    public TrekView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1337b = context;
        this.f1338c = getVisibility();
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        try {
            if (WebViewDatabase.getInstance(context) == null) {
                TrekLog.m36317e("Disabling Trek. Local cache file is inaccessible so Trek will fail if we try to create a WebView. Details of this Android bug found at:https://code.google.com/p/android/issues/detail?id=10789");
            } else {
                this.f1336a = AdViewControllerFactory.create(context, this);
            }
        } catch (Exception e) {
            TrekLog.m36316e("Disabling Trek due to no WebView, or it's being updated", e);
        }
    }

    public void setInterstitialUrl(String str) {
        AdViewController adViewController = this.f1336a;
        if (adViewController != null) {
            adViewController.setInterstitialUrl(str);
        }
    }
}
