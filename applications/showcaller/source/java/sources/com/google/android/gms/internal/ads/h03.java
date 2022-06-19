package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h03.class */
public final class h03<V> implements Runnable {

    /* renamed from: d */
    final Future<V> f23776d;

    /* renamed from: e */
    final f03<? super V> f23777e;

    public h03(Future<V> future, f03<? super V> f03Var) {
        this.f23776d = future;
        this.f23777e = f03Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable e;
        Throwable m14770a;
        Future<V> future = this.f23776d;
        if ((future instanceof g13) && (m14770a = h13.m14770a((g13) future)) != null) {
            this.f23777e.mo8126a(m14770a);
            return;
        }
        try {
            this.f23777e.mo8125b(k03.m13987q(this.f23776d));
        } catch (Error e2) {
            e = e2;
            this.f23777e.mo8126a(e);
        } catch (RuntimeException e3) {
            e = e3;
            this.f23777e.mo8126a(e);
        } catch (ExecutionException e4) {
            this.f23777e.mo8126a(e4.getCause());
        }
    }

    public final String toString() {
        ru2 m10903a = su2.m10903a(this);
        m10903a.m11268a(this.f23777e);
        return m10903a.toString();
    }
}
