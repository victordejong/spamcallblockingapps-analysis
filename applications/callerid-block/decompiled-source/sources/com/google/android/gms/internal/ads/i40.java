package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/i40.class */
public final class i40 {

    /* renamed from: a */
    private final Executor f6792a;

    /* renamed from: b */
    private final ScheduledExecutorService f6793b;

    /* renamed from: c */
    private final rz1<b40> f6794c;

    /* renamed from: d */
    private volatile boolean f6795d = true;

    public i40(Executor executor, ScheduledExecutorService scheduledExecutorService, rz1<b40> rz1Var) {
        this.f6792a = executor;
        this.f6793b = scheduledExecutorService;
        this.f6794c = rz1Var;
    }

    /* renamed from: e */
    static /* synthetic */ void m7199e(i40 i40Var, List list, final gz1 gz1Var) {
        if (list == null || list.isEmpty()) {
            i40Var.f6792a.execute(new Runnable(gz1Var) { // from class: com.google.android.gms.internal.ads.c40

                /* renamed from: b */
                private final gz1 f6250b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6250b = gz1Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f6250b.m7334a(new zzcql(3));
                }
            });
            return;
        }
        rz1 a = kz1.a((Object) null);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a = kz1.h(kz1.f(a, Throwable.class, new d40(gz1Var), i40Var.f6792a), new e40(i40Var, gz1Var, (rz1) it.next()), i40Var.f6792a);
        }
        kz1.o(a, new h40(i40Var, gz1Var), i40Var.f6792a);
    }

    /* renamed from: a */
    public final void m7203a(gz1<u30> gz1Var) {
        kz1.o(this.f6794c, new g40(this, gz1Var), this.f6792a);
    }

    /* renamed from: b */
    public final boolean m7202b() {
        return this.f6795d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ void m7201c() {
        this.f6795d = false;
    }

    /* renamed from: d */
    final /* synthetic */ rz1 m7200d(gz1 gz1Var, rz1 rz1Var, u30 u30Var) {
        if (u30Var != null) {
            gz1Var.m7333b(u30Var);
        }
        return kz1.g(rz1Var, C1829l5.f7092a.m6222e().longValue(), TimeUnit.MILLISECONDS, this.f6793b);
    }
}
