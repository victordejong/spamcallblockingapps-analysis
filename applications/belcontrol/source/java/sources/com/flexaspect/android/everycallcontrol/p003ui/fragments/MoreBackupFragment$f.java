package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.MoreBackupFragment$f */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$f.class */
public class MoreBackupFragment$f implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ String f3070a;

    /* renamed from: b */
    public final /* synthetic */ boolean f3071b;

    /* renamed from: c */
    public final /* synthetic */ MoreBackupFragment f3072c;

    public MoreBackupFragment$f(MoreBackupFragment moreBackupFragment, String str, boolean z) {
        this.f3072c = moreBackupFragment;
        this.f3070a = str;
        this.f3071b = z;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MoreBackupFragment.I(this.f3072c, this.f3070a, this.f3071b, true);
    }
}
