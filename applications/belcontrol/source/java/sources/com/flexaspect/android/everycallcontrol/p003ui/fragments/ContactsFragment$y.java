package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.annotation.TargetApi;
import android.view.MenuItem;
import android.widget.PopupMenu;
@TargetApi(11)
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$y */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$y.class */
public class ContactsFragment$y implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ ContactsFragment f3017a;

    public ContactsFragment$y(ContactsFragment contactsFragment) {
        this.f3017a = contactsFragment;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.f3017a.k0(menuItem);
    }
}
