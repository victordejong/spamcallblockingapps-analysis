package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.widget.CompoundButton;
import java.util.EnumSet;
import p000.q71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactTNFragment$m */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m.class */
public class ContactTNFragment$m implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CompoundButton f2966a;

    /* renamed from: b */
    public final /* synthetic */ CompoundButton f2967b;

    /* renamed from: c */
    public final /* synthetic */ ContactTNFragment f2968c;

    public ContactTNFragment$m(ContactTNFragment contactTNFragment, CompoundButton compoundButton, CompoundButton compoundButton2) {
        this.f2968c = contactTNFragment;
        this.f2966a = compoundButton;
        this.f2967b = compoundButton2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.f2966a.isChecked() && ContactTNFragment.C(this.f2968c)) {
            this.f2966a.setChecked(false);
            ContactTNFragment.A(this.f2968c, new x81(ContactTNFragment.O(this.f2968c)));
            this.f2968c.V();
            oe1.m1066p0(ContactTNFragment.D(this.f2968c), "BLOCKED_LIST_FULL");
            return;
        }
        q71.EnumC1620g enumC1620g = ContactTNFragment.y(this.f2968c).f8641l;
        q71.EnumC1620g enumC1620g2 = q71.EnumC1620g.BLACK_LIST;
        if (enumC1620g != enumC1620g2) {
            ContactTNFragment.y(this.f2968c).f8639j.removeAll(EnumSet.allOf(q71.EnumC1618e.class));
        }
        if (this.f2966a.isChecked()) {
            ContactTNFragment.y(this.f2968c).f8639j.add(q71.EnumC1618e.CALL);
        } else {
            ContactTNFragment.y(this.f2968c).f8639j.remove(q71.EnumC1618e.CALL);
        }
        x81 y = ContactTNFragment.y(this.f2968c);
        if (ContactTNFragment.y(this.f2968c).f8639j.isEmpty()) {
            enumC1620g2 = q71.EnumC1620g.UNSPECIFIED;
        }
        y.f8641l = enumC1620g2;
        this.f2967b.setChecked(false);
        ContactTNFragment.B(this.f2968c);
    }
}
