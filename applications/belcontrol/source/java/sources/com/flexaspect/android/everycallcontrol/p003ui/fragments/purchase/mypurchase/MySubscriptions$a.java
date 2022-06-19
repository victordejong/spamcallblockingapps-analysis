package com.flexaspect.android.everycallcontrol.p003ui.fragments.purchase.mypurchase;

import android.view.View;
import com.kedlin.cca.core.util.billing.SkuDetails;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.purchase.mypurchase.MySubscriptions$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions$a.class */
public class MySubscriptions$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ SkuDetails f3128a;

    /* renamed from: b */
    public final /* synthetic */ MySubscriptions f3129b;

    public MySubscriptions$a(MySubscriptions mySubscriptions, SkuDetails skuDetails) {
        this.f3129b = mySubscriptions;
        this.f3128a = skuDetails;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MySubscriptions.J(this.f3129b).v(this.f3129b.getActivity(), this.f3128a, fa1.m1834p());
    }
}
