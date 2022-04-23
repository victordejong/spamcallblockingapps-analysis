package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bnw.class */
public final class bnw implements box {
    private static final Pattern f = Pattern.compile("Received error HTTP response code: (.*)");

    /* renamed from: a  reason: collision with root package name */
    final cpo f24772a;

    /* renamed from: b  reason: collision with root package name */
    private final bmw f24773b;

    /* renamed from: c  reason: collision with root package name */
    private final dbs f24774c;

    /* renamed from: d  reason: collision with root package name */
    private final ScheduledExecutorService f24775d;
    private final brb e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bnw(cpo cpoVar, bmw bmwVar, dbs dbsVar, ScheduledExecutorService scheduledExecutorService, brb brbVar) {
        this.f24772a = cpoVar;
        this.f24773b = bmwVar;
        this.f24774c = dbsVar;
        this.f24775d = scheduledExecutorService;
        this.e = brbVar;
    }

    @Override // com.google.android.gms.internal.ads.box
    public final dbt<cpk> a(final zzauj zzaujVar) {
        final bmw bmwVar = this.f24773b;
        String str = zzaujVar.packageName;
        zzr.zzkv();
        dbt a2 = zzj.zzem(str) ? dbh.a((Throwable) new zzcpo(cqj.INTERNAL_ERROR)) : dac.a(bmwVar.f24731a.a(new Callable(bmwVar, zzaujVar) { // from class: com.google.android.gms.internal.ads.bmy

            /* renamed from: a  reason: collision with root package name */
            private final bmw f24736a;

            /* renamed from: b  reason: collision with root package name */
            private final zzauj f24737b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24736a = bmwVar;
                this.f24737b = zzaujVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                bmw bmwVar2 = this.f24736a;
                return bmwVar2.f24733c.a(this.f24737b).get(((Integer) ekb.e().a(aq.dh)).intValue(), TimeUnit.SECONDS);
            }
        }), ExecutionException.class, bmx.f24735a, bmwVar.f24732b);
        final int callingUid = Binder.getCallingUid();
        dbt<cpk> a3 = daj.a(dac.a(a2, zzcpo.class, new daq(bmwVar, zzaujVar, callingUid) { // from class: com.google.android.gms.internal.ads.bna

            /* renamed from: a  reason: collision with root package name */
            private final bmw f24742a;

            /* renamed from: b  reason: collision with root package name */
            private final zzauj f24743b;

            /* renamed from: c  reason: collision with root package name */
            private final int f24744c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24742a = bmwVar;
                this.f24743b = zzaujVar;
                this.f24744c = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                bmw bmwVar2 = this.f24742a;
                return bmwVar2.f24734d.a().a(this.f24743b, this.f24744c);
            }
        }, bmwVar.f24732b), new daq(this) { // from class: com.google.android.gms.internal.ads.bnz

            /* renamed from: a  reason: collision with root package name */
            private final bnw f24781a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24781a = this;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return dbh.a(new cpk(new cpf(this.f24781a.f24772a), cpi.a(new InputStreamReader((InputStream) obj))));
            }
        }, this.f24774c);
        dbt<cpk> dbtVar = a3;
        if (((Boolean) ekb.e().a(aq.dg)).booleanValue()) {
            dbtVar = dac.a(dbh.a(a3, ((Integer) ekb.e().a(aq.dh)).intValue(), TimeUnit.SECONDS, this.f24775d), TimeoutException.class, bny.f24780a, zd.f);
        }
        dbh.a(dbtVar, new bob(this), zd.f);
        return dbtVar;
    }
}
