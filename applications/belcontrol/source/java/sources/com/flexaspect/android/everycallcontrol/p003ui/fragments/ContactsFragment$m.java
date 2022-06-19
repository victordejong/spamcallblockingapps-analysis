package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$m */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$m.class */
public class ContactsFragment$m implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ DialogInterface.OnClickListener f2999a;

    /* renamed from: b */
    public final /* synthetic */ AlertDialog f3000b;

    public ContactsFragment$m(ContactsFragment contactsFragment, DialogInterface.OnClickListener onClickListener, AlertDialog alertDialog) {
        this.f2999a = onClickListener;
        this.f3000b = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2999a.onClick(this.f3000b, -3);
    }
}
