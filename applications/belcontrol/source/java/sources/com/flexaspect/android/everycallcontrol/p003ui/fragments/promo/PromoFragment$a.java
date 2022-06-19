package com.flexaspect.android.everycallcontrol.p003ui.fragments.promo;

import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.promo.PromoFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/promo/PromoFragment$a.class */
public class PromoFragment$a extends ClickableSpan {

    /* renamed from: a */
    public final /* synthetic */ PromoFragment f3125a;

    public PromoFragment$a(PromoFragment promoFragment) {
        this.f3125a = promoFragment;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        PromoFragment.J(this.f3125a).show();
    }
}
