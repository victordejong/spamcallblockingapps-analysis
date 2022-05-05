package com.hiya.stingray.p000ui.premium;

import android.content.DialogInterface;
import kotlin.w.b.a;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.b0$g$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/b0$g$a.class */
final class b0$g$a implements DialogInterface.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ a f39f;

    b0$g$a(a aVar) {
        this.f39f = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        k.g(dialogInterface, "dialogInterface");
        this.f39f.invoke();
        dialogInterface.dismiss();
    }
}
