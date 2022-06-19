package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import p000.a81;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$d.class */
public class ContactsFragment$d implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ a81.C0018a[] f2983a;

    /* renamed from: b */
    public final /* synthetic */ ContactsFragment$w f2984b;

    /* renamed from: c */
    public final /* synthetic */ ContactsFragment f2985c;

    public ContactsFragment$d(ContactsFragment contactsFragment, a81.C0018a[] c0018aArr, ContactsFragment$w contactsFragment$w) {
        this.f2985c = contactsFragment;
        this.f2983a = c0018aArr;
        this.f2984b = contactsFragment$w;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        a81.C0018a[] c0018aArr = this.f2983a;
        if (c0018aArr == null) {
            return;
        }
        String c0018a = c0018aArr[i].toString();
        int i2 = ContactsFragment$n.f3002b[this.f2984b.ordinal()];
        if (i2 == 1) {
            ContactsFragment.J(this.f2985c, c0018a);
        } else if (i2 == 2) {
            ContactsFragment.K(this.f2985c, c0018a);
        } else if (i2 != 3) {
        } else {
            ContactsFragment.L(this.f2985c, c0018a);
        }
    }
}
