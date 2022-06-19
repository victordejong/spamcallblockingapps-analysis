package com.applovin.impl.adview.activity.p036a;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.C0897a;
import com.applovin.impl.adview.C1011m;
import com.applovin.impl.adview.C1024s;
import com.applovin.impl.adview.C1025t;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1486b;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.C1536p;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: com.applovin.impl.adview.activity.a.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/a/c.class */
public class C0908c extends AbstractC0906a {
    public C0908c(AbstractC1286e abstractC1286e, Activity activity, C1408l c1408l) {
        super(abstractC1286e, activity, c1408l);
    }

    /* renamed from: a */
    public void m7069a(ImageView imageView, C1011m c1011m, final C1025t c1025t, C0897a c0897a, ProgressBar progressBar, View view, AppLovinAdView appLovinAdView, ViewGroup viewGroup) {
        int i;
        int i2;
        FrameLayout.LayoutParams layoutParams = this.f3408c.m5951aI() == AbstractC1286e.EnumC1291d.TOP ? new FrameLayout.LayoutParams(-1, -2, 48) : this.f3408c.m5951aI() == AbstractC1286e.EnumC1291d.BOTTOM ? new FrameLayout.LayoutParams(-1, -2, 80) : this.f3408c.m5951aI() == AbstractC1286e.EnumC1291d.LEFT ? new FrameLayout.LayoutParams(-2, -1, 3) : this.f3408c.m5951aI() == AbstractC1286e.EnumC1291d.RIGHT ? new FrameLayout.LayoutParams(-2, -1, 5) : this.f3410e;
        if (this.f3408c.m5955aE()) {
            appLovinAdView.setLayoutParams(this.f3410e);
            this.f3409d.addView(appLovinAdView);
            View view2 = new View(this.f3407b);
            view2.setLayoutParams(this.f3410e);
            view2.setBackgroundColor(Color.argb(254, 0, 0, 0));
            view2.setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.adview.activity.a.c.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view3, MotionEvent motionEvent) {
                    return true;
                }
            });
            this.f3409d.addView(view2);
            view.setLayoutParams(layoutParams);
            this.f3409d.addView(view);
        } else {
            view.setLayoutParams(layoutParams);
            this.f3409d.addView(view);
            appLovinAdView.setLayoutParams(this.f3410e);
            this.f3409d.addView(appLovinAdView);
            appLovinAdView.setVisibility(4);
        }
        if (c1025t != null) {
            C1024s m5992A = this.f3408c.m5992A();
            double m6793a = m5992A.m6793a() / 100.0d;
            double m6792b = m5992A.m6792b() / 100.0d;
            if (viewGroup != null) {
                i2 = viewGroup.getWidth();
                i = viewGroup.getHeight();
            } else {
                Point m5075a = C1492g.m5075a(this.f3407b);
                i2 = m5075a.x;
                i = m5075a.y;
            }
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (i2 * m6793a), (int) (i * m6792b), m5992A.m6790d());
            int dpToPx = AppLovinSdkUtils.dpToPx(this.f3407b, m5992A.m6791c());
            layoutParams2.setMargins(dpToPx, dpToPx, dpToPx, dpToPx);
            this.f3409d.addView(c1025t, layoutParams2);
            if (m5992A.m6785i() > 0.0f) {
                c1025t.setVisibility(4);
                long secondsToMillisLong = Utils.secondsToMillisLong(m5992A.m6785i());
                final long m6787g = m5992A.m6787g();
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.adview.activity.a.c.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C1536p.m4946a(c1025t, m6787g, (Runnable) null);
                    }
                }, secondsToMillisLong);
            }
            if (m5992A.m6784j() > 0.0f) {
                long secondsToMillisLong2 = Utils.secondsToMillisLong(m5992A.m6784j());
                final long m6786h = m5992A.m6786h();
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.adview.activity.a.c.3
                    @Override // java.lang.Runnable
                    public void run() {
                        C1536p.m4944b(c1025t, m6786h, null);
                    }
                }, secondsToMillisLong2);
            }
        }
        if (c1011m != null) {
            m7071a(this.f3408c.m5974S(), 48 | (this.f3408c.m5969X() ? 3 : 5), c1011m);
        }
        if (imageView != null) {
            int dpToPx2 = AppLovinSdkUtils.dpToPx(this.f3407b, ((Integer) this.f3406a.m5511a(C1314b.f4871cv)).intValue());
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(dpToPx2, dpToPx2, ((Integer) this.f3406a.m5511a(C1314b.f4873cx)).intValue());
            int dpToPx3 = AppLovinSdkUtils.dpToPx(this.f3407b, ((Integer) this.f3406a.m5511a(C1314b.f4872cw)).intValue());
            layoutParams3.setMargins(dpToPx3, dpToPx3, dpToPx3, dpToPx3);
            this.f3409d.addView(imageView, layoutParams3);
        }
        if (c0897a != null) {
            this.f3409d.addView(c0897a, this.f3410e);
        }
        if (progressBar != null) {
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, 20, 80);
            layoutParams4.setMargins(0, 0, 0, ((Integer) this.f3406a.m5511a(C1314b.f4824cA)).intValue());
            this.f3409d.addView(progressBar, layoutParams4);
        }
        if (viewGroup != null) {
            viewGroup.addView(this.f3409d);
        } else {
            this.f3407b.setContentView(this.f3409d);
        }
    }

    /* renamed from: a */
    public void m7068a(C1011m c1011m, View view) {
        view.setVisibility(0);
        C1486b.m5093a(this.f3409d, view);
        if (c1011m != null) {
            m7071a(this.f3408c.m5974S(), (this.f3408c.m5970W() ? 3 : 5) | 48, c1011m);
        }
    }
}
