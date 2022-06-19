package com.applovin.impl.adview.activity.p036a;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.applovin.impl.adview.C1011m;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
/* renamed from: com.applovin.impl.adview.activity.a.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/a/a.class */
abstract class AbstractC0906a {

    /* renamed from: a */
    public final C1408l f3406a;

    /* renamed from: b */
    public final Activity f3407b;

    /* renamed from: c */
    public final AbstractC1286e f3408c;

    /* renamed from: d */
    public final ViewGroup f3409d;

    /* renamed from: e */
    public final FrameLayout.LayoutParams f3410e;

    public AbstractC0906a(AbstractC1286e abstractC1286e, Activity activity, C1408l c1408l) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        this.f3410e = layoutParams;
        this.f3408c = abstractC1286e;
        this.f3406a = c1408l;
        this.f3407b = activity;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.f3409d = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        frameLayout.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public void m7071a(AbstractC1286e.C1290c c1290c, int i, C1011m c1011m) {
        c1011m.m6825a(c1290c.f4607a, c1290c.f4611e, c1290c.f4610d, i);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(c1011m.getLayoutParams());
        int i2 = c1290c.f4609c;
        layoutParams.setMargins(i2, c1290c.f4608b, i2, 0);
        layoutParams.gravity = i;
        this.f3409d.addView(c1011m, layoutParams);
    }
}
