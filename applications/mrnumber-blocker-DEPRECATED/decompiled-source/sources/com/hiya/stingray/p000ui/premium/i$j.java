package com.hiya.stingray.p000ui.premium;

import android.content.DialogInterface;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.i$j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/i$j.class */
final class i$j implements DialogInterface.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ i f51f;

    i$j(i iVar) {
        this.f51f = iVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        k.g(dialogInterface, "dialogInterface");
        dialogInterface.dismiss();
        this.f51f.j1().z();
    }
}
