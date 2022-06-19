package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.MoreBackupFragment$e */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$e.class */
public class MoreBackupFragment$e implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ String f3068a;

    /* renamed from: b */
    public final /* synthetic */ MoreBackupFragment f3069b;

    public MoreBackupFragment$e(MoreBackupFragment moreBackupFragment, String str) {
        this.f3069b = moreBackupFragment;
        this.f3068a = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MoreBackupFragment.H(this.f3069b, this.f3068a, false);
    }
}
