package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dak.class */
abstract class dak<InputT, OutputT> extends AbstractC12314dao<OutputT> {

    /* renamed from: a */
    private static final Logger f46888a = Logger.getLogger(dak.class.getName());

    /* renamed from: b */
    private cyt<? extends dbt<? extends InputT>> f46889b;

    /* renamed from: c */
    private final boolean f46890c;

    /* renamed from: d */
    private final boolean f46891d;

    /* renamed from: com.google.android.gms.internal.ads.dak$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dak$a.class */
    public enum EnumC12313a {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    public dak(cyt<? extends dbt<? extends InputT>> cytVar, boolean z, boolean z2) {
        super(cytVar.size());
        this.f46889b = (cyt) cyg.m17060a(cytVar);
        this.f46890c = z;
        this.f46891d = z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m16940a(int i, Future<? extends InputT> future) {
        try {
            mo16919a(i, (int) dbh.m16897a((Future<Object>) future));
        } catch (ExecutionException e) {
            m16935b(e.getCause());
        } catch (Throwable th) {
            m16935b(th);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m16937a(dak dakVar, cyt cytVar) {
        int m16925k = dakVar.m16925k();
        if (m16925k >= 0) {
            if (m16925k != 0) {
                return;
            }
            if (cytVar != null) {
                czu czuVar = (czu) cytVar.iterator();
                int i = 0;
                while (czuVar.hasNext()) {
                    Future<? extends InputT> future = (Future) czuVar.next();
                    if (!future.isCancelled()) {
                        dakVar.m16940a(i, (Future) future);
                    }
                    i++;
                }
            }
            dakVar.m16924l();
            dakVar.mo16915i();
            dakVar.mo16918a(EnumC12313a.ALL_INPUT_FUTURES_PROCESSED);
            return;
        }
        throw new IllegalStateException("Less than 0 remaining futures");
    }

    /* renamed from: a */
    private static boolean m16936a(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    /* renamed from: b */
    private final void m16935b(Throwable th) {
        cyg.m17060a(th);
        if (this.f46890c && !mo16882a(th) && m16936a(m16926j(), th)) {
            m16934c(th);
        } else if (!(th instanceof Error)) {
        } else {
            m16934c(th);
        }
    }

    /* renamed from: c */
    private static void m16934c(Throwable th) {
        f46888a.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    @Override // com.google.android.gms.internal.ads.dag
    /* renamed from: a */
    public final String mo16879a() {
        cyt<? extends dbt<? extends InputT>> cytVar = this.f46889b;
        if (cytVar != null) {
            String valueOf = String.valueOf(cytVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
            sb.append("futures=");
            sb.append(valueOf);
            return sb.toString();
        }
        return super.mo16879a();
    }

    /* renamed from: a */
    abstract void mo16919a(int i, InputT inputt);

    /* renamed from: a */
    public void mo16918a(EnumC12313a enumC12313a) {
        cyg.m17060a(enumC12313a);
        this.f46889b = null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12314dao
    /* renamed from: a */
    final void mo16928a(Set<Throwable> set) {
        cyg.m17060a(set);
        if (!isCancelled()) {
            m16936a(set, mo16869e());
        }
    }

    @Override // com.google.android.gms.internal.ads.dag
    /* renamed from: b */
    public final void mo16876b() {
        super.mo16876b();
        cyt<? extends dbt<? extends InputT>> cytVar = this.f46889b;
        mo16918a(EnumC12313a.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (cytVar != null)) {
            boolean m16953d = m16953d();
            czu czuVar = (czu) cytVar.iterator();
            while (czuVar.hasNext()) {
                ((Future) czuVar.next()).cancel(m16953d);
            }
        }
    }

    /* renamed from: h */
    public final void m16933h() {
        if (this.f46889b.isEmpty()) {
            mo16915i();
        } else if (!this.f46890c) {
            dam damVar = new dam(this, this.f46891d ? this.f46889b : null);
            czu czuVar = (czu) this.f46889b.iterator();
            while (czuVar.hasNext()) {
                ((dbt) czuVar.next()).addListener(damVar, dba.INSTANCE);
            }
        } else {
            int i = 0;
            czu czuVar2 = (czu) this.f46889b.iterator();
            while (czuVar2.hasNext()) {
                dbt dbtVar = (dbt) czuVar2.next();
                dbtVar.addListener(new dan(this, dbtVar, i), dba.INSTANCE);
                i++;
            }
        }
    }

    /* renamed from: i */
    abstract void mo16915i();
}
