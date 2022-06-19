package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csz.class */
public final class csz<O> {

    /* renamed from: a */
    final E f46502a;

    /* renamed from: b */
    final dbt<?> f46503b;

    /* renamed from: c */
    final List<dbt<?>> f46504c;

    /* renamed from: d */
    final dbt<O> f46505d;

    /* renamed from: e */
    final /* synthetic */ cst f46506e;

    /* renamed from: f */
    private final String f46507f;

    public csz(cst cstVar, E e, String str, dbt<?> dbtVar, List<dbt<?>> list, dbt<O> dbtVar2) {
        this.f46506e = cstVar;
        this.f46502a = e;
        this.f46507f = str;
        this.f46503b = dbtVar;
        this.f46504c = list;
        this.f46505d = dbtVar2;
    }

    /* renamed from: a */
    private final <O2> csz<O2> m17247a(daq<O, O2> daqVar, Executor executor) {
        return new csz<>(this.f46506e, this.f46502a, this.f46507f, this.f46503b, this.f46504c, daj.m16941a(this.f46505d, daqVar, executor));
    }

    /* renamed from: a */
    public final csu<E, O> m17251a() {
        ctg ctgVar;
        E e = this.f46502a;
        String str = this.f46507f;
        String str2 = str;
        if (str == null) {
            str2 = this.f46506e.mo17243b((cst) e);
        }
        csu<E, O> csuVar = new csu<>(e, str2, this.f46505d);
        ctgVar = this.f46506e.f46492d;
        ctgVar.mo17242a(csuVar);
        this.f46503b.addListener(new Runnable(this, csuVar) { // from class: com.google.android.gms.internal.ads.cte

            /* renamed from: a */
            private final csz f46513a;

            /* renamed from: b */
            private final csu f46514b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46513a = this;
                this.f46514b = csuVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ctg ctgVar2;
                csz cszVar = this.f46513a;
                csu csuVar2 = this.f46514b;
                ctgVar2 = cszVar.f46506e.f46492d;
                ctgVar2.mo17240b(csuVar2);
            }
        }, C13091zd.f50123f);
        dbh.m16901a(csuVar, new cth(this, csuVar), C13091zd.f50123f);
        return csuVar;
    }

    /* renamed from: a */
    public final csz<O> m17250a(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        cst cstVar = this.f46506e;
        E e = this.f46502a;
        String str = this.f46507f;
        dbt<?> dbtVar = this.f46503b;
        List<dbt<?>> list = this.f46504c;
        dbt<O> dbtVar2 = this.f46505d;
        scheduledExecutorService = cstVar.f46491c;
        return new csz<>(cstVar, e, str, dbtVar, list, dbh.m16902a(dbtVar2, j, timeUnit, scheduledExecutorService));
    }

    /* renamed from: a */
    public final <O2> csz<O2> m17249a(css<O, O2> cssVar) {
        return m17248a((daq) new daq(cssVar) { // from class: com.google.android.gms.internal.ads.ctd

            /* renamed from: a */
            private final css f46512a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46512a = cssVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return dbh.m16899a(this.f46512a.mo17263a(obj));
            }
        });
    }

    /* renamed from: a */
    public final <O2> csz<O2> m17248a(daq<O, O2> daqVar) {
        dbs dbsVar;
        dbsVar = this.f46506e.f46490b;
        return m17247a(daqVar, dbsVar);
    }

    /* renamed from: a */
    public final <O2> csz<O2> m17246a(dbt<O2> dbtVar) {
        return m17247a(new daq(dbtVar) { // from class: com.google.android.gms.internal.ads.ctc

            /* renamed from: a */
            private final dbt f46511a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f46511a = dbtVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f46511a;
            }
        }, C13091zd.f50123f);
    }

    /* renamed from: a */
    public final <T extends Throwable> csz<O> m17245a(Class<T> cls, daq<T, O> daqVar) {
        dbs dbsVar;
        cst cstVar = this.f46506e;
        E e = this.f46502a;
        String str = this.f46507f;
        dbt<?> dbtVar = this.f46503b;
        List<dbt<?>> list = this.f46504c;
        dbt<O> dbtVar2 = this.f46505d;
        dbsVar = cstVar.f46490b;
        return new csz<>(cstVar, e, str, dbtVar, list, dac.m16972a(dbtVar2, cls, daqVar, dbsVar));
    }

    /* renamed from: a */
    public final csz<O> m17244a(E e) {
        return this.f46506e.m17259a((cst) e, (dbt) m17251a());
    }
}
