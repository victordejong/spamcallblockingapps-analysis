package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.app.AlertDialog;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import p000.fa1;
import p000.i91;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactTNFragment$g */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g.class */
public class ContactTNFragment$g implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ EditText f2954a;

    /* renamed from: b */
    public final /* synthetic */ TextView f2955b;

    /* renamed from: c */
    public final /* synthetic */ EditText f2956c;

    /* renamed from: d */
    public final /* synthetic */ AlertDialog f2957d;

    /* renamed from: f */
    public final /* synthetic */ ContactTNFragment f2958f;

    public ContactTNFragment$g(ContactTNFragment contactTNFragment, EditText editText, TextView textView, EditText editText2, AlertDialog alertDialog) {
        this.f2958f = contactTNFragment;
        this.f2954a = editText;
        this.f2955b = textView;
        this.f2956c = editText2;
        this.f2957d = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z;
        String obj = this.f2954a.getText().toString();
        i91 m1800o = fa1.C1420e.m1800o(obj);
        try {
            z = false;
        } catch (Throwable th) {
            j91.m1504l(this, "Operation may not be completed", th);
        }
        if (!TextUtils.isEmpty(obj.trim()) && obj.replaceAll("\\D", "").length() != 0) {
            ContactTNFragment.y(this.f2958f).f8636f = this.f2956c.getText().toString().equals("") ? null : this.f2956c.getText().toString();
            if (!ContactTNFragment.y(this.f2958f).f8637g.m1601m().equals(obj)) {
                i91.EnumC1446b enumC1446b = ContactTNFragment.y(this.f2958f).f8638h;
                i91.EnumC1446b enumC1446b2 = i91.EnumC1446b.FULL;
                if (!enumC1446b.equals(enumC1446b2)) {
                    ContactTNFragment.y(this.f2958f).f8638h = enumC1446b2;
                }
            }
            i91 m1802m = fa1.C1420e.m1802m(obj);
            i91 i91Var = m1800o;
            if (m1802m != null) {
                z = true;
                i91Var = m1802m;
            }
            ContactTNFragment.y(this.f2958f).f8637g = i91Var;
            if (!z && ContactTNFragment.y(this.f2958f).f8638h != null && ContactTNFragment.y(this.f2958f).f8638h == i91.EnumC1446b.AREA_CODE) {
                ContactTNFragment.y(this.f2958f).m157P(fa1.C1420e.m1801n(obj));
            }
            if (z) {
                ContactTNFragment.y(this.f2958f).f8638h = i91.EnumC1446b.ARBITRARY;
                ContactTNFragment.y(this.f2958f).f8637g.m1591w(obj);
            }
            ContactTNFragment.y(this.f2958f).mo148z();
            this.f2958f.V();
            ContactTNFragment contactTNFragment = this.f2958f;
            contactTNFragment.v(contactTNFragment.m837o());
            this.f2957d.dismiss();
            return;
        }
        TextView textView = this.f2955b;
        if (textView != null) {
            textView.setText(this.f2958f.getResources().getString(2131821298));
            this.f2955b.setVisibility(0);
        }
    }
}
