package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqe.class */
public abstract class cqe<V, X extends Throwable, F, T> extends cra<V> implements Runnable {
    @NullableDecl

    /* renamed from: a */
    private crt<? extends V> f13536a;
    @NullableDecl

    /* renamed from: b */
    private Class<X> f13537b;
    @NullableDecl

    /* renamed from: c */
    private F f13538c;

    public cqe(crt<? extends V> crtVar, Class<X> cls, F f) {
        this.f13536a = (crt) cor.m10936a(crtVar);
        this.f13537b = (Class) cor.m10936a(cls);
        this.f13538c = (F) cor.m10936a(f);
    }

    /* renamed from: a */
    public static <X extends Throwable, V> crt<V> m10854a(crt<? extends V> crtVar, Class<X> cls, cqt<? super X, ? extends V> cqtVar, Executor executor) {
        cqd cqdVar = new cqd(crtVar, cls, cqtVar);
        crtVar.mo6734a(cqdVar, crv.m10765a(executor, cqdVar));
        return cqdVar;
    }

    @NullableDecl
    /* renamed from: a */
    abstract T mo10825a(F f, X x);

    @Override // com.google.android.gms.internal.ads.cqf
    /* renamed from: a */
    public final String mo10747a() {
        String str;
        crt<? extends V> crtVar = this.f13536a;
        Class<X> cls = this.f13537b;
        F f = this.f13538c;
        String a = super.mo10747a();
        String str2 = "";
        if (crtVar != null) {
            String valueOf = String.valueOf(crtVar);
            str2 = new StringBuilder(String.valueOf(valueOf).length() + 16).append("inputFuture=[").append(valueOf).append("], ").toString();
        }
        if (cls != null && f != null) {
            String valueOf2 = String.valueOf(cls);
            String valueOf3 = String.valueOf(f);
            str = new StringBuilder(String.valueOf(str2).length() + 29 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append(str2).append("exceptionType=[").append(valueOf2).append("], fallback=[").append(valueOf3).append("]").toString();
        } else if (a != null) {
            String valueOf4 = String.valueOf(str2);
            String valueOf5 = String.valueOf(a);
            str = valueOf5.length() != 0 ? valueOf4.concat(valueOf5) : new String(valueOf4);
        } else {
            str = null;
        }
        return str;
    }

    /* renamed from: a */
    abstract void mo10826a(@NullableDecl T t);

    @Override // com.google.android.gms.internal.ads.cqf
    /* renamed from: b */
    public final void mo10744b() {
        m10844a((Future<?>) this.f13536a);
        this.f13536a = null;
        this.f13537b = null;
        this.f13538c = null;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        V v;
        boolean z = true;
        crt<? extends V> crtVar = this.f13536a;
        Class<X> cls = this.f13537b;
        F f = this.f13538c;
        boolean z2 = crtVar == null;
        boolean z3 = cls == null;
        if (f != null) {
            z = false;
        }
        if ((z || (z3 | z2)) || isCancelled()) {
            return;
        }
        this.f13536a = null;
        try {
            th = crtVar instanceof csj ? csn.m10737a((csj) crtVar) : null;
            v = th == null ? crg.m10776a((Future) crtVar) : null;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            th = cause;
            if (cause == null) {
                String valueOf = String.valueOf(crtVar.getClass());
                String valueOf2 = String.valueOf(e.getClass());
                th = new NullPointerException(new StringBuilder(String.valueOf(valueOf).length() + 35 + String.valueOf(valueOf2).length()).append("Future type ").append(valueOf).append(" threw ").append(valueOf2).append(" without a cause").toString());
            }
            v = null;
        } catch (Throwable th) {
            th = th;
            v = null;
        }
        if (th == null) {
            mo10753b((cqe<V, X, F, T>) v);
        } else if (!cls.isInstance(th)) {
            m10848a((crt) crtVar);
        } else {
            try {
                T mo10825a = mo10825a((cqe<V, X, F, T>) f, (F) th);
                this.f13537b = null;
                this.f13538c = null;
                mo10826a((cqe<V, X, F, T>) mo10825a);
            } catch (Throwable th2) {
                try {
                    mo10754a(th2);
                    this.f13537b = null;
                    this.f13538c = null;
                } catch (Throwable th3) {
                    this.f13537b = null;
                    this.f13538c = null;
                    throw th3;
                }
            }
        }
    }
}
