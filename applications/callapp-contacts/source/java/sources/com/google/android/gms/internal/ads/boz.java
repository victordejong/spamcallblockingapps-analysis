package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/boz.class */
public final class boz {

    /* renamed from: a */
    final dbs f44409a;

    /* renamed from: b */
    final bon f44410b;

    /* renamed from: c */
    final dsb<bpk> f44411c;

    public boz(dbs dbsVar, bon bonVar, dsb<bpk> dsbVar) {
        this.f44409a = dbsVar;
        this.f44410b = bonVar;
        this.f44411c = dsbVar;
    }

    /* renamed from: a */
    public final <RetT> dbt<RetT> m17698a(zzauj zzaujVar, bpg<InputStream> bpgVar, bpg<InputStream> bpgVar2, daq<InputStream, RetT> daqVar) {
        String str = zzaujVar.packageName;
        zzr.zzkv();
        return dbc.m16907c(zzj.zzem(str) ? dbh.m16898a((Throwable) new zzcpo(cqj.INTERNAL_ERROR)) : dac.m16972a(bpgVar.mo17697a(zzaujVar), ExecutionException.class, boy.f44408a, this.f44409a)).m16910a(daqVar, this.f44409a).m16908a(zzcpo.class, new daq(this, bpgVar2, zzaujVar, daqVar) { // from class: com.google.android.gms.internal.ads.bpb

            /* renamed from: a */
            private final boz f44413a;

            /* renamed from: b */
            private final bpg f44414b;

            /* renamed from: c */
            private final zzauj f44415c;

            /* renamed from: d */
            private final daq f44416d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44413a = this;
                this.f44414b = bpgVar2;
                this.f44415c = zzaujVar;
                this.f44416d = daqVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                boz bozVar = this.f44413a;
                bpg bpgVar3 = this.f44414b;
                zzauj zzaujVar2 = this.f44415c;
                return daj.m16941a(bpgVar3.mo17697a(zzaujVar2), this.f44416d, bozVar.f44409a);
            }
        }, this.f44409a);
    }
}
