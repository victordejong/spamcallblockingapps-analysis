package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p170b.p224d.p252g.p253a.p10;
import p131c.p161d.p170b.p224d.p252g.p253a.q10;
import p131c.p161d.p170b.p224d.p252g.p253a.r10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxu.class */
public abstract class zzdxu<InputT, OutputT> extends r10<OutputT> {

    /* renamed from: o */
    public static final Logger f27941o = Logger.getLogger(zzdxu.class.getName());

    /* renamed from: l */
    public zzdwk<? extends zzdzc<? extends InputT>> f27942l;

    /* renamed from: m */
    public final boolean f27943m;

    /* renamed from: n */
    public final boolean f27944n;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxu$zza.class */
    public enum zza {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    public zzdxu(zzdwk<? extends zzdzc<? extends InputT>> zzdwkVar, boolean z, boolean z2) {
        super(zzdwkVar.size());
        zzdwd.m13096a(zzdwkVar);
        this.f27942l = zzdwkVar;
        this.f27943m = z;
        this.f27944n = z2;
    }

    /* renamed from: a */
    public static boolean m13034a(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    /* renamed from: c */
    public static void m13030c(Throwable th) {
        f27941o.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    /* renamed from: a */
    public abstract void mo13041a(int i, InputT inputt);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m13040a(int i, Future<? extends InputT> future) {
        try {
            mo13041a(i, (int) zzdyq.m12986a((Future<Object>) future));
        } catch (ExecutionException e) {
            m13031b(e.getCause());
        } catch (Throwable th) {
            m13031b(th);
        }
    }

    /* renamed from: a */
    public final void m13039a(zzdwk<? extends Future<? extends InputT>> zzdwkVar) {
        int i = m26453i();
        int i2 = 0;
        if (!(i >= 0)) {
            throw new IllegalStateException("Less than 0 remaining futures");
        } else if (i == 0) {
            if (zzdwkVar != null) {
                zzdxg zzdxgVar = (zzdxg) zzdwkVar.iterator();
                while (zzdxgVar.hasNext()) {
                    Future<? extends InputT> future = (Future) zzdxgVar.next();
                    if (!future.isCancelled()) {
                        m13040a(i2, (Future) future);
                    }
                    i2++;
                }
            }
            m26452j();
            mo13027l();
            mo13038a(zza.ALL_INPUT_FUTURES_PROCESSED);
        }
    }

    /* renamed from: a */
    public void mo13038a(zza zzaVar) {
        zzdwd.m13096a(zzaVar);
        this.f27942l = null;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.r10
    /* renamed from: a */
    public final void mo13035a(Set<Throwable> set) {
        zzdwd.m13096a(set);
        if (!isCancelled()) {
            m13034a(set, mo12969a());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdxq
    /* renamed from: b */
    public final void mo13033b() {
        super.mo13033b();
        zzdwk<? extends zzdzc<? extends InputT>> zzdwkVar = this.f27942l;
        mo13038a(zza.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (zzdwkVar != null)) {
            boolean e = m13051e();
            zzdxg zzdxgVar = (zzdxg) zzdwkVar.iterator();
            while (zzdxgVar.hasNext()) {
                ((Future) zzdxgVar.next()).cancel(e);
            }
        }
    }

    /* renamed from: b */
    public final void m13031b(Throwable th) {
        zzdwd.m13096a(th);
        if (this.f27943m && !mo12971a(th) && m13034a(m26454h(), th)) {
            m13030c(th);
        } else if (th instanceof Error) {
            m13030c(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdxq
    /* renamed from: d */
    public final String mo13029d() {
        zzdwk<? extends zzdzc<? extends InputT>> zzdwkVar = this.f27942l;
        if (zzdwkVar == null) {
            return super.mo13029d();
        }
        String valueOf = String.valueOf(zzdwkVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
        sb.append("futures=");
        sb.append(valueOf);
        return sb.toString();
    }

    /* renamed from: k */
    public final void m13028k() {
        if (this.f27942l.isEmpty()) {
            mo13027l();
        } else if (this.f27943m) {
            int i = 0;
            zzdxg zzdxgVar = (zzdxg) this.f27942l.iterator();
            while (zzdxgVar.hasNext()) {
                zzdzc zzdzcVar = (zzdzc) zzdxgVar.next();
                zzdzcVar.mo12976a(new q10(this, zzdzcVar, i), zzdyj.INSTANCE);
                i++;
            }
        } else {
            p10 p10Var = new p10(this, this.f27944n ? this.f27942l : null);
            zzdxg zzdxgVar2 = (zzdxg) this.f27942l.iterator();
            while (zzdxgVar2.hasNext()) {
                ((zzdzc) zzdxgVar2.next()).mo12976a(p10Var, zzdyj.INSTANCE);
            }
        }
    }

    /* renamed from: l */
    public abstract void mo13027l();
}
