package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import android.database.Cursor;
import android.widget.Toast;
import java.util.EnumSet;
import p000.q71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$h */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$h.class */
public class ContactsFragment$h implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f2988a;

    /* renamed from: b */
    public final /* synthetic */ ContactsFragment f2989b;

    public ContactsFragment$h(ContactsFragment contactsFragment, int i) {
        this.f2989b = contactsFragment;
        this.f2988a = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        boolean z;
        Cursor cursor = (Cursor) this.f2989b.k().getItem(this.f2988a);
        boolean z2 = false;
        try {
            if (cursor.getInt(cursor.getColumnIndex(q81.f7775g0)) > 0) {
                z2 = true;
            }
        } catch (Throwable th) {
            j91.m1505k(this, "Unable get pseudo column");
        }
        if (z2) {
            q81 q81Var = new q81();
            q81Var.m881Q(cursor);
            q81Var.m373n(q81Var.mo63a());
            q81 q81Var2 = q81Var;
            q81Var2.f7783k = q71.EnumC1620g.UNSPECIFIED;
            q81Var2.f7781h = EnumSet.noneOf(q71.EnumC1618e.class);
            z = q81Var2.mo148z();
        } else {
            x81 x81Var = new x81();
            x81Var.m164I(cursor);
            z = x81Var.mo149d();
        }
        if (z) {
            Toast.makeText(ContactsFragment.N(this.f2989b), 2131821251, 1).show();
            ContactsFragment.I(this.f2989b);
        }
        dialogInterface.cancel();
    }
}
