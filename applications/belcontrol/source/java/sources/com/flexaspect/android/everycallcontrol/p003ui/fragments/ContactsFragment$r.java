package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$r */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$r.class */
public class ContactsFragment$r implements View.OnFocusChangeListener {

    /* renamed from: a */
    public final /* synthetic */ ContactsFragment f3006a;

    public ContactsFragment$r(ContactsFragment contactsFragment) {
        this.f3006a = contactsFragment;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (!z) {
            oe1.m1053w(ContactsFragment.U(this.f3006a), this.f3006a.getView());
        }
    }
}
