package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.os.Bundle;
import android.view.View;
import p000.a81;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment$j */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$j.class */
public class ContactFragment$j implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ContactFragment f2937a;

    public ContactFragment$j(ContactFragment contactFragment) {
        this.f2937a = contactFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ContactFragment$n contactFragment$n = (ContactFragment$n) view.getTag();
        a81.C0018a c0018a = contactFragment$n != null ? contactFragment$n.f2941a : null;
        view.setPressed(true);
        if (ContactFragment.y(this.f2937a) == null || ContactFragment.y(this.f2937a).m862j0()) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(ContactTNFragment.z, c0018a.m7321a().toString());
        bundle.putLong(ContactTNFragment.y, ContactFragment.y(this.f2937a).f7778d);
        bundle.putInt(ContactTNFragment.x, ContactTNFragment$n.CONTACT.ordinal());
        ContactFragment.z(this.f2937a, ContactTNFragment.class, bundle);
    }
}
