package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.widget.CompoundButton;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$a.class */
public class ContactFragment$a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ ContactFragment f2926a;

    public ContactFragment$a(ContactFragment contactFragment) {
        this.f2926a = contactFragment;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x008d, code lost:
        if (com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.A(r4.f2926a).isChecked() != false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ad  */
    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCheckedChanged(android.widget.CompoundButton r5, boolean r6) {
        /*
            r4 = this;
            r0 = r4
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2926a
            q81 r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.y(r0)
            java.util.EnumSet<q71$e> r0 = r0.f7781h
            r7 = r0
            r0 = r4
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2926a
            android.widget.CompoundButton r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.D(r0)
            r5 = r0
            r0 = 1
            r8 = r0
            r0 = r6
            if (r0 != 0) goto L2d
            r0 = r4
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2926a
            android.widget.CompoundButton r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.A(r0)
            boolean r0 = r0.isChecked()
            if (r0 != 0) goto L2d
            r0 = 1
            r9 = r0
            goto L30
        L2d:
            r0 = 0
            r9 = r0
        L30:
            r0 = r5
            r1 = r9
            r0.setEnabled(r1)
            r0 = r6
            if (r0 == 0) goto L5e
            r0 = r7
            q71$e r1 = p000.q71.EnumC1618e.SMS
            q71$e r2 = p000.q71.EnumC1618e.MMS
            java.util.EnumSet r1 = java.util.EnumSet.of(r1, r2)
            boolean r0 = r0.addAll(r1)
        L48:
            r0 = r4
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2926a
            q81 r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.y(r0)
            r10 = r0
            q71$g r0 = p000.q71.EnumC1620g.BLACK_LIST
            r5 = r0
        L55:
            r0 = r10
            r1 = r5
            r0.f7783k = r1
            goto L93
        L5e:
            r0 = r7
            q71$e r1 = p000.q71.EnumC1618e.SMS
            q71$e r2 = p000.q71.EnumC1618e.MMS
            java.util.EnumSet r1 = java.util.EnumSet.of(r1, r2)
            boolean r0 = r0.removeAll(r1)
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L83
            r0 = r4
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2926a
            q81 r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.y(r0)
            r10 = r0
            q71$g r0 = p000.q71.EnumC1620g.UNSPECIFIED
            r5 = r0
            goto L55
        L83:
            r0 = r4
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2926a
            android.widget.CompoundButton r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.A(r0)
            boolean r0 = r0.isChecked()
            if (r0 == 0) goto L93
            goto L48
        L93:
            r0 = r4
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2926a
            q81 r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.y(r0)
            r1 = r7
            r0.f7781h = r1
            r0 = r4
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2926a
            r5 = r0
            r0 = r8
            r6 = r0
            r0 = r5
            boolean r0 = r0.w
            if (r0 != 0) goto Lc5
            r0 = r5
            q81 r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.y(r0)
            q71$g r0 = r0.f7783k
            q71$g r1 = p000.q71.EnumC1620g.BLACK_LIST
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lc3
            r0 = r8
            r6 = r0
            goto Lc5
        Lc3:
            r0 = 0
            r6 = r0
        Lc5:
            r0 = r5
            r1 = r6
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.C(r0, r1)
            r0 = r4
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2926a
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.E(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flexaspect.android.everycallcontrol.p003ui.fragments.ContactFragment$a.onCheckedChanged(android.widget.CompoundButton, boolean):void");
    }
}
