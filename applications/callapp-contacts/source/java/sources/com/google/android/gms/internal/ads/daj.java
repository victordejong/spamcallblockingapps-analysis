package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/daj.class */
public abstract class daj<I, O, F, T> extends dbb<O> implements Runnable {

    /* renamed from: a */
    private dbt<? extends I> f46886a;

    /* renamed from: b */
    private F f46887b;

    public daj(dbt<? extends I> dbtVar, F f) {
        this.f46886a = (dbt) cyg.m17060a(dbtVar);
        this.f46887b = (F) cyg.m17060a(f);
    }

    /* renamed from: a */
    public static <I, O> dbt<O> m16942a(dbt<I> dbtVar, cxu<? super I, ? extends O> cxuVar, Executor executor) {
        cyg.m17060a(cxuVar);
        dal dalVar = new dal(dbtVar, cxuVar);
        dbtVar.addListener(dalVar, dbv.m16889a(executor, dalVar));
        return dalVar;
    }

    /* renamed from: a */
    public static <I, O> dbt<O> m16941a(dbt<I> dbtVar, daq<? super I, ? extends O> daqVar, Executor executor) {
        cyg.m17060a(executor);
        dai daiVar = new dai(dbtVar, daqVar);
        dbtVar.addListener(daiVar, dbv.m16889a(executor, daiVar));
        return daiVar;
    }

    /* renamed from: a */
    abstract T mo16931a(F f, I i) throws Exception;

    @Override // com.google.android.gms.internal.ads.dag
    /* renamed from: a */
    public final String mo16879a() {
        String str;
        dbt<? extends I> dbtVar = this.f46886a;
        F f = this.f46887b;
        String a = super.mo16879a();
        if (dbtVar != null) {
            String valueOf = String.valueOf(dbtVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("inputFuture=[");
            sb.append(valueOf);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (f == null) {
            if (a == null) {
                return null;
            }
            String valueOf2 = String.valueOf(str);
            String valueOf3 = String.valueOf(a);
            return valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
        }
        String valueOf4 = String.valueOf(f);
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(valueOf4).length());
        sb2.append(str);
        sb2.append("function=[");
        sb2.append(valueOf4);
        sb2.append("]");
        return sb2.toString();
    }

    /* renamed from: a */
    abstract void mo16932a(T t);

    @Override // com.google.android.gms.internal.ads.dag
    /* renamed from: b */
    public final void mo16876b() {
        m16959a((Future<?>) this.f46886a);
        this.f46886a = null;
        this.f46887b = null;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        dbt<? extends I> dbtVar = this.f46886a;
        F f = this.f46887b;
        boolean isCancelled = isCancelled();
        boolean z = true;
        boolean z2 = dbtVar == null;
        if (f != null) {
            z = false;
        }
        if ((isCancelled | z2) || z) {
            return;
        }
        this.f46886a = null;
        if (dbtVar.isCancelled()) {
            m16963a((dbt) dbtVar);
            return;
        }
        try {
            try {
                Object mo16931a = mo16931a((daj<I, O, F, T>) f, (F) dbh.m16897a((Future<Object>) dbtVar));
                this.f46887b = null;
                mo16932a((daj<I, O, F, T>) mo16931a);
            } catch (Throwable th) {
                try {
                    mo16882a(th);
                    this.f46887b = null;
                } catch (Throwable th2) {
                    this.f46887b = null;
                    throw th2;
                }
            }
        } catch (Error e) {
            mo16882a((Throwable) e);
        } catch (CancellationException e2) {
            cancel(false);
        } catch (RuntimeException e3) {
            mo16882a((Throwable) e3);
        } catch (ExecutionException e4) {
            mo16882a(e4.getCause());
        }
    }
}
