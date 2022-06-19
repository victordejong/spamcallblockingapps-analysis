package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.TextView;
import p000.q71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$j */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$j.class */
public class ContactsFragment$j implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ EditText f2991a;

    /* renamed from: b */
    public final /* synthetic */ EditText f2992b;

    /* renamed from: c */
    public final /* synthetic */ TextView f2993c;

    /* renamed from: d */
    public final /* synthetic */ int f2994d;

    /* renamed from: f */
    public final /* synthetic */ ContactsFragment f2995f;

    public ContactsFragment$j(ContactsFragment contactsFragment, EditText editText, EditText editText2, TextView textView, int i) {
        this.f2995f = contactsFragment;
        this.f2991a = editText;
        this.f2992b = editText2;
        this.f2993c = textView;
        this.f2994d = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        EditText editText = this.f2991a;
        if (editText == null || editText.getText() == null || !this.f2995f.isAdded()) {
            return;
        }
        String trim = this.f2991a.getText().toString().trim();
        String obj = this.f2992b.getText().toString();
        if (TextUtils.isEmpty(trim) && (textView3 = this.f2993c) != null) {
            textView3.setText(ContactsFragment.O(this.f2995f).getResources().getString(2131821298));
            this.f2993c.setVisibility(0);
            return;
        }
        this.f2993c.setVisibility(8);
        int i2 = this.f2994d;
        if (i2 == 2131822367) {
            if (!ContactsFragment.H(this.f2995f, q71.EnumC1620g.BLACK_LIST, trim, obj, (Boolean) null) && (textView2 = this.f2993c) != null) {
                textView2.setText(ContactsFragment.P(this.f2995f).getResources().getString(2131821309));
                this.f2993c.setVisibility(0);
                return;
            }
            ContactsFragment.Z(this.f2995f).setText("");
            ContactsFragment.F(this.f2995f, true);
            ContactsFragment.G(this.f2995f);
            dialogInterface.cancel();
        } else if (i2 != 2131822372) {
        } else {
            if (!ContactsFragment.H(this.f2995f, q71.EnumC1620g.WHITE_LIST, trim, obj, (Boolean) null) && (textView = this.f2993c) != null) {
                textView.setText(ContactsFragment.Q(this.f2995f).getResources().getString(2131821309));
                this.f2993c.setVisibility(0);
                return;
            }
            ContactsFragment.Z(this.f2995f).setText("");
            ContactsFragment.I(this.f2995f);
            dialogInterface.cancel();
        }
    }
}
