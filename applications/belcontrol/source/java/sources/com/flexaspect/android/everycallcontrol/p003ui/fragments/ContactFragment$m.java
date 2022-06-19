package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.widget.CompoundButton;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment$m */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$m.class */
public class ContactFragment$m implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ ContactFragment f2940a;

    public ContactFragment$m(ContactFragment contactFragment) {
        this.f2940a = contactFragment;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0081, code lost:
        if (com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.B(r3.f2940a).isChecked() != false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a1  */
    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCheckedChanged(android.widget.CompoundButton r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2940a
            q81 r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.y(r0)
            java.util.EnumSet<q71$e> r0 = r0.f7781h
            r6 = r0
            r0 = r3
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2940a
            android.widget.CompoundButton r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.D(r0)
            r4 = r0
            r0 = 1
            r7 = r0
            r0 = r5
            if (r0 != 0) goto L2d
            r0 = r3
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2940a
            android.widget.CompoundButton r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.B(r0)
            boolean r0 = r0.isChecked()
            if (r0 != 0) goto L2d
            r0 = 1
            r8 = r0
            goto L30
        L2d:
            r0 = 0
            r8 = r0
        L30:
            r0 = r4
            r1 = r8
            r0.setEnabled(r1)
            r0 = r5
            if (r0 == 0) goto L58
            r0 = r6
            q71$e r1 = p000.q71.EnumC1618e.CALL
            boolean r0 = r0.add(r1)
        L42:
            r0 = r3
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2940a
            q81 r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.y(r0)
            r4 = r0
            q71$g r0 = p000.q71.EnumC1620g.BLACK_LIST
            r9 = r0
        L4f:
            r0 = r4
            r1 = r9
            r0.f7783k = r1
            goto L87
        L58:
            r0 = r6
            q71$e r1 = p000.q71.EnumC1618e.CALL
            boolean r0 = r0.remove(r1)
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L77
            r0 = r3
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2940a
            q81 r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.y(r0)
            r4 = r0
            q71$g r0 = p000.q71.EnumC1620g.UNSPECIFIED
            r9 = r0
            goto L4f
        L77:
            r0 = r3
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2940a
            android.widget.CompoundButton r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.B(r0)
            boolean r0 = r0.isChecked()
            if (r0 == 0) goto L87
            goto L42
        L87:
            r0 = r3
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2940a
            q81 r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.y(r0)
            r1 = r6
            r0.f7781h = r1
            r0 = r3
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment r0 = r0.f2940a
            r4 = r0
            r0 = r7
            r5 = r0
            r0 = r4
            boolean r0 = r0.w
            if (r0 != 0) goto Lb9
            r0 = r4
            q81 r0 = com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.y(r0)
            q71$g r0 = r0.f7783k
            q71$g r1 = p000.q71.EnumC1620g.BLACK_LIST
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb7
            r0 = r7
            r5 = r0
            goto Lb9
        Lb7:
            r0 = 0
            r5 = r0
        Lb9:
            r0 = r4
            r1 = r5
            com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment.C(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flexaspect.android.everycallcontrol.p003ui.fragments.ContactFragment$m.onCheckedChanged(android.widget.CompoundButton, boolean):void");
    }
}
