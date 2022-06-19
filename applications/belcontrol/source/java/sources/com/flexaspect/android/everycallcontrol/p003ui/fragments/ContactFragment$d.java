package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import android.view.View;
import android.widget.TextView;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$d.class */
public class ContactFragment$d implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ContactFragment f2928a;

    public ContactFragment$d(ContactFragment contactFragment) {
        this.f2928a = contactFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        oe1.m1101W(true);
        ContactFragment.y(this.f2928a).f7782j = ContactFragment.F(this.f2928a);
        View view = this.f2928a.getView();
        if (view != null) {
            ((TextView) view.findViewById(2131362562)).setText(ContactFragment.y(this.f2928a).f7782j.m913c().intValue());
        }
    }
}
