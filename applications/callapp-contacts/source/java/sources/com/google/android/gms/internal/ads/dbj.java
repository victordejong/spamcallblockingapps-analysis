package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbj.class */
public final class dbj<V> implements Runnable {

    /* renamed from: a */
    private final Future<V> f46916a;

    /* renamed from: b */
    private final dbi<? super V> f46917b;

    public dbj(Future<V> future, dbi<? super V> dbiVar) {
        this.f46916a = future;
        this.f46917b = dbiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable e;
        Throwable m16870a;
        Future<V> future = this.f46916a;
        if ((future instanceof dcl) && (m16870a = dck.m16870a((dcl) future)) != null) {
            this.f46917b.mo13891a(m16870a);
            return;
        }
        try {
            this.f46917b.mo13892a((dbi<? super V>) dbh.m16897a((Future<Object>) this.f46916a));
        } catch (Error e2) {
            e = e2;
            this.f46917b.mo13891a(e);
        } catch (RuntimeException e3) {
            e = e3;
            this.f46917b.mo13891a(e);
        } catch (ExecutionException e4) {
            this.f46917b.mo13891a(e4.getCause());
        }
    }

    public final String toString() {
        cxy cxyVar = new cxy(getClass().getSimpleName());
        dbi<? super V> dbiVar = this.f46917b;
        cyb cybVar = new cyb();
        cxyVar.f46746a.f46754b = cybVar;
        cxyVar.f46746a = cybVar;
        cybVar.f46753a = dbiVar;
        return cxyVar.toString();
    }
}
