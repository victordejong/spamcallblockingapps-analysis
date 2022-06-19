package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhb.class */
public final class zzhb extends zzgq<Void> {
    private final zzhh zza;
    private final boolean zzb;
    private final zzaip zzc;
    private final zzain zzd;
    private zzgz zze;
    private zzgy zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;

    public zzhb(zzhh zzhhVar, boolean z) {
        boolean z2;
        this.zza = zzhhVar;
        if (z) {
            zzhhVar.zzt();
            z2 = true;
        } else {
            z2 = false;
        }
        this.zzb = z2;
        this.zzc = new zzaip();
        this.zzd = new zzain();
        zzhhVar.zzs();
        this.zze = zzgz.zzl(zzhhVar.zzz());
    }

    private final Object zzD(Object obj) {
        Object obj2;
        Object obj3;
        Object obj4 = obj;
        obj2 = this.zze.zzf;
        if (obj2 != null) {
            obj4 = obj;
            if (obj.equals(zzgz.zzb)) {
                obj3 = this.zze.zzf;
                obj4 = obj3;
            }
        }
        return obj4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @RequiresNonNull({"unpreparedMaskingMediaPeriod"})
    private final void zzE(long j) {
        zzgy zzgyVar = this.zzf;
        int zzi = this.zze.zzi(zzgyVar.zza.zza);
        if (zzi == -1) {
            return;
        }
        zzgz zzgzVar = this.zze;
        zzain zzainVar = this.zzd;
        zzgzVar.zzh(zzi, zzainVar, false);
        long j2 = zzainVar.zzd;
        char c = j;
        if (j2 != -9223372036854775807L) {
            c = j;
            if (j >= j2) {
                c = Math.max(0L, j2 - 1);
            }
        }
        zzgyVar.zzo(c);
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final void zzA(zzhe zzheVar) {
        ((zzgy) zzheVar).zzu();
        if (zzheVar == this.zzf) {
            this.zzf = null;
        }
    }

    /* renamed from: zzB */
    public final zzgy zzC(zzhf zzhfVar, zzko zzkoVar, long j) {
        zzgy zzgyVar = new zzgy(zzhfVar, zzkoVar, j, null);
        zzgyVar.zzs(this.zza);
        if (this.zzh) {
            zzgyVar.zzt(zzhfVar.zzc(zzD(zzhfVar.zza)));
        } else {
            this.zzf = zzgyVar;
            if (!this.zzg) {
                this.zzg = true;
                zzw(null, this.zza);
            }
        }
        return zzgyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgq, com.google.android.gms.internal.ads.zzgi
    public final void zza(zzay zzayVar) {
        super.zza(zzayVar);
        if (!this.zzb) {
            this.zzg = true;
            zzw(null, this.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgq, com.google.android.gms.internal.ads.zzgi
    public final void zzd() {
        this.zzh = false;
        this.zzg = false;
        super.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgq, com.google.android.gms.internal.ads.zzhh
    public final void zzu() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00b2, code lost:
        if (r13 != 0) goto L19;
     */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzgq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void zzv(java.lang.Void r8, com.google.android.gms.internal.ads.zzhh r9, com.google.android.gms.internal.ads.zzaiq r10) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhb.zzv(java.lang.Object, com.google.android.gms.internal.ads.zzhh, com.google.android.gms.internal.ads.zzaiq):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgq
    public final /* bridge */ /* synthetic */ zzhf zzx(Void r4, zzhf zzhfVar) {
        Object obj;
        Object obj2;
        Object obj3 = zzhfVar.zza;
        Object obj4 = obj3;
        obj = this.zze.zzf;
        if (obj != null) {
            obj4 = obj3;
            obj2 = this.zze.zzf;
            if (obj2.equals(obj3)) {
                obj4 = zzgz.zzb;
            }
        }
        return zzhfVar.zzc(obj4);
    }

    public final zzaiq zzy() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public final zzagk zzz() {
        return this.zza.zzz();
    }
}
