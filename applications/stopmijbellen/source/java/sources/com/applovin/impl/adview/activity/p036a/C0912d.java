package com.applovin.impl.adview.activity.p036a;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.C0897a;
import com.applovin.impl.adview.C1011m;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: com.applovin.impl.adview.activity.a.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/a/d.class */
public class C0912d extends AbstractC0906a {
    public C0912d(AbstractC1286e abstractC1286e, Activity activity, C1408l c1408l) {
        super(abstractC1286e, activity, c1408l);
    }

    /* renamed from: a */
    public void m7067a(ImageView imageView, C1011m c1011m, C1011m c1011m2, C0897a c0897a, AppLovinAdView appLovinAdView, ViewGroup viewGroup) {
        this.f3409d.addView(appLovinAdView);
        if (c1011m != null) {
            m7071a(this.f3408c.m5974S(), (this.f3408c.m5969X() ? 3 : 5) | 48, c1011m);
        }
        if (c1011m2 != null) {
            m7071a(this.f3408c.m5974S(), (this.f3408c.m5970W() ? 3 : 5) | 48, c1011m2);
        }
        if (imageView != null) {
            int dpToPx = AppLovinSdkUtils.dpToPx(this.f3407b, ((Integer) this.f3406a.m5511a(C1314b.f4871cv)).intValue());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpToPx, dpToPx, ((Integer) this.f3406a.m5511a(C1314b.f4873cx)).intValue());
            int dpToPx2 = AppLovinSdkUtils.dpToPx(this.f3407b, ((Integer) this.f3406a.m5511a(C1314b.f4872cw)).intValue());
            layoutParams.setMargins(dpToPx2, dpToPx2, dpToPx2, dpToPx2);
            this.f3409d.addView(imageView, layoutParams);
        }
        if (c0897a != null) {
            this.f3409d.addView(c0897a, this.f3410e);
        }
        if (viewGroup != null) {
            viewGroup.addView(this.f3409d);
        } else {
            this.f3407b.setContentView(this.f3409d);
        }
    }
}
