package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqh.class */
public abstract class cqh<I, O, F, T> extends cra<O> implements Runnable {
    @NullableDecl

    /* renamed from: a */
    private crt<? extends I> f13572a;
    @NullableDecl

    /* renamed from: b */
    private F f13573b;

    public cqh(crt<? extends I> crtVar, F f) {
        this.f13572a = (crt) cor.m10936a(crtVar);
        this.f13573b = (F) cor.m10936a(f);
    }

    /* renamed from: a */
    public static <I, O> crt<O> m10824a(crt<I> crtVar, coe<? super I, ? extends O> coeVar, Executor executor) {
        cor.m10936a(coeVar);
        cqk cqkVar = new cqk(crtVar, coeVar);
        crtVar.mo6734a(cqkVar, crv.m10765a(executor, cqkVar));
        return cqkVar;
    }

    /* renamed from: a */
    public static <I, O> crt<O> m10823a(crt<I> crtVar, cqt<? super I, ? extends O> cqtVar, Executor executor) {
        cor.m10936a(executor);
        cql cqlVar = new cql(crtVar, cqtVar);
        crtVar.mo6734a(cqlVar, crv.m10765a(executor, cqlVar));
        return cqlVar;
    }

    @NullableDecl
    /* renamed from: a */
    abstract T mo10821a(F f, @NullableDecl I i);

    @Override // com.google.android.gms.internal.ads.cqf
    /* renamed from: a */
    public final String mo10747a() {
        String str;
        crt<? extends I> crtVar = this.f13572a;
        F f = this.f13573b;
        String a = super.mo10747a();
        String str2 = "";
        if (crtVar != null) {
            String valueOf = String.valueOf(crtVar);
            str2 = new StringBuilder(String.valueOf(valueOf).length() + 16).append("inputFuture=[").append(valueOf).append("], ").toString();
        }
        if (f != null) {
            String valueOf2 = String.valueOf(f);
            str = new StringBuilder(String.valueOf(str2).length() + 11 + String.valueOf(valueOf2).length()).append(str2).append("function=[").append(valueOf2).append("]").toString();
        } else if (a != null) {
            String valueOf3 = String.valueOf(str2);
            String valueOf4 = String.valueOf(a);
            str = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: a */
    abstract void mo10822a(@NullableDecl T t);

    @Override // com.google.android.gms.internal.ads.cqf
    /* renamed from: b */
    public final void mo10744b() {
        m10844a((Future<?>) this.f13572a);
        this.f13572a = null;
        this.f13573b = null;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z = true;
        crt<? extends I> crtVar = this.f13572a;
        F f = this.f13573b;
        boolean isCancelled = isCancelled();
        boolean z2 = crtVar == null;
        if (f != null) {
            z = false;
        }
        if (z || (z2 | isCancelled)) {
            return;
        }
        this.f13572a = null;
        if (crtVar.isCancelled()) {
            m10848a((crt) crtVar);
            return;
        }
        try {
            try {
                Object mo10821a = mo10821a((cqh<I, O, F, T>) f, (F) crg.m10776a((Future<Object>) crtVar));
                this.f13573b = null;
                mo10822a((cqh<I, O, F, T>) mo10821a);
            } catch (Throwable th) {
                try {
                    mo10754a(th);
                    this.f13573b = null;
                } catch (Throwable th2) {
                    this.f13573b = null;
                    throw th2;
                }
            }
        } catch (Error e) {
            mo10754a((Throwable) e);
        } catch (CancellationException e2) {
            cancel(false);
        } catch (RuntimeException e3) {
            mo10754a((Throwable) e3);
        } catch (ExecutionException e4) {
            mo10754a(e4.getCause());
        }
    }
}
