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

    /* renamed from: a */
    private Executor f45467a;

    /* renamed from: b */
    private bnv f45468b;

    public cbs(Executor executor, bnv bnvVar) {
        this.f45467a = executor;
        this.f45468b = bnvVar;
    }

    @Override // com.google.android.gms.internal.ads.daq
    public final /* synthetic */ dbt<cbt> zzf(zzauj zzaujVar) throws Exception {
        zzauj zzaujVar2 = zzaujVar;
        bnv bnvVar = this.f45468b;
        String str = zzaujVar2.packageName;
        zzr.zzkv();
        return daj.m16941a(dbc.m16907c((dbt) (zzj.zzem(str) ? dbh.m16898a((Throwable) new zzcpo(cqj.INTERNAL_ERROR)) : bnvVar.f44352c.m17703a(zzaujVar2))).m16912a(((Integer) ekb.m14831e().m18571a(C12187aq.f42830dh)).intValue(), TimeUnit.SECONDS, bnvVar.f44350a).m16908a(Throwable.class, new daq(bnvVar, zzaujVar2, Binder.getCallingUid()) { // from class: com.google.android.gms.internal.ads.bnu

            /* renamed from: a */
            private final bnv f44347a;

            /* renamed from: b */
            private final zzauj f44348b;

            /* renamed from: c */
            private final int f44349c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44347a = bnvVar;
                this.f44348b = zzaujVar2;
                this.f44349c = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                bnv bnvVar2 = this.f44347a;
                return bnvVar2.f44353d.mo14005a().m17690c(this.f44348b, this.f44349c);
            }
        }, bnvVar.f44351b), new daq(zzaujVar2) { // from class: com.google.android.gms.internal.ads.cbq

            /* renamed from: a */
            private final zzauj f45466a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45466a = zzaujVar2;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return dbh.m16899a(new cbt(new JsonReader(new InputStreamReader((InputStream) obj))).m17507a(this.f45466a.zzdys));
            }
        }, this.f45467a);
    }
}
