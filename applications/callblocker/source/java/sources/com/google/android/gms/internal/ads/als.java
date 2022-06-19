package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/als.class */
public final class als extends akk {

    /* renamed from: c */
    private final AbstractC3008dp f9959c;

    /* renamed from: d */
    private final Runnable f9960d;

    /* renamed from: e */
    private final Executor f9961e;

    public als(amk amkVar, AbstractC3008dp abstractC3008dp, Runnable runnable, Executor executor) {
        super(amkVar);
        this.f9959c = abstractC3008dp;
        this.f9960d = runnable;
        this.f9961e = executor;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: a */
    public final View mo12962a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: a */
    public final void mo12961a(ViewGroup viewGroup, dyd dydVar) {
    }

    /* renamed from: a */
    public final /* synthetic */ void m12960a(Runnable runnable) {
        try {
            if (this.f9959c.mo8830a(BinderC2734b.m13794a(runnable))) {
                return;
            }
            runnable.run();
        } catch (RemoteException e) {
            runnable.run();
        }
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: b */
    public final eba mo12959b() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: c */
    public final cgq mo12958c() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: d */
    public final cgq mo12957d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: e */
    public final int mo12956e() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.akk
    /* renamed from: f */
    public final void mo12955f() {
    }

    @Override // com.google.android.gms.internal.ads.amh
    /* renamed from: g_ */
    public final void mo12299g_() {
        this.f9961e.execute(new Runnable(this, new Runnable(new AtomicReference(this.f9960d)) { // from class: com.google.android.gms.internal.ads.alr

            /* renamed from: a */
            private final AtomicReference f9958a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9958a = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable2 = (Runnable) this.f9958a.getAndSet(null);
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        }) { // from class: com.google.android.gms.internal.ads.alu

            /* renamed from: a */
            private final als f9962a;

            /* renamed from: b */
            private final Runnable f9963b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9962a = this;
                this.f9963b = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9962a.m12960a(this.f9963b);
            }
        });
    }
}
