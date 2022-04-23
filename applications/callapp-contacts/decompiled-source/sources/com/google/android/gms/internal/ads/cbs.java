package com.google.android.gms.internal.ads;

import android.os.Binder;
import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbs.class */
public final class cbs implements daq<zzauj, cbt> {

    /* renamed from: a  reason: collision with root package name */
    private Executor f25546a;

    /* renamed from: b  reason: collision with root package name */
    private bnv f25547b;

    public cbs(Executor executor, bnv bnvVar) {
        this.f25546a = executor;
        this.f25547b = bnvVar;
    }

    @Override // com.google.android.gms.internal.ads.daq
    public final /* synthetic */ dbt<cbt> zzf(zzauj zzaujVar) throws Exception {
        final zzauj zzaujVar2 = zzaujVar;
        final bnv bnvVar = this.f25547b;
        String str = zzaujVar2.packageName;
        zzr.zzkv();
        dbt<InputStream> a2 = zzj.zzem(str) ? dbh.a((Throwable) new zzcpo(cqj.INTERNAL_ERROR)) : bnvVar.f24770c.a(zzaujVar2);
        final int callingUid = Binder.getCallingUid();
        return daj.a(dbc.c((dbt) a2).a(((Integer) ekb.e().a(aq.dh)).intValue(), TimeUnit.SECONDS, bnvVar.f24768a).a(Throwable.class, new daq(bnvVar, zzaujVar2, callingUid) { // from class: com.google.android.gms.internal.ads.bnu

            /* renamed from: a  reason: collision with root package name */
            private final bnv f24765a;

            /* renamed from: b  reason: collision with root package name */
            private final zzauj f24766b;

            /* renamed from: c  reason: collision with root package name */
            private final int f24767c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24765a = bnvVar;
                this.f24766b = zzaujVar2;
                this.f24767c = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                bnv bnvVar2 = this.f24765a;
                return bnvVar2.f24771d.a().c(this.f24766b, this.f24767c);
            }
        }, bnvVar.f24769b), new daq(zzaujVar2) { // from class: com.google.android.gms.internal.ads.cbq

            /* renamed from: a  reason: collision with root package name */
            private final zzauj f25545a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25545a = zzaujVar2;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return dbh.a(new cbt(new JsonReader(new InputStreamReader((InputStream) obj))).a(this.f25545a.zzdys));
            }
        }, this.f25546a);
    }
}
