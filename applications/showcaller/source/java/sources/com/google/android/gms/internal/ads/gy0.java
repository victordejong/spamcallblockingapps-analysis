package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gy0.class */
public final class gy0 extends xw0 {

    /* renamed from: i */
    private final w00 f23739i;

    /* renamed from: j */
    private final Runnable f23740j;

    /* renamed from: k */
    private final Executor f23741k;

    public gy0(wy0 wy0Var, w00 w00Var, Runnable runnable, Executor executor) {
        super(wy0Var);
        this.f23739i = w00Var;
        this.f23740j = runnable;
        this.f23741k = executor;
    }

    @Override // com.google.android.gms.internal.ads.xy0
    /* renamed from: a */
    public final void mo9021a() {
        this.f23741k.execute(new Runnable(this, new Runnable(new AtomicReference(this.f23740j)) { // from class: com.google.android.gms.internal.ads.ey0

            /* renamed from: d */
            private final AtomicReference f22615d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22615d = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable2 = (Runnable) this.f22615d.getAndSet(null);
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        }) { // from class: com.google.android.gms.internal.ads.fy0

            /* renamed from: d */
            private final gy0 f23190d;

            /* renamed from: e */
            private final Runnable f23191e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23190d = this;
                this.f23191e = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f23190d.m14788n(this.f23191e);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: g */
    public final View mo9037g() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: h */
    public final void mo9036h(ViewGroup viewGroup, zzbdl zzbdlVar) {
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: i */
    public final AbstractC6640ju mo9035i() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: j */
    public final hj2 mo9034j() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: k */
    public final hj2 mo9033k() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: l */
    public final int mo9032l() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.xw0
    /* renamed from: m */
    public final void mo9031m() {
    }

    /* renamed from: n */
    public final /* synthetic */ void m14788n(Runnable runnable) {
        try {
            if (this.f23739i.mo9815U(BinderC6255b.m16744m2(runnable))) {
                return;
            }
            runnable.run();
        } catch (RemoteException e) {
            runnable.run();
        }
    }
}
