package com.aotter.net.trek.ads.view.controller;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.trek.ads.view.TrekView;
import com.aotter.net.trek.common.util.Dips;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/controller/AdViewController.class */
public class AdViewController {

    /* renamed from: a */
    public static final int f1365a = 60000;

    /* renamed from: b */
    public static final int f1366b = 600000;

    /* renamed from: c */
    public static final double f1367c = 1.5d;

    /* renamed from: d */
    public static final FrameLayout.LayoutParams f1368d = new FrameLayout.LayoutParams(-2, -2, 17);
    @Nullable

    /* renamed from: e */
    public Context f1369e;
    @Nullable

    /* renamed from: f */
    public TrekView f1370f;

    /* renamed from: g */
    public Handler f1371g = new Handler();

    public AdViewController(@NonNull Context context, @NonNull TrekView trekView) {
        this.f1369e = context;
        this.f1370f = trekView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public FrameLayout.LayoutParams m36424b(View view) {
        Integer num = 500;
        return (num == null || num == null || num.intValue() <= 0 || num.intValue() <= 0) ? f1368d : new FrameLayout.LayoutParams(Dips.asIntPixels(num.intValue(), this.f1369e), Dips.asIntPixels(num.intValue(), this.f1369e), 17);
    }

    /* renamed from: a */
    public void m36426a(View view) {
        this.f1371g.post(new RunnableC1691a(this, view));
    }

    @Nullable
    public TrekView getTrekView() {
        return this.f1370f;
    }

    public void setInterstitialUrl(String str) {
    }
}
