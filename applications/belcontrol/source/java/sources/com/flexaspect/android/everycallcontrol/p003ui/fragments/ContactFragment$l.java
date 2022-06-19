package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.widget.CompoundButton;
import java.util.EnumSet;
import p000.q71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment$l */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$l.class */
public class ContactFragment$l implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ ContactFragment f2939a;

    public ContactFragment$l(ContactFragment contactFragment) {
        this.f2939a = contactFragment;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        boolean z2;
        ContactFragment.A(this.f2939a).setEnabled(!z);
        ContactFragment.B(this.f2939a).setEnabled(!z);
        ContactFragment.y(this.f2939a).f7783k = z ? q71.EnumC1620g.WHITE_LIST : q71.EnumC1620g.UNSPECIFIED;
        ContactFragment.y(this.f2939a).f7781h = z ? EnumSet.allOf(q71.EnumC1618e.class) : EnumSet.noneOf(q71.EnumC1618e.class);
        ContactFragment contactFragment = this.f2939a;
        if (!ContactFragment.y(contactFragment).f7783k.equals(q71.EnumC1620g.WHITE_LIST)) {
            ContactFragment contactFragment2 = this.f2939a;
            if (contactFragment2.w || ContactFragment.y(contactFragment2).f7783k.equals(q71.EnumC1620g.BLACK_LIST)) {
                z2 = true;
                ContactFragment.C(contactFragment, z2);
            }
        }
        z2 = false;
        ContactFragment.C(contactFragment, z2);
    }
}
