package com.google.android.play.core.appupdate;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC15055bs;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.appupdate.n */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/n.class */
final class C14886n extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ C15192p f54321a;

    /* renamed from: b */
    final /* synthetic */ String f54322b;

    /* renamed from: c */
    final /* synthetic */ C14890r f54323c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14886n(C14890r c14890r, C15192p c15192p, C15192p c15192p2, String str) {
        super(c15192p);
        this.f54323c = c14890r;
        this.f54321a = c15192p2;
        this.f54322b = str;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        String str;
        Bundle m9813d;
        try {
            AbstractC15055bs abstractC15055bs = this.f54323c.f54331b.f54792e;
            str = this.f54323c.f54332d;
            m9813d = C14890r.m9813d();
            abstractC15055bs.mo9545b(str, m9813d, new BinderC14888p(this.f54323c, this.f54321a));
        } catch (RemoteException e) {
            c15072h = C14890r.f54329a;
            c15072h.m9510a(e, "completeUpdate(%s)", this.f54322b);
            this.f54321a.m9322b(new RuntimeException(e));
        }
    }
}
