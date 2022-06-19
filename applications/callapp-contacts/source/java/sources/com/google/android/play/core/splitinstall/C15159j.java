package com.google.android.play.core.splitinstall;

import android.os.RemoteException;
import com.google.android.play.core.internal.AbstractC15020ak;
import com.google.android.play.core.internal.AbstractRunnableC15073i;
import com.google.android.play.core.internal.C15072h;
import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.splitinstall.j */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/j.class */
public final class C15159j extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ int f54971a;

    /* renamed from: b */
    final /* synthetic */ C15192p f54972b;

    /* renamed from: c */
    final /* synthetic */ C15164n f54973c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15159j(C15164n c15164n, C15192p c15192p, int i, C15192p c15192p2) {
        super(c15192p);
        this.f54973c = c15164n;
        this.f54971a = i;
        this.f54972b = c15192p2;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        C15072h c15072h;
        String str;
        try {
            AbstractC15020ak abstractC15020ak = this.f54973c.f54980a.f54792e;
            str = this.f54973c.f54981d;
            abstractC15020ak.mo9589a(str, this.f54971a, new BinderC15160k(this.f54973c, this.f54972b));
        } catch (RemoteException e) {
            c15072h = C15164n.f54978b;
            c15072h.m9510a(e, "getSessionState(%d)", Integer.valueOf(this.f54971a));
            this.f54972b.m9322b(new RuntimeException(e));
        }
    }
}
