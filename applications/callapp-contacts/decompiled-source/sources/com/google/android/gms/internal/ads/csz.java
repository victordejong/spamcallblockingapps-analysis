package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csz.class */
public final class csz<O> {

    /* renamed from: a  reason: collision with root package name */
    final E f26358a;

    /* renamed from: b  reason: collision with root package name */
    final dbt<?> f26359b;

    /* renamed from: c  reason: collision with root package name */
    final List<dbt<?>> f26360c;

    /* renamed from: d  reason: collision with root package name */
    final dbt<O> f26361d;
    final /* synthetic */ cst e;
    private final String f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public csz(cst cstVar, E e, String str, dbt<?> dbtVar, List<dbt<?>> list, dbt<O> dbtVar2) {
        this.e = cstVar;
        this.f26358a = e;
        this.f = str;
        this.f26359b = dbtVar;
        this.f26360c = list;
        this.f26361d = dbtVar2;
    }

    private final <O2> csz<O2> a(daq<O, O2> daqVar, Executor executor) {
        return new csz<>(this.e, this.f26358a, this.f, this.f26359b, this.f26360c, daj.a(this.f26361d, daqVar, executor));
    }

    public final csu<E, O> a() {
        ctg ctgVar;
        E e = this.f26358a;
        String str = this.f;
        String str2 = str;
        if (str == null) {
            str2 = this.e.b((cst) e);
        }
        final csu<E, O> csuVar = new csu<>(e, str2, this.f26361d);
        ctgVar = this.e.f26348d;
        ctgVar.a(csuVar);
        this.f26359b.addListener(new Runnable(this, csuVar) { // from class: com.google.android.gms.internal.ads.cte

            /* renamed from: a  reason: collision with root package name */
            private final csz f26367a;

            /* renamed from: b  reason: collision with root package name */
            private final csu f26368b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26367a = this;
                this.f26368b = csuVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ctg ctgVar2;
                csz cszVar = this.f26367a;
                csu csuVar2 = this.f26368b;
                ctgVar2 = cszVar.e.f26348d;
                ctgVar2.b(csuVar2);
            }
        }, zd.f);
        dbh.a(csuVar, new cth(this, csuVar), zd.f);
        return csuVar;
    }

    public final csz<O> a(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        cst cstVar = this.e;
        E e = this.f26358a;
        String str = this.f;
        dbt<?> dbtVar = this.f26359b;
        List<dbt<?>> list = this.f26360c;
        dbt<O> dbtVar2 = this.f26361d;
        scheduledExecutorService = cstVar.f26347c;
        return new csz<>(cstVar, e, str, dbtVar, list, dbh.a(dbtVar2, j, timeUnit, scheduledExecutorService));
    }

    public final <O2> csz<O2> a(final css<O, O2> cssVar) {
        return a((daq) new daq(cssVar) { // from class: com.google.android.gms.internal.ads.ctd

            /* renamed from: a  reason: collision with root package name */
            private final css f26366a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26366a = cssVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return dbh.a(this.f26366a.a(obj));
            }
        });
    }

    public final <O2> csz<O2> a(daq<O, O2> daqVar) {
        dbs dbsVar;
        dbsVar = this.e.f26346b;
        return a(daqVar, dbsVar);
    }

    public final <O2> csz<O2> a(final dbt<O2> dbtVar) {
        return a(new daq(dbtVar) { // from class: com.google.android.gms.internal.ads.ctc

            /* renamed from: a  reason: collision with root package name */
            private final dbt f26365a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26365a = dbtVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f26365a;
            }
        }, zd.f);
    }

    public final <T extends Throwable> csz<O> a(Class<T> cls, daq<T, O> daqVar) {
        dbs dbsVar;
        cst cstVar = this.e;
        E e = this.f26358a;
        String str = this.f;
        dbt<?> dbtVar = this.f26359b;
        List<dbt<?>> list = this.f26360c;
        dbt<O> dbtVar2 = this.f26361d;
        dbsVar = cstVar.f26346b;
        return new csz<>(cstVar, e, str, dbtVar, list, dac.a(dbtVar2, cls, daqVar, dbsVar));
    }

    public final csz<O> a(E e) {
        return this.e.a((cst) e, (dbt) a());
    }
}
