package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcob.class */
public final class zzcob {
    private final zzdzv zzghl;
    private final zzepv<zzcol> zzgnt;
    private final zzcns zzgpg;

    public zzcob(zzdzv zzdzvVar, zzcns zzcnsVar, zzepv<zzcol> zzepvVar) {
        this.zzghl = zzdzvVar;
        this.zzgpg = zzcnsVar;
        this.zzgnt = zzepvVar;
    }

    private final <RetT> zzdzw<RetT> zza(zzatq zzatqVar, zzcom<InputStream> zzcomVar, zzcom<InputStream> zzcomVar2, zzdyu<InputStream, RetT> zzdyuVar) {
        String str = zzatqVar.packageName;
        zzr.zzkr();
        return zzdzf.zzg(zzj.zzek(str) ? zzdzk.immediateFailedFuture(new zzcoc(zzdom.INTERNAL_ERROR)) : zzdzk.zzb(zzcomVar.zzq(zzatqVar), ExecutionException.class, zzcoe.zzboq, this.zzghl)).zzb(zzdyuVar, this.zzghl).zza(zzcoc.class, new zzdyu(this, zzcomVar2, zzatqVar, zzdyuVar) { // from class: com.google.android.gms.internal.ads.zzcod
            private final zzcob zzgph;
            private final zzcom zzgpi;
            private final zzatq zzgpj;
            private final zzdyu zzgpk;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgph = this;
                this.zzgpi = zzcomVar2;
                this.zzgpj = zzatqVar;
                this.zzgpk = zzdyuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgph.zza(this.zzgpi, this.zzgpj, this.zzgpk, (zzcoc) obj);
            }
        }, this.zzghl);
    }

    public final /* synthetic */ zzdzw zza(zzcom zzcomVar, zzatq zzatqVar, zzdyu zzdyuVar, zzcoc zzcocVar) throws Exception {
        return zzdzk.zzb(zzcomVar.zzq(zzatqVar), zzdyuVar, this.zzghl);
    }

    public final zzdzw<zzatq> zzl(zzatq zzatqVar) {
        zzdyu zzdyuVar = new zzdyu(zzatqVar) { // from class: com.google.android.gms.internal.ads.zzcog
            private final zzatq zzfzs;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzs = zzatqVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                zzatq zzatqVar2 = this.zzfzs;
                zzatqVar2.zzdxl = new String(zzdyc.toByteArray((InputStream) obj), zzdvx.UTF_8);
                return zzdzk.zzag(zzatqVar2);
            }
        };
        zzcns zzcnsVar = this.zzgpg;
        zzcnsVar.getClass();
        return zza(zzatqVar, zzcof.zza(zzcnsVar), new zzcom(this) { // from class: com.google.android.gms.internal.ads.zzcoi
            private final zzcob zzgph;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgph = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcom
            public final zzdzw zzq(zzatq zzatqVar2) {
                return this.zzgph.zzp(zzatqVar2);
            }
        }, zzdyuVar);
    }

    public final zzdzw<Void> zzm(zzatq zzatqVar) {
        if (zzfh.zzar(zzatqVar.zzdxl)) {
            return zzdzk.immediateFailedFuture(new zzcmb(zzdom.INVALID_REQUEST, "Pool key missing from removeUrl call."));
        }
        return zza(zzatqVar, new zzcom(this) { // from class: com.google.android.gms.internal.ads.zzcok
            private final zzcob zzgph;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgph = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcom
            public final zzdzw zzq(zzatq zzatqVar2) {
                return this.zzgph.zzo(zzatqVar2);
            }
        }, new zzcom(this) { // from class: com.google.android.gms.internal.ads.zzcoj
            private final zzcob zzgph;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgph = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcom
            public final zzdzw zzq(zzatq zzatqVar2) {
                return this.zzgph.zzn(zzatqVar2);
            }
        }, zzcoh.zzboq);
    }

    public final /* synthetic */ zzdzw zzn(zzatq zzatqVar) {
        return this.zzgnt.get().zzgj(zzatqVar.zzdxl);
    }

    public final /* synthetic */ zzdzw zzo(zzatq zzatqVar) {
        return this.zzgpg.zzgi(zzatqVar.zzdxl);
    }

    public final /* synthetic */ zzdzw zzp(zzatq zzatqVar) {
        return this.zzgnt.get().zzc(zzatqVar, Binder.getCallingUid());
    }
}
