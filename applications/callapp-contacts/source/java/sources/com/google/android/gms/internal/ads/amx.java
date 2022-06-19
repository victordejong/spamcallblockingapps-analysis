package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/amx.class */
public final class amx extends alq {

    /* renamed from: a */
    final AbstractC12558fn f42448a;

    /* renamed from: b */
    private final Runnable f42449b;

    /* renamed from: c */
    private final Executor f42450c;

    public amx(ans ansVar, AbstractC12558fn abstractC12558fn, Runnable runnable, Executor executor) {
        super(ansVar);
        this.f42448a = abstractC12558fn;
        this.f42449b = runnable;
        this.f42450c = executor;
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: a */
    public final void mo18546a(ViewGroup viewGroup, zzvt zzvtVar) {
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: b */
    public final View mo18545b() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: c */
    public final emk mo18544c() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: d */
    public final coy mo18543d() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: e */
    public final coy mo18542e() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: f */
    public final int mo18541f() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.alq
    /* renamed from: g */
    public final void mo18540g() {
    }

    @Override // com.google.android.gms.internal.ads.anp
    /* renamed from: h */
    public final void mo18208h() {
        this.f42450c.execute(new Runnable(this, new Runnable(new AtomicReference(this.f42449b)) { // from class: com.google.android.gms.internal.ads.ana

            /* renamed from: a */
            private final AtomicReference f42454a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f42454a = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable2 = (Runnable) this.f42454a.getAndSet(null);
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        }) { // from class: com.google.android.gms.internal.ads.amz

            /* renamed from: a */
            private final amx f42452a;

            /* renamed from: b */
            private final Runnable f42453b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f42452a = this;
                this.f42453b = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                amx amxVar = this.f42452a;
                Runnable runnable2 = this.f42453b;
                try {
                    if (amxVar.f42448a.mo14020a(BinderC12129d.m18979a(runnable2))) {
                        return;
                    }
                    runnable2.run();
                } catch (RemoteException e) {
                    runnable2.run();
                }
            }
        });
    }
}
