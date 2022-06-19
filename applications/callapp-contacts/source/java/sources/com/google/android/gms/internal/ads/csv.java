package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csv.class */
public final class csv {

    /* renamed from: a */
    private final E f46496a;

    /* renamed from: b */
    private final List<dbt<?>> f46497b;

    /* renamed from: c */
    private final /* synthetic */ cst f46498c;

    /* JADX INFO: Access modifiers changed from: private */
    public csv(cst cstVar, E e, List<dbt<?>> list) {
        this.f46498c = cstVar;
        this.f46496a = e;
        this.f46497b = list;
    }

    /* renamed from: a */
    public final <O> csz<O> m17255a(Callable<O> callable) {
        dbs dbsVar;
        dbm m16895b = dbh.m16895b(this.f46497b);
        dbt m16893a = m16895b.m16893a(csy.f46501a, C13091zd.f50123f);
        cst cstVar = this.f46498c;
        E e = this.f46496a;
        List<dbt<?>> list = this.f46497b;
        dbsVar = cstVar.f46490b;
        return new csz<>(cstVar, e, m16893a, list, m16895b.m16893a(callable, dbsVar));
    }
}
