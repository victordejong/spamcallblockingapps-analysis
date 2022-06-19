package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactTNFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$b.class */
public class ContactTNFragment$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ View f2948a;

    /* renamed from: b */
    public final /* synthetic */ ContactTNFragment f2949b;

    public ContactTNFragment$b(ContactTNFragment contactTNFragment, View view) {
        this.f2949b = contactTNFragment;
        this.f2948a = view;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ContactTNFragment.F(this.f2949b).openContextMenu(this.f2948a.findViewById(2131361963));
    }
}
