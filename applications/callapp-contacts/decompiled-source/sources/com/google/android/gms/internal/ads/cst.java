package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cst.class */
public abstract class cst<E> {

    /* renamed from: a  reason: collision with root package name */
    private static final dbt<?> f26345a = dbh.a((Object) null);

    /* renamed from: b  reason: collision with root package name */
    private final dbs f26346b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f26347c;

    /* renamed from: d  reason: collision with root package name */
    private final ctg<E> f26348d;

    public cst(dbs dbsVar, ScheduledExecutorService scheduledExecutorService, ctg<E> ctgVar) {
        this.f26346b = dbsVar;
        this.f26347c = scheduledExecutorService;
        this.f26348d = ctgVar;
    }

    public final csv a(E e, dbt<?>... dbtVarArr) {
        return new csv(this, e, Arrays.asList(dbtVarArr), null);
    }

    public final csx a(E e) {
        return new csx(this, e, null);
    }

    public final <I> csz<I> a(E e, dbt<I> dbtVar) {
        return new csz<>(this, e, null, dbtVar, Collections.singletonList(dbtVar), dbtVar, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String b(E e);
}
