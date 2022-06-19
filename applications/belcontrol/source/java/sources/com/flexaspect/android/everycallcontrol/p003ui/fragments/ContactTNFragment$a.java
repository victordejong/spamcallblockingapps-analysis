package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.widget.CompoundButton;
import java.util.EnumSet;
import p000.q71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactTNFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$a.class */
public class ContactTNFragment$a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CompoundButton f2945a;

    /* renamed from: b */
    public final /* synthetic */ CompoundButton f2946b;

    /* renamed from: c */
    public final /* synthetic */ ContactTNFragment f2947c;

    public ContactTNFragment$a(ContactTNFragment contactTNFragment, CompoundButton compoundButton, CompoundButton compoundButton2) {
        this.f2947c = contactTNFragment;
        this.f2945a = compoundButton;
        this.f2946b = compoundButton2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.f2945a.isChecked() && ContactTNFragment.C(this.f2947c)) {
            this.f2945a.setChecked(false);
            ContactTNFragment.A(this.f2947c, new x81(ContactTNFragment.O(this.f2947c)));
            this.f2947c.V();
            oe1.m1066p0(ContactTNFragment.E(this.f2947c), "BLOCKED_LIST_FULL");
            return;
        }
        q71.EnumC1620g enumC1620g = ContactTNFragment.y(this.f2947c).f8641l;
        q71.EnumC1620g enumC1620g2 = q71.EnumC1620g.BLACK_LIST;
        if (enumC1620g != enumC1620g2) {
            ContactTNFragment.y(this.f2947c).f8639j.removeAll(EnumSet.allOf(q71.EnumC1618e.class));
        }
        if (this.f2945a.isChecked()) {
            ContactTNFragment.y(this.f2947c).f8639j.add(q71.EnumC1618e.SMS);
            ContactTNFragment.y(this.f2947c).f8639j.add(q71.EnumC1618e.MMS);
        } else {
            ContactTNFragment.y(this.f2947c).f8639j.remove(q71.EnumC1618e.SMS);
            ContactTNFragment.y(this.f2947c).f8639j.remove(q71.EnumC1618e.MMS);
        }
        x81 y = ContactTNFragment.y(this.f2947c);
        if (ContactTNFragment.y(this.f2947c).f8639j.isEmpty()) {
            enumC1620g2 = q71.EnumC1620g.UNSPECIFIED;
        }
        y.f8641l = enumC1620g2;
        this.f2946b.setChecked(false);
        ContactTNFragment.B(this.f2947c);
    }
}
