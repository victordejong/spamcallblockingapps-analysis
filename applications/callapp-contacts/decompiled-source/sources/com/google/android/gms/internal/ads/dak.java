package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dak.class */
abstract class dak<InputT, OutputT> extends dao<OutputT> {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f26669a = Logger.getLogger(dak.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private cyt<? extends dbt<? extends InputT>> f26670b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f26671c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f26672d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dak$a.class */
    public enum a {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public dak(cyt<? extends dbt<? extends InputT>> cytVar, boolean z, boolean z2) {
        super(cytVar.size());
        this.f26670b = (cyt) cyg.a(cytVar);
        this.f26671c = z;
        this.f26672d = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void a(int i, Future<? extends InputT> future) {
        try {
            a(i, (int) dbh.a((Future<Object>) future));
        } catch (ExecutionException e) {
            b(e.getCause());
        } catch (Throwable th) {
            b(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(dak dakVar, cyt cytVar) {
        int k = dakVar.k();
        int i = 0;
        if (!(k >= 0)) {
            throw new IllegalStateException("Less than 0 remaining futures");
        } else if (k == 0) {
            if (cytVar != null) {
                czu czuVar = (czu) cytVar.iterator();
                while (czuVar.hasNext()) {
                    Future<? extends InputT> future = (Future) czuVar.next();
                    if (!future.isCancelled()) {
                        dakVar.a(i, (Future) future);
                    }
                    i++;
                }
            }
            dakVar.l();
            dakVar.i();
            dakVar.a(a.ALL_INPUT_FUTURES_PROCESSED);
        }
    }

    private static boolean a(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    private final void b(Throwable th) {
        cyg.a(th);
        if (this.f26671c && !a(th) && a(j(), th)) {
            c(th);
        } else if (th instanceof Error) {
            c(th);
        }
    }

    private static void c(Throwable th) {
        f26669a.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dag
    public final String a() {
        cyt<? extends dbt<? extends InputT>> cytVar = this.f26670b;
        if (cytVar == null) {
            return super.a();
        }
        String valueOf = String.valueOf(cytVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
        sb.append("futures=");
        sb.append(valueOf);
        return sb.toString();
    }

    abstract void a(int i, InputT inputt);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        cyg.a(aVar);
        this.f26670b = null;
    }

    @Override // com.google.android.gms.internal.ads.dao
    final void a(Set<Throwable> set) {
        cyg.a(set);
        if (!isCancelled()) {
            a(set, e());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dag
    public final void b() {
        super.b();
        cyt<? extends dbt<? extends InputT>> cytVar = this.f26670b;
        a(a.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (cytVar != null)) {
            boolean d2 = d();
            czu czuVar = (czu) cytVar.iterator();
            while (czuVar.hasNext()) {
                ((Future) czuVar.next()).cancel(d2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        if (this.f26670b.isEmpty()) {
            i();
        } else if (this.f26671c) {
            int i = 0;
            czu czuVar = (czu) this.f26670b.iterator();
            while (czuVar.hasNext()) {
                dbt dbtVar = (dbt) czuVar.next();
                dbtVar.addListener(new dan(this, dbtVar, i), dba.INSTANCE);
                i++;
            }
        } else {
            dam damVar = new dam(this, this.f26672d ? this.f26670b : null);
            czu czuVar2 = (czu) this.f26670b.iterator();
            while (czuVar2.hasNext()) {
                ((dbt) czuVar2.next()).addListener(damVar, dba.INSTANCE);
            }
        }
    }

    abstract void i();
}
