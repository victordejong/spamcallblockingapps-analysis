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

    /* renamed from: f */
    private static final Pattern f44354f = Pattern.compile("Received error HTTP response code: (.*)");

    /* renamed from: a */
    final cpo f44355a;

    /* renamed from: b */
    private final bmw f44356b;

    /* renamed from: c */
    private final dbs f44357c;

    /* renamed from: d */
    private final ScheduledExecutorService f44358d;

    /* renamed from: e */
    private final brb f44359e;

    public bnw(cpo cpoVar, bmw bmwVar, dbs dbsVar, ScheduledExecutorService scheduledExecutorService, brb brbVar) {
        this.f44355a = cpoVar;
        this.f44356b = bmwVar;
        this.f44357c = dbsVar;
        this.f44358d = scheduledExecutorService;
        this.f44359e = brbVar;
    }

    @Override // com.google.android.gms.internal.ads.box
    /* renamed from: a */
    public final dbt<cpk> mo17699a(zzauj zzaujVar) {
        bmw bmwVar = this.f44356b;
        String str = zzaujVar.packageName;
        zzr.zzkv();
        dbt<cpk> m16941a = daj.m16941a(dac.m16972a(zzj.zzem(str) ? dbh.m16898a((Throwable) new zzcpo(cqj.INTERNAL_ERROR)) : dac.m16972a(bmwVar.f44313a.mo16890a(new Callable(bmwVar, zzaujVar) { // from class: com.google.android.gms.internal.ads.bmy

            /* renamed from: a */
            private final bmw f44318a;

            /* renamed from: b */
            private final zzauj f44319b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44318a = bmwVar;
                this.f44319b = zzaujVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                bmw bmwVar2 = this.f44318a;
                return bmwVar2.f44315c.m17705a(this.f44319b).get(((Integer) ekb.m14831e().m18571a(C12187aq.f42830dh)).intValue(), TimeUnit.SECONDS);
            }
        }), ExecutionException.class, bmx.f44317a, bmwVar.f44314b), zzcpo.class, new daq(bmwVar, zzaujVar, Binder.getCallingUid()) { // from class: com.google.android.gms.internal.ads.bna

            /* renamed from: a */
            private final bmw f44324a;

            /* renamed from: b */
            private final zzauj f44325b;

            /* renamed from: c */
            private final int f44326c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44324a = bmwVar;
                this.f44325b = zzaujVar;
                this.f44326c = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                bmw bmwVar2 = this.f44324a;
                return bmwVar2.f44316d.mo14005a().m17694a(this.f44325b, this.f44326c);
            }
        }, bmwVar.f44314b), new daq(this) { // from class: com.google.android.gms.internal.ads.bnz

            /* renamed from: a */
            private final bnw f44365a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44365a = this;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return dbh.m16899a(new cpk(new cpf(this.f44365a.f44355a), cpi.m17365a(new InputStreamReader((InputStream) obj))));
            }
        }, this.f44357c);
        dbt<cpk> dbtVar = m16941a;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42829dg)).booleanValue()) {
            dbtVar = dac.m16972a(dbh.m16902a(m16941a, ((Integer) ekb.m14831e().m18571a(C12187aq.f42830dh)).intValue(), TimeUnit.SECONDS, this.f44358d), TimeoutException.class, bny.f44364a, C13091zd.f50123f);
        }
        dbh.m16901a(dbtVar, new bob(this), C13091zd.f50123f);
        return dbtVar;
    }
}
