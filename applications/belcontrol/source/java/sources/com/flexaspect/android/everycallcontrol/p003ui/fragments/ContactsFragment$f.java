package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import android.database.Cursor;
import android.widget.Toast;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$f */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$f.class */
public class ContactsFragment$f implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f2986a;

    /* renamed from: b */
    public final /* synthetic */ ContactsFragment f2987b;

    public ContactsFragment$f(ContactsFragment contactsFragment, int i) {
        this.f2987b = contactsFragment;
        this.f2986a = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        q81 q81Var = new q81();
        q81Var.m881Q((Cursor) this.f2987b.k().getItem(this.f2986a));
        try {
            fa1.m1840j().getContentResolver().delete(q81Var.m876V().f185g, "_id = ?", new String[]{String.valueOf(q81Var.m876V().f179a)});
        } catch (Throwable th) {
        }
        if (q81Var.mo149d()) {
            aa1.m7300l();
            Toast.makeText(ContactsFragment.M(this.f2987b), 2131821251, 1).show();
            ContactsFragment.I(this.f2987b);
        }
        dialogInterface.cancel();
    }
}
