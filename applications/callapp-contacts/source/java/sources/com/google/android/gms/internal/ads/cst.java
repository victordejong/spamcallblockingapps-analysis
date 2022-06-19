package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cst.class */
public abstract class cst<E> {

    /* renamed from: a */
    private static final dbt<?> f46489a = dbh.m16899a((Object) null);

    /* renamed from: b */
    private final dbs f46490b;

    /* renamed from: c */
    private final ScheduledExecutorService f46491c;

    /* renamed from: d */
    private final ctg<E> f46492d;

    public cst(dbs dbsVar, ScheduledExecutorService scheduledExecutorService, ctg<E> ctgVar) {
        this.f46490b = dbsVar;
        this.f46491c = scheduledExecutorService;
        this.f46492d = ctgVar;
    }

    /* renamed from: a */
    public final csv m17258a(E e, dbt<?>... dbtVarArr) {
        return new csv(this, e, Arrays.asList(dbtVarArr));
    }

    /* renamed from: a */
    public final csx m17260a(E e) {
        return new csx(this, e);
    }

    /* renamed from: a */
    public final <I> csz<I> m17259a(E e, dbt<I> dbtVar) {
        return new csz<>(this, e, dbtVar, Collections.singletonList(dbtVar), dbtVar);
    }

    /* renamed from: b */
    public abstract String mo17243b(E e);
}
