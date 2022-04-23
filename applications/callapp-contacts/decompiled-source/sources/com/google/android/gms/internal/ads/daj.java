package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/daj.class */
public abstract class daj<I, O, F, T> extends dbb<O> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private dbt<? extends I> f26667a;

    /* renamed from: b  reason: collision with root package name */
    private F f26668b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public daj(dbt<? extends I> dbtVar, F f) {
        this.f26667a = (dbt) cyg.a(dbtVar);
        this.f26668b = (F) cyg.a(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <I, O> dbt<O> a(dbt<I> dbtVar, cxu<? super I, ? extends O> cxuVar, Executor executor) {
        cyg.a(cxuVar);
        dal dalVar = new dal(dbtVar, cxuVar);
        dbtVar.addListener(dalVar, dbv.a(executor, dalVar));
        return dalVar;
    }

    public static <I, O> dbt<O> a(dbt<I> dbtVar, daq<? super I, ? extends O> daqVar, Executor executor) {
        cyg.a(executor);
        dai daiVar = new dai(dbtVar, daqVar);
        dbtVar.addListener(daiVar, dbv.a(executor, daiVar));
        return daiVar;
    }

    abstract T a(F f, I i) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dag
    public final String a() {
        String str;
        dbt<? extends I> dbtVar = this.f26667a;
        F f = this.f26668b;
        String a2 = super.a();
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
        if (f != null) {
            String valueOf2 = String.valueOf(f);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(valueOf2).length());
            sb2.append(str);
            sb2.append("function=[");
            sb2.append(valueOf2);
            sb2.append("]");
            return sb2.toString();
        } else if (a2 == null) {
            return null;
        } else {
            String valueOf3 = String.valueOf(str);
            String valueOf4 = String.valueOf(a2);
            return valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        }
    }

    abstract void a(T t);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dag
    public final void b() {
        a((Future<?>) this.f26667a);
        this.f26667a = null;
        this.f26668b = null;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        dbt<? extends I> dbtVar = this.f26667a;
        F f = this.f26668b;
        boolean isCancelled = isCancelled();
        boolean z = true;
        boolean z2 = dbtVar == null;
        if (f != null) {
            z = false;
        }
        if (!(isCancelled | z2) && !z) {
            this.f26667a = null;
            if (dbtVar.isCancelled()) {
                a((dbt) dbtVar);
                return;
            }
            try {
                try {
                    Object a2 = a((daj<I, O, F, T>) f, (F) dbh.a((Future<Object>) dbtVar));
                    this.f26668b = null;
                    a((daj<I, O, F, T>) a2);
                } catch (Throwable th) {
                    try {
                        a(th);
                        this.f26668b = null;
                    } catch (Throwable th2) {
                        this.f26668b = null;
                        throw th2;
                    }
                }
            } catch (Error e) {
                a((Throwable) e);
            } catch (CancellationException e2) {
                cancel(false);
            } catch (RuntimeException e3) {
                a((Throwable) e3);
            } catch (ExecutionException e4) {
                a(e4.getCause());
            }
        }
    }
}
