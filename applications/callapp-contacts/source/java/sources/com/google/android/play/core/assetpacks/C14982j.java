package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC15060bx;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.assetpacks.j */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/j.class */
public final class C14982j extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ C15192p f54676a;

    /* renamed from: b */
    final /* synthetic */ C14989p f54677b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14982j(C14989p c14989p, C15192p c15192p, C15192p c15192p2) {
        super(c15192p);
        this.f54677b = c14989p;
        this.f54676a = c15192p2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        C15082r c15082r;
        String str;
        Bundle m9672e;
        try {
            c15082r = this.f54677b.f54693f;
            AbstractC15060bx abstractC15060bx = (AbstractC15060bx) c15082r.f54792e;
            str = this.f54677b.f54690c;
            m9672e = C14989p.m9672e();
            abstractC15060bx.mo9537b(str, m9672e, new BinderC14987n(this.f54677b, this.f54676a));
        } catch (RemoteException e) {
            c15072h = C14989p.f54688a;
            c15072h.m9510a(e, "keepAlive", new Object[0]);
        }
    }
}
