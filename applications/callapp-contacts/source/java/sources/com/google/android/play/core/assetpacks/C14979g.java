package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC15060bx;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.assetpacks.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/g.class */
final class C14979g extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ int f54665a;

    /* renamed from: b */
    final /* synthetic */ C15192p f54666b;

    /* renamed from: c */
    final /* synthetic */ C14989p f54667c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14979g(C14989p c14989p, C15192p c15192p, int i, C15192p c15192p2) {
        super(c15192p);
        this.f54667c = c14989p;
        this.f54665a = i;
        this.f54666b = c15192p2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        C15082r c15082r;
        String str;
        Bundle m9678c;
        Bundle m9672e;
        try {
            c15082r = this.f54667c.f54692e;
            AbstractC15060bx abstractC15060bx = (AbstractC15060bx) c15082r.f54792e;
            str = this.f54667c.f54690c;
            m9678c = C14989p.m9678c(this.f54665a);
            m9672e = C14989p.m9672e();
            abstractC15060bx.mo9536c(str, m9678c, m9672e, new BinderC14983k(this.f54667c, this.f54666b, (int[]) null));
        } catch (RemoteException e) {
            c15072h = C14989p.f54688a;
            c15072h.m9510a(e, "notifySessionFailed", new Object[0]);
        }
    }
}
