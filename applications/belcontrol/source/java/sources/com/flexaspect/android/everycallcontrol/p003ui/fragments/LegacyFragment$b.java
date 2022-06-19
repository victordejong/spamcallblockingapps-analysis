package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
import com.flexaspect.android.everycallcontrol.ui.fragments.purchase.mypurchase.MySubscriptions;
import p000.r71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.LegacyFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$b.class */
public class LegacyFragment$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ LegacyFragment f3034a;

    public LegacyFragment$b(LegacyFragment legacyFragment) {
        this.f3034a = legacyFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!r71.EnumC1638a.f7909M0.m695a() || r71.EnumC1638a.f7913O0.m695a()) {
            LegacyFragment.H(this.f3034a).m4324r(this, MySubscriptions.class, null);
        }
    }
}
