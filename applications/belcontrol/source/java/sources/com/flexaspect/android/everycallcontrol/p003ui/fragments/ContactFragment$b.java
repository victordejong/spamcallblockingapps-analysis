package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$b.class */
public class ContactFragment$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ContactFragment f2927a;

    public ContactFragment$b(ContactFragment contactFragment) {
        this.f2927a = contactFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ContactFragment contactFragment = this.f2927a;
        contactFragment.g.openContextMenu(contactFragment.h);
    }
}
