package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpv.class */
public final class zzpv extends zzpk<Void> {
    private final zzqb zza;
    private final boolean zzb;
    private final zzcc zzc;
    private final zzca zzd;
    private zzpt zze;
    private zzps zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;

    public zzpv(zzqb zzqbVar, boolean z) {
        boolean z2;
        this.zza = zzqbVar;
        if (z) {
            zzqbVar.zzt();
            z2 = true;
        } else {
            z2 = false;
        }
        this.zzb = z2;
        this.zzc = new zzcc();
        this.zzd = new zzca();
        zzqbVar.zzF();
        this.zze = zzpt.zzq(zzqbVar.zzy());
    }

    private final Object zzD(Object obj) {
        Object obj2;
        Object obj3;
        Object obj4 = obj;
        obj2 = this.zze.zzf;
        if (obj2 != null) {
            obj4 = obj;
            if (obj.equals(zzpt.zzd)) {
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
        zzps zzpsVar = this.zzf;
        int zza = this.zze.zza(zzpsVar.zza.zza);
        if (zza == -1) {
            return;
        }
        zzpt zzptVar = this.zze;
        zzca zzcaVar = this.zzd;
        zzptVar.zzd(zza, zzcaVar, false);
        long j2 = zzcaVar.zze;
        char c = j;
        if (j2 != -9223372036854775807L) {
            c = j;
            if (j >= j2) {
                c = Math.max(0L, j2 - 1);
            }
        }
        zzpsVar.zzs(c);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzA(zzpy zzpyVar) {
        ((zzps) zzpyVar).zzt();
        if (zzpyVar == this.zzf) {
            this.zzf = null;
        }
    }

    /* renamed from: zzB */
    public final zzps zzC(zzpz zzpzVar, zztk zztkVar, long j) {
        zzps zzpsVar = new zzps(zzpzVar, zztkVar, j, null);
        zzpsVar.zzu(this.zza);
        if (this.zzh) {
            zzpsVar.zzr(zzpzVar.zzc(zzD(zzpzVar.zza)));
        } else {
            this.zzf = zzpsVar;
            if (!this.zzg) {
                this.zzg = true;
                zzx(null, this.zza);
            }
        }
        return zzpsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpk, com.google.android.gms.internal.ads.zzpc
    public final void zzm(zzdx zzdxVar) {
        super.zzm(zzdxVar);
        if (!this.zzb) {
            this.zzg = true;
            zzx(null, this.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpk, com.google.android.gms.internal.ads.zzpc
    public final void zzp() {
        this.zzh = false;
        this.zzg = false;
        super.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzpk
    public final /* bridge */ /* synthetic */ zzpz zzu(Void r4, zzpz zzpzVar) {
        Object obj;
        Object obj2;
        Object obj3 = zzpzVar.zza;
        Object obj4 = obj3;
        obj = this.zze.zzf;
        if (obj != null) {
            obj4 = obj3;
            obj2 = this.zze.zzf;
            if (obj2.equals(obj3)) {
                obj4 = zzpt.zzd;
            }
        }
        return zzpzVar.zzc(obj4);
    }

    @Override // com.google.android.gms.internal.ads.zzpk, com.google.android.gms.internal.ads.zzqb
    public final void zzv() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00b2, code lost:
        if (r13 != 0) goto L19;
     */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzpk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void zzw(java.lang.Void r8, com.google.android.gms.internal.ads.zzqb r9, com.google.android.gms.internal.ads.zzcd r10) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpv.zzw(java.lang.Object, com.google.android.gms.internal.ads.zzqb, com.google.android.gms.internal.ads.zzcd):void");
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final zzaz zzy() {
        return this.zza.zzy();
    }

    public final zzcd zzz() {
        return this.zze;
    }
}
