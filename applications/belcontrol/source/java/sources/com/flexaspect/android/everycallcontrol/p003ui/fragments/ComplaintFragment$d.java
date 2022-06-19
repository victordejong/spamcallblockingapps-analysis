package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ComplaintFragment$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$d.class */
public class ComplaintFragment$d implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ Runnable f2918a;

    public ComplaintFragment$d(ComplaintFragment complaintFragment, Runnable runnable) {
        this.f2918a = runnable;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2918a.run();
    }
}
