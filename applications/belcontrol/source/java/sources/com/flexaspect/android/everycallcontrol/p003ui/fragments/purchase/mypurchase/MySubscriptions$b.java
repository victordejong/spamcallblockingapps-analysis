package com.flexaspect.android.everycallcontrol.p003ui.fragments.purchase.mypurchase;

import android.view.View;
import com.kedlin.cca.core.util.billing.SkuDetails;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.purchase.mypurchase.MySubscriptions$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions$b.class */
public class MySubscriptions$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ SkuDetails f3130a;

    /* renamed from: b */
    public final /* synthetic */ MySubscriptions f3131b;

    public MySubscriptions$b(MySubscriptions mySubscriptions, SkuDetails skuDetails) {
        this.f3131b = mySubscriptions;
        this.f3130a = skuDetails;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MySubscriptions.K(this.f3131b).v(this.f3131b.getActivity(), this.f3130a, fa1.m1834p());
    }
}
