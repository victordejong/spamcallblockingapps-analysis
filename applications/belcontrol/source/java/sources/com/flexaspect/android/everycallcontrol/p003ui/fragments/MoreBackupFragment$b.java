package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import android.widget.Toast;
import java.io.File;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.MoreBackupFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$b.class */
public class MoreBackupFragment$b implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ File f3062a;

    /* renamed from: b */
    public final /* synthetic */ MoreBackupFragment f3063b;

    public MoreBackupFragment$b(MoreBackupFragment moreBackupFragment, File file) {
        this.f3063b = moreBackupFragment;
        this.f3062a = file;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Boolean m285e = w71.m285e(this.f3062a);
        Toast.makeText(MoreBackupFragment.F(this.f3063b), m285e == null ? 2131820764 : !m285e.booleanValue() ? 2131820761 : 2131820762, 1).show();
    }
}
