package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nz2.class */
abstract class nz2<InputT, OutputT> extends sz2<OutputT> {

    /* renamed from: o */
    private static final Logger f27374o = Logger.getLogger(nz2.class.getName());

    /* renamed from: p */
    private zzfoe<? extends r03<? extends InputT>> f27375p;

    /* renamed from: q */
    private final boolean f27376q;

    /* renamed from: r */
    private final boolean f27377r;

    public nz2(zzfoe<? extends r03<? extends InputT>> zzfoeVar, boolean z, boolean z2) {
        super(zzfoeVar.size());
        this.f27375p = zzfoeVar;
        this.f27376q = z;
        this.f27377r = z2;
    }

    /* renamed from: O */
    private final void m12775O(Throwable th) {
        Objects.requireNonNull(th);
        if (this.f27376q && !mo8631v(th) && m12772R(m10877I(), th)) {
            m12774P(th);
        } else if (!(th instanceof Error)) {
        } else {
            m12774P(th);
        }
    }

    /* renamed from: P */
    private static void m12774P(Throwable th) {
        f27374o.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != (th instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Q */
    public final void m12773Q(int i, Future<? extends InputT> future) {
        try {
            mo8643W(i, k03.m13987q(future));
        } catch (ExecutionException e) {
            m12775O(e.getCause());
        } catch (Throwable th) {
            m12775O(th);
        }
    }

    /* renamed from: R */
    private static boolean m12772R(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    /* renamed from: V */
    public static /* synthetic */ void m12768V(nz2 nz2Var, zzfoe zzfoeVar) {
        int m10876J = nz2Var.m10876J();
        int i = 0;
        xu2.m9055b(m10876J >= 0, "Less than 0 remaining futures");
        if (m10876J == 0) {
            if (zzfoeVar != null) {
                jy2 it = zzfoeVar.iterator();
                while (it.hasNext()) {
                    Future<? extends InputT> future = (Future) it.next();
                    if (!future.isCancelled()) {
                        nz2Var.m12773Q(i, future);
                    }
                    i++;
                }
            }
            nz2Var.m10875K();
            nz2Var.mo8645M();
            nz2Var.mo8644N(2);
        }
    }

    @Override // com.google.android.gms.internal.ads.sz2
    /* renamed from: L */
    final void mo10874L(Set<Throwable> set) {
        Objects.requireNonNull(set);
        if (!isCancelled()) {
            Throwable mo14997a = mo14997a();
            mo14997a.getClass();
            m12772R(set, mo14997a);
        }
    }

    /* renamed from: M */
    abstract void mo8645M();

    /* renamed from: N */
    public void mo8644N(int i) {
        this.f27375p = null;
    }

    /* renamed from: T */
    public final void m12770T() {
        zzfoe<? extends r03<? extends InputT>> zzfoeVar = this.f27375p;
        zzfoeVar.getClass();
        if (zzfoeVar.isEmpty()) {
            mo8645M();
        } else if (!this.f27376q) {
            mz2 mz2Var = new mz2(this, this.f27377r ? this.f27375p : null);
            jy2<? extends r03<? extends InputT>> it = this.f27375p.iterator();
            while (it.hasNext()) {
                it.next().mo10015d(mz2Var, zzfrr.INSTANCE);
            }
        } else {
            jy2<? extends r03<? extends InputT>> it2 = this.f27375p.iterator();
            int i = 0;
            while (it2.hasNext()) {
                r03<? extends InputT> next = it2.next();
                next.mo10015d(new lz2(this, next, i), zzfrr.INSTANCE);
                i++;
            }
        }
    }

    /* renamed from: W */
    abstract void mo8643W(int i, InputT inputt);

    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: i */
    public final String mo9813i() {
        zzfoe<? extends r03<? extends InputT>> zzfoeVar = this.f27375p;
        return zzfoeVar != null ? "futures=".concat(zzfoeVar.toString()) : super.mo9813i();
    }

    @Override // com.google.android.gms.internal.ads.fz2
    /* renamed from: j */
    protected final void mo10469j() {
        zzfoe<? extends r03<? extends InputT>> zzfoeVar = this.f27375p;
        boolean z = true;
        mo8644N(1);
        boolean isCancelled = isCancelled();
        if (zzfoeVar == null) {
            z = false;
        }
        if (z && isCancelled) {
            boolean m15007t = m15007t();
            jy2<? extends r03<? extends InputT>> it = zzfoeVar.iterator();
            while (it.hasNext()) {
                it.next().cancel(m15007t);
            }
        }
    }
}
