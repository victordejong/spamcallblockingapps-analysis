package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iz1.class */
final class iz1<V> implements Runnable {

    /* renamed from: b */
    final Future<V> f6876b;

    /* renamed from: c */
    final gz1<? super V> f6877c;

    iz1(Future<V> future, gz1<? super V> gz1Var) {
        this.f6876b = future;
        this.f6877c = gz1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable e;
        Throwable m7318a;
        Future<V> future = this.f6876b;
        if ((future instanceof g02) && (m7318a = h02.m7318a((g02) future)) != null) {
            this.f6877c.m7334a(m7318a);
            return;
        }
        try {
            this.f6877c.m7333b(kz1.p(this.f6876b));
        } catch (Error e2) {
            e = e2;
            this.f6877c.m7334a(e);
        } catch (RuntimeException e3) {
            e = e3;
            this.f6877c.m7334a(e);
        } catch (ExecutionException e4) {
            this.f6877c.m7334a(e4.getCause());
        }
    }

    public final String toString() {
        jw1 m6748a = kw1.m6748a(this);
        m6748a.m6908a(this.f6877c);
        return m6748a.toString();
    }
}
