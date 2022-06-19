package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.widget.CompoundButton;
import java.util.EnumSet;
import p000.q71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactTNFragment$l */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$l.class */
public class ContactTNFragment$l implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CompoundButton f2962a;

    /* renamed from: b */
    public final /* synthetic */ CompoundButton f2963b;

    /* renamed from: c */
    public final /* synthetic */ CompoundButton f2964c;

    /* renamed from: d */
    public final /* synthetic */ ContactTNFragment f2965d;

    public ContactTNFragment$l(ContactTNFragment contactTNFragment, CompoundButton compoundButton, CompoundButton compoundButton2, CompoundButton compoundButton3) {
        this.f2965d = contactTNFragment;
        this.f2962a = compoundButton;
        this.f2963b = compoundButton2;
        this.f2964c = compoundButton3;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.f2962a.isChecked() && ContactTNFragment.N(this.f2965d)) {
            this.f2962a.setChecked(false);
            ContactTNFragment.A(this.f2965d, new x81(ContactTNFragment.O(this.f2965d)));
            this.f2965d.V();
            oe1.m1064q0(ContactTNFragment.z(this.f2965d), "ALLOWED_LIST_FULL");
            return;
        }
        ContactTNFragment.y(this.f2965d).f8639j = EnumSet.allOf(q71.EnumC1618e.class);
        ContactTNFragment.y(this.f2965d).f8641l = this.f2962a.isChecked() ? q71.EnumC1620g.WHITE_LIST : q71.EnumC1620g.UNSPECIFIED;
        this.f2963b.setChecked(false);
        this.f2964c.setChecked(false);
        ContactTNFragment.B(this.f2965d);
    }
}
