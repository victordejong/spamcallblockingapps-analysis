package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.MoreBackupFragment$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$d.class */
public class MoreBackupFragment$d implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ String f3066a;

    /* renamed from: b */
    public final /* synthetic */ MoreBackupFragment f3067b;

    public MoreBackupFragment$d(MoreBackupFragment moreBackupFragment, String str) {
        this.f3067b = moreBackupFragment;
        this.f3066a = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MoreBackupFragment.H(this.f3067b, this.f3066a, true);
    }
}
