package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.graphics.drawable.Drawable;
import android.text.Html;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$v */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$v.class */
public class ContactsFragment$v implements Html.ImageGetter {

    /* renamed from: a */
    public final /* synthetic */ ContactsFragment f3008a;

    public ContactsFragment$v(ContactsFragment contactsFragment) {
        this.f3008a = contactsFragment;
    }

    @Override // android.text.Html.ImageGetter
    public Drawable getDrawable(String str) {
        Drawable drawable = ContactsFragment.Y(this.f3008a).getResources().getDrawable(2131231176);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        return drawable;
    }
}
