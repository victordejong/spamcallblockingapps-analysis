package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$i */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$i.class */
public class ContactsFragment$i implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ContactsFragment f2990a;

    public ContactsFragment$i(ContactsFragment contactsFragment) {
        this.f2990a = contactsFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ContactsFragment.Z(this.f2990a).setText("");
    }
}
