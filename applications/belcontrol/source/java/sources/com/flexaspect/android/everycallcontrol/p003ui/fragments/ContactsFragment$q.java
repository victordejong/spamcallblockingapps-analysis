package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.text.Editable;
import android.text.TextWatcher;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$q */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$q.class */
public class ContactsFragment$q implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ ContactsFragment f3005a;

    public ContactsFragment$q(ContactsFragment contactsFragment) {
        this.f3005a = contactsFragment;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        ContactsFragment.F(this.f3005a, true);
        ContactsFragment.G(this.f3005a);
    }
}
