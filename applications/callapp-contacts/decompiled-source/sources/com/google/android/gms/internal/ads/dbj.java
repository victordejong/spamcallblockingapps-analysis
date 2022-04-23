package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbj.class */
public final class dbj<V> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Future<V> f26697a;

    /* renamed from: b  reason: collision with root package name */
    private final dbi<? super V> f26698b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dbj(Future<V> future, dbi<? super V> dbiVar) {
        this.f26697a = future;
        this.f26698b = dbiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable e;
        Throwable a2;
        Future<V> future = this.f26697a;
        if (!(future instanceof dcl) || (a2 = dck.a((dcl) future)) == null) {
            try {
                this.f26698b.a((dbi<? super V>) dbh.a((Future<Object>) this.f26697a));
            } catch (Error e2) {
                e = e2;
                this.f26698b.a(e);
            } catch (RuntimeException e3) {
                e = e3;
                this.f26698b.a(e);
            } catch (ExecutionException e4) {
                this.f26698b.a(e4.getCause());
            }
        } else {
            this.f26698b.a(a2);
        }
    }

    public final String toString() {
        cxy cxyVar = new cxy(getClass().getSimpleName());
        dbi<? super V> dbiVar = this.f26698b;
        cyb cybVar = new cyb();
        cxyVar.f26552a.f26560b = cybVar;
        cxyVar.f26552a = cybVar;
        cybVar.f26559a = dbiVar;
        return cxyVar.toString();
    }
}
