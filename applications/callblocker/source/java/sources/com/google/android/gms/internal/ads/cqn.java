package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqn.class */
abstract class cqn<InputT, OutputT> extends cqq<OutputT> {

    /* renamed from: a */
    private static final Logger f13580a = Logger.getLogger(cqn.class.getName());
    @NullableDecl

    /* renamed from: b */
    private cpb<? extends crt<? extends InputT>> f13581b;

    /* renamed from: c */
    private final boolean f13582c;

    /* renamed from: d */
    private final boolean f13583d;

    /* renamed from: com.google.android.gms.internal.ads.cqn$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqn$a.class */
    public enum EnumC2889a {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    public cqn(cpb<? extends crt<? extends InputT>> cpbVar, boolean z, boolean z2) {
        super(cpbVar.size());
        this.f13581b = (cpb) cor.m10936a(cpbVar);
        this.f13582c = z;
        this.f13583d = z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m10820a(int i, Future<? extends InputT> future) {
        try {
            mo10801a(i, (int) crg.m10776a((Future<Object>) future));
        } catch (ExecutionException e) {
            m10814b(e.getCause());
        } catch (Throwable th) {
            m10814b(th);
        }
    }

    /* renamed from: a */
    public final void m10819a(@NullableDecl cpb<? extends Future<? extends InputT>> cpbVar) {
        int m10806k = m10806k();
        if (!(m10806k >= 0)) {
            throw new IllegalStateException(String.valueOf("Less than 0 remaining futures"));
        }
        if (m10806k != 0) {
            return;
        }
        if (cpbVar != null) {
            cpy cpyVar = (cpy) cpbVar.iterator();
            int i = 0;
            while (cpyVar.hasNext()) {
                Future<? extends InputT> future = (Future) cpyVar.next();
                if (!future.isCancelled()) {
                    m10820a(i, (Future) future);
                }
                i++;
            }
        }
        m10805l();
        mo10797i();
        mo10800a(EnumC2889a.ALL_INPUT_FUTURES_PROCESSED);
    }

    /* renamed from: a */
    private static boolean m10816a(Set<Throwable> set, Throwable th) {
        boolean z;
        while (true) {
            if (th == null) {
                z = true;
                break;
            } else if (!set.add(th)) {
                z = false;
                break;
            } else {
                th = th.getCause();
            }
        }
        return z;
    }

    /* renamed from: b */
    private final void m10814b(Throwable th) {
        cor.m10936a(th);
        if (this.f13582c && !mo10754a(th) && m10816a(m10807j(), th)) {
            m10813c(th);
        } else if (!(th instanceof Error)) {
        } else {
            m10813c(th);
        }
    }

    /* renamed from: c */
    private static void m10813c(Throwable th) {
        f13580a.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    @Override // com.google.android.gms.internal.ads.cqf
    /* renamed from: a */
    public final String mo10747a() {
        String a;
        cpb<? extends crt<? extends InputT>> cpbVar = this.f13581b;
        if (cpbVar != null) {
            String valueOf = String.valueOf(cpbVar);
            a = new StringBuilder(String.valueOf(valueOf).length() + 8).append("futures=").append(valueOf).toString();
        } else {
            a = super.mo10747a();
        }
        return a;
    }

    /* renamed from: a */
    abstract void mo10801a(int i, @NullableDecl InputT inputt);

    /* renamed from: a */
    public void mo10800a(EnumC2889a enumC2889a) {
        cor.m10936a(enumC2889a);
        this.f13581b = null;
    }

    @Override // com.google.android.gms.internal.ads.cqq
    /* renamed from: a */
    final void mo10809a(Set<Throwable> set) {
        cor.m10936a(set);
        if (!isCancelled()) {
            m10816a(set, mo10739e());
        }
    }

    @Override // com.google.android.gms.internal.ads.cqf
    /* renamed from: b */
    public final void mo10744b() {
        super.mo10744b();
        cpb<? extends crt<? extends InputT>> cpbVar = this.f13581b;
        mo10800a(EnumC2889a.OUTPUT_FUTURE_DONE);
        if ((cpbVar != null) && isCancelled()) {
            boolean m10837d = m10837d();
            cpy cpyVar = (cpy) cpbVar.iterator();
            while (cpyVar.hasNext()) {
                ((Future) cpyVar.next()).cancel(m10837d);
            }
        }
    }

    /* renamed from: h */
    public final void m10812h() {
        if (this.f13581b.isEmpty()) {
            mo10797i();
        } else if (!this.f13582c) {
            cqo cqoVar = new cqo(this, this.f13583d ? this.f13581b : null);
            cpy cpyVar = (cpy) this.f13581b.iterator();
            while (cpyVar.hasNext()) {
                ((crt) cpyVar.next()).mo6734a(cqoVar, cqz.INSTANCE);
            }
        } else {
            cpy cpyVar2 = (cpy) this.f13581b.iterator();
            int i = 0;
            while (cpyVar2.hasNext()) {
                crt crtVar = (crt) cpyVar2.next();
                crtVar.mo6734a(new cqm(this, crtVar, i), cqz.INSTANCE);
                i++;
            }
        }
    }

    /* renamed from: i */
    abstract void mo10797i();
}
