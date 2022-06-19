package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import p000.q71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$c.class */
public class ContactsFragment$c implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ q71.EnumC1620g f2979a;

    /* renamed from: b */
    public final /* synthetic */ i91 f2980b;

    /* renamed from: c */
    public final /* synthetic */ String f2981c;

    /* renamed from: d */
    public final /* synthetic */ ContactsFragment f2982d;

    public ContactsFragment$c(ContactsFragment contactsFragment, q71.EnumC1620g enumC1620g, i91 i91Var, String str) {
        this.f2982d = contactsFragment;
        this.f2979a = enumC1620g;
        this.f2980b = i91Var;
        this.f2981c = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ContactsFragment.H(this.f2982d, this.f2979a, this.f2980b.toString(), this.f2981c, Boolean.TRUE);
        ContactsFragment.I(this.f2982d);
    }
}
