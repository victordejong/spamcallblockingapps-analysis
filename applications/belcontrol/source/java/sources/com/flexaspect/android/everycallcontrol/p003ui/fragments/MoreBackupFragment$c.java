package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import java.util.ArrayList;
import p000.x61;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.MoreBackupFragment$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$c.class */
public class MoreBackupFragment$c implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f3064a;

    /* renamed from: b */
    public final /* synthetic */ MoreBackupFragment f3065b;

    public MoreBackupFragment$c(MoreBackupFragment moreBackupFragment, ArrayList arrayList) {
        this.f3065b = moreBackupFragment;
        this.f3064a = arrayList;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MoreBackupFragment.G(this.f3065b, ((x61.C1719a) this.f3064a.get(i)).f8608a, ((x61.C1719a) this.f3064a.get(i)).f8609b);
    }
}
