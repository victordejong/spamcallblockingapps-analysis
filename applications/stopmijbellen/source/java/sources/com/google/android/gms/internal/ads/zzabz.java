package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabz.class */
public final class zzabz {
    public final zzxt zza;
    public zzacn zzd;
    public zzabv zze;
    public int zzf;
    public int zzg;
    public int zzh;
    public int zzi;
    private boolean zzl;
    public final zzacm zzb = new zzacm();
    public final zzfd zzc = new zzfd();
    private final zzfd zzj = new zzfd(1);
    private final zzfd zzk = new zzfd();

    public zzabz(zzxt zzxtVar, zzacn zzacnVar, zzabv zzabvVar) {
        this.zza = zzxtVar;
        this.zzd = zzacnVar;
        this.zze = zzabvVar;
        zzh(zzacnVar, zzabvVar);
    }

    public final int zza() {
        int i = !this.zzl ? this.zzd.zzg[this.zzf] : this.zzb.zzk[this.zzf] ? 1 : 0;
        int i2 = i;
        if (zzf() != null) {
            i2 = i | 1073741824;
        }
        return i2;
    }

    public final int zzb() {
        return !this.zzl ? this.zzd.zzd[this.zzf] : this.zzb.zzh[this.zzf];
    }

    public final int zzc(int i, int i2) {
        zzfd zzfdVar;
        zzacl zzf = zzf();
        if (zzf == null) {
            return 0;
        }
        int i3 = zzf.zzd;
        if (i3 != 0) {
            zzfdVar = this.zzb.zzo;
        } else {
            byte[] bArr = (byte[]) zzfn.zzC(zzf.zze);
            zzfd zzfdVar2 = this.zzk;
            i3 = bArr.length;
            zzfdVar2.zzD(bArr, i3);
            zzfdVar = this.zzk;
        }
        boolean zzc = this.zzb.zzc(this.zzf);
        boolean z = zzc || i2 != 0;
        this.zzj.zzH()[0] = (byte) ((true != z ? 0 : 128) | i3);
        this.zzj.zzF(0);
        this.zza.zzr(this.zzj, 1, 1);
        this.zza.zzr(zzfdVar, i3, 1);
        if (!z) {
            return i3 + 1;
        }
        if (!zzc) {
            this.zzc.zzC(8);
            byte[] zzH = this.zzc.zzH();
            zzH[0] = (byte) 0;
            zzH[1] = (byte) 1;
            zzH[2] = (byte) 0;
            zzH[3] = (byte) i2;
            zzH[4] = (byte) ((i >> 24) & 255);
            zzH[5] = (byte) ((i >> 16) & 255);
            zzH[6] = (byte) ((i >> 8) & 255);
            zzH[7] = (byte) (i & 255);
            this.zza.zzr(this.zzc, 8, 1);
            return i3 + 9;
        }
        zzfd zzfdVar3 = this.zzb.zzo;
        int zzo = zzfdVar3.zzo();
        zzfdVar3.zzG(-2);
        int i4 = (zzo * 6) + 2;
        zzfd zzfdVar4 = zzfdVar3;
        if (i2 != 0) {
            this.zzc.zzC(i4);
            byte[] zzH2 = this.zzc.zzH();
            zzfdVar3.zzB(zzH2, 0, i4);
            int i5 = (((zzH2[2] & 255) << 8) | (zzH2[3] & 255)) + i2;
            zzH2[2] = (byte) ((i5 >> 8) & 255);
            zzH2[3] = (byte) (i5 & 255);
            zzfdVar4 = this.zzc;
        }
        this.zza.zzr(zzfdVar4, i4, 1);
        return i3 + 1 + i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v6 */
    public final long zzd() {
        return !this.zzl ? this.zzd.zzc[this.zzf] : this.zzb.zzf[this.zzh];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final long zze() {
        return !this.zzl ? this.zzd.zzf[this.zzf] : this.zzb.zza(this.zzf);
    }

    public final zzacl zzf() {
        if (!this.zzl) {
            return null;
        }
        zzacm zzacmVar = this.zzb;
        zzabv zzabvVar = zzacmVar.zza;
        int i = zzfn.zza;
        int i2 = zzabvVar.zza;
        zzacl zzaclVar = zzacmVar.zzn;
        if (zzaclVar == null) {
            zzaclVar = this.zzd.zza.zza(i2);
        }
        if (zzaclVar != null && zzaclVar.zza) {
            return zzaclVar;
        }
        return null;
    }

    public final void zzh(zzacn zzacnVar, zzabv zzabvVar) {
        this.zzd = zzacnVar;
        this.zze = zzabvVar;
        this.zza.zzk(zzacnVar.zza.zzf);
        zzi();
    }

    public final void zzi() {
        zzacm zzacmVar = this.zzb;
        zzacmVar.zzd = 0;
        zzacmVar.zzq = 0L;
        zzacmVar.zzr = false;
        zzacmVar.zzl = false;
        zzacmVar.zzp = false;
        zzacmVar.zzn = null;
        this.zzf = 0;
        this.zzh = 0;
        this.zzg = 0;
        this.zzi = 0;
        this.zzl = false;
    }

    public final boolean zzk() {
        this.zzf++;
        if (!this.zzl) {
            return false;
        }
        int i = this.zzg + 1;
        this.zzg = i;
        int[] iArr = this.zzb.zzg;
        int i2 = this.zzh;
        if (i != iArr[i2]) {
            return true;
        }
        this.zzh = i2 + 1;
        this.zzg = 0;
        return false;
    }
}
