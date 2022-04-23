package com.hiya.stingray.p000ui.userfeedback;

import android.content.DialogInterface;
/* renamed from: com.hiya.stingray.ui.userfeedback.b$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/userfeedback/b$a.class */
class b$a implements DialogInterface.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ AbstractC0070d f151f;

    /* renamed from: g */
    final /* synthetic */ b f152g;

    b$a(b bVar, AbstractC0070d dVar) {
        this.f152g = bVar;
        this.f151f = dVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f151f.m1093V0(b.t1(this.f152g));
    }
}
