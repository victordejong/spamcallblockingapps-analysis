package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment$k */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$k.class */
public class ContactFragment$k implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ContactFragment f2938a;

    public ContactFragment$k(ContactFragment contactFragment) {
        this.f2938a = contactFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (ContactFragment.y(this.f2938a) == null || ContactFragment.y(this.f2938a).m876V().f185g == null) {
            return;
        }
        ie1.m1575k(this.f2938a.getActivity(), ContactFragment.y(this.f2938a).m876V().f185g);
    }
}
