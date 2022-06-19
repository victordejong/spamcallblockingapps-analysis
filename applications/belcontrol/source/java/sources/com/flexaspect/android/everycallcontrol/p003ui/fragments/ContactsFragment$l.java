package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.app.AlertDialog;
import android.view.KeyEvent;
import android.widget.TextView;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$l */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$l.class */
public class ContactsFragment$l implements TextView.OnEditorActionListener {

    /* renamed from: a */
    public final /* synthetic */ AlertDialog f2998a;

    public ContactsFragment$l(ContactsFragment contactsFragment, AlertDialog alertDialog) {
        this.f2998a = alertDialog;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean z;
        if (i == 6) {
            this.f2998a.getButton(-3).performClick();
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
