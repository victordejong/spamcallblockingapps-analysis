package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import p000.q71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactTNFragment$j */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$j.class */
public class ContactTNFragment$j implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final /* synthetic */ ContactTNFragment f2960a;

    public ContactTNFragment$j(ContactTNFragment contactTNFragment) {
        this.f2960a = contactTNFragment;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        dialogInterface.cancel();
        ContactTNFragment.L(this.f2960a, q71.EnumC1614a.DEFAULT);
        ContactTNFragment.M(this.f2960a);
    }
}
