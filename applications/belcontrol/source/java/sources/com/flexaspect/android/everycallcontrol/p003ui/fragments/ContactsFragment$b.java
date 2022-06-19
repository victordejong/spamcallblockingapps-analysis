package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import p000.q71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$b.class */
public class ContactsFragment$b implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ q71.EnumC1620g f2975a;

    /* renamed from: b */
    public final /* synthetic */ String f2976b;

    /* renamed from: c */
    public final /* synthetic */ String f2977c;

    /* renamed from: d */
    public final /* synthetic */ ContactsFragment f2978d;

    public ContactsFragment$b(ContactsFragment contactsFragment, q71.EnumC1620g enumC1620g, String str, String str2) {
        this.f2978d = contactsFragment;
        this.f2975a = enumC1620g;
        this.f2976b = str;
        this.f2977c = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ContactsFragment.H(this.f2978d, this.f2975a, this.f2976b, this.f2977c, Boolean.FALSE);
        ContactsFragment.I(this.f2978d);
    }
}
