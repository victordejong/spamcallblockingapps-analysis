package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import p000.sb1;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ComplaintFragment$e */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$e.class */
public class ComplaintFragment$e implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ComplaintFragment f2919a;

    public ComplaintFragment$e(ComplaintFragment complaintFragment) {
        this.f2919a = complaintFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2919a.a(sb1.EnumC1653c.BTN_BACK);
    }
}
