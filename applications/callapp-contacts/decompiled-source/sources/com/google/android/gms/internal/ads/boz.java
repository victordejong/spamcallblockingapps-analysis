package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/boz.class */
public final class boz {

    /* renamed from: a  reason: collision with root package name */
    final dbs f24820a;

    /* renamed from: b  reason: collision with root package name */
    final bon f24821b;

    /* renamed from: c  reason: collision with root package name */
    final dsb<bpk> f24822c;

    public boz(dbs dbsVar, bon bonVar, dsb<bpk> dsbVar) {
        this.f24820a = dbsVar;
        this.f24821b = bonVar;
        this.f24822c = dsbVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <RetT> dbt<RetT> a(final zzauj zzaujVar, bpg<InputStream> bpgVar, final bpg<InputStream> bpgVar2, final daq<InputStream, RetT> daqVar) {
        String str = zzaujVar.packageName;
        zzr.zzkv();
        return dbc.c(zzj.zzem(str) ? dbh.a((Throwable) new zzcpo(cqj.INTERNAL_ERROR)) : dac.a(bpgVar.a(zzaujVar), ExecutionException.class, boy.f24819a, this.f24820a)).a(daqVar, this.f24820a).a(zzcpo.class, new daq(this, bpgVar2, zzaujVar, daqVar) { // from class: com.google.android.gms.internal.ads.bpb

            /* renamed from: a  reason: collision with root package name */
            private final boz f24824a;

            /* renamed from: b  reason: collision with root package name */
            private final bpg f24825b;

            /* renamed from: c  reason: collision with root package name */
            private final zzauj f24826c;

            /* renamed from: d  reason: collision with root package name */
            private final daq f24827d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24824a = this;
                this.f24825b = bpgVar2;
                this.f24826c = zzaujVar;
                this.f24827d = daqVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                boz bozVar = this.f24824a;
                bpg bpgVar3 = this.f24825b;
                zzauj zzaujVar2 = this.f24826c;
                return daj.a(bpgVar3.a(zzaujVar2), this.f24827d, bozVar.f24820a);
            }
        }, this.f24820a);
    }
}
