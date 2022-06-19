package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csx.class */
public final class csx {

    /* renamed from: a */
    final /* synthetic */ cst f46499a;

    /* renamed from: b */
    private final E f46500b;

    /* JADX INFO: Access modifiers changed from: private */
    public csx(cst cstVar, E e) {
        this.f46499a = cstVar;
        this.f46500b = e;
    }

    /* renamed from: a */
    public final csz<?> m17254a(csr csrVar, dbs dbsVar) {
        return m17252a(new Callable(csrVar) { // from class: com.google.android.gms.internal.ads.cta

            /* renamed from: a */
            private final csr f46509a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46509a = csrVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.f46509a.mo17264a();
                return null;
            }
        }, dbsVar);
    }

    /* renamed from: a */
    public final <O> csz<O> m17253a(dbt<O> dbtVar) {
        dbt dbtVar2;
        cst cstVar = this.f46499a;
        E e = this.f46500b;
        dbtVar2 = cst.f46489a;
        return new csz<>(cstVar, e, dbtVar2, Collections.emptyList(), dbtVar);
    }

    /* renamed from: a */
    public final <O> csz<O> m17252a(Callable<O> callable, dbs dbsVar) {
        dbt dbtVar;
        cst cstVar = this.f46499a;
        E e = this.f46500b;
        dbtVar = cst.f46489a;
        return new csz<>(cstVar, e, dbtVar, Collections.emptyList(), dbsVar.mo16890a(callable));
    }
}
