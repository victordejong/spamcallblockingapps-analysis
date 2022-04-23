package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.d;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/amx.class */
public final class amx extends alq {

    /* renamed from: a  reason: collision with root package name */
    final fn f23601a;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f23602b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f23603c;

    public amx(ans ansVar, fn fnVar, Runnable runnable, Executor executor) {
        super(ansVar);
        this.f23601a = fnVar;
        this.f23602b = runnable;
        this.f23603c = executor;
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final void a(ViewGroup viewGroup, zzvt zzvtVar) {
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final View b() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final emk c() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final coy d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final coy e() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final int f() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.alq
    public final void g() {
    }

    @Override // com.google.android.gms.internal.ads.anp
    public final void h() {
        final AtomicReference atomicReference = new AtomicReference(this.f23602b);
        final Runnable anaVar = new Runnable(atomicReference) { // from class: com.google.android.gms.internal.ads.ana

            /* renamed from: a  reason: collision with root package name */
            private final AtomicReference f23607a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23607a = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable = (Runnable) this.f23607a.getAndSet(null);
                if (runnable != null) {
                    runnable.run();
                }
            }
        };
        this.f23603c.execute(new Runnable(this, anaVar) { // from class: com.google.android.gms.internal.ads.amz

            /* renamed from: a  reason: collision with root package name */
            private final amx f23605a;

            /* renamed from: b  reason: collision with root package name */
            private final Runnable f23606b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23605a = this;
                this.f23606b = anaVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                amx amxVar = this.f23605a;
                Runnable runnable = this.f23606b;
                try {
                    if (!amxVar.f23601a.a(d.a(runnable))) {
                        runnable.run();
                    }
                } catch (RemoteException e) {
                    runnable.run();
                }
            }
        });
    }
}
