package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csx.class */
public final class csx {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ cst f26355a;

    /* renamed from: b  reason: collision with root package name */
    private final E f26356b;

    private csx(cst cstVar, E e) {
        this.f26355a = cstVar;
        this.f26356b = e;
    }

    public final csz<?> a(final csr csrVar, dbs dbsVar) {
        return a(new Callable(csrVar) { // from class: com.google.android.gms.internal.ads.cta

            /* renamed from: a  reason: collision with root package name */
            private final csr f26363a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26363a = csrVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.f26363a.a();
                return null;
            }
        }, dbsVar);
    }

    public final <O> csz<O> a(dbt<O> dbtVar) {
        dbt dbtVar2;
        cst cstVar = this.f26355a;
        E e = this.f26356b;
        dbtVar2 = cst.f26345a;
        return new csz<>(cstVar, e, dbtVar2, Collections.emptyList(), dbtVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <O> csz<O> a(Callable<O> callable, dbs dbsVar) {
        dbt dbtVar;
        cst cstVar = this.f26355a;
        E e = this.f26356b;
        dbtVar = cst.f26345a;
        return new csz<>(cstVar, e, dbtVar, Collections.emptyList(), dbsVar.a(callable));
    }
}
