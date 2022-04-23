package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csv.class */
public final class csv {

    /* renamed from: a  reason: collision with root package name */
    private final E f26352a;

    /* renamed from: b  reason: collision with root package name */
    private final List<dbt<?>> f26353b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ cst f26354c;

    private csv(cst cstVar, E e, List<dbt<?>> list) {
        this.f26354c = cstVar;
        this.f26352a = e;
        this.f26353b = list;
    }

    public final <O> csz<O> a(Callable<O> callable) {
        dbs dbsVar;
        dbm b2 = dbh.b(this.f26353b);
        dbt a2 = b2.a(csy.f26357a, zd.f);
        cst cstVar = this.f26354c;
        E e = this.f26352a;
        List<dbt<?>> list = this.f26353b;
        dbsVar = cstVar.f26346b;
        return new csz<>(cstVar, e, a2, list, b2.a(callable, dbsVar));
    }
}
