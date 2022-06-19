package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC15060bx;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.internal.C15082r;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.assetpacks.f */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/f.class */
public final class C14978f extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ int f54660a;

    /* renamed from: b */
    final /* synthetic */ String f54661b;

    /* renamed from: c */
    final /* synthetic */ C15192p f54662c;

    /* renamed from: d */
    final /* synthetic */ int f54663d;

    /* renamed from: e */
    final /* synthetic */ C14989p f54664e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14978f(C14989p c14989p, C15192p c15192p, int i, String str, C15192p c15192p2, int i2) {
        super(c15192p);
        this.f54664e = c14989p;
        this.f54660a = i;
        this.f54661b = str;
        this.f54662c = c15192p2;
        this.f54663d = i2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        C15082r c15082r;
        String str;
        Bundle m9677c;
        Bundle m9672e;
        try {
            c15082r = this.f54664e.f54692e;
            AbstractC15060bx abstractC15060bx = (AbstractC15060bx) c15082r.f54792e;
            str = this.f54664e.f54690c;
            m9677c = C14989p.m9677c(this.f54660a, this.f54661b);
            m9672e = C14989p.m9672e();
            abstractC15060bx.mo9538b(str, m9677c, m9672e, new BinderC14988o(this.f54664e, this.f54662c, this.f54660a, this.f54661b, this.f54663d));
        } catch (RemoteException e) {
            c15072h = C14989p.f54688a;
            c15072h.m9510a(e, "notifyModuleCompleted", new Object[0]);
        }
    }
}
