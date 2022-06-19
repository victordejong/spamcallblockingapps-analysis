package com.applovin.impl.adview.activity.p036a;

import android.app.Activity;
import android.view.ViewGroup;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.C1011m;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
/* renamed from: com.applovin.impl.adview.activity.a.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/a/b.class */
public class C0907b extends AbstractC0906a {
    public C0907b(AbstractC1286e abstractC1286e, Activity activity, C1408l c1408l) {
        super(abstractC1286e, activity, c1408l);
    }

    /* renamed from: a */
    public void m7070a(C1011m c1011m, AppLovinAdView appLovinAdView, ViewGroup viewGroup) {
        this.f3409d.addView(appLovinAdView);
        if (c1011m != null) {
            m7071a(this.f3408c.m5974S(), (this.f3408c.m5970W() ? 3 : 5) | 48, c1011m);
        }
        if (viewGroup != null) {
            viewGroup.addView(this.f3409d);
        } else {
            this.f3407b.setContentView(this.f3409d);
        }
    }
}
