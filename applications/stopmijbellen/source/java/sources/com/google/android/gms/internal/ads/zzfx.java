package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfx.class */
public abstract class zzfx implements zzil, zzim {
    private final int zza;
    private zzin zzc;
    private int zzd;
    private int zze;
    private zzrn zzf;
    private zzab[] zzg;
    private long zzh;
    private boolean zzj;
    private boolean zzk;
    private final zzhr zzb = new zzhr();
    private long zzi = Long.MIN_VALUE;

    public zzfx(int i) {
        this.zza = i;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzA() {
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzB(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public /* synthetic */ void zzC(float f, float f2) {
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzD() throws zzgg {
        boolean z = true;
        if (this.zze != 1) {
            z = false;
        }
        zzdy.zzf(z);
        this.zze = 2;
        zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzE() {
        zzdy.zzf(this.zze == 2);
        this.zze = 1;
        zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final boolean zzF() {
        return this.zzi == Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final boolean zzG() {
        return this.zzj;
    }

    public final boolean zzH() {
        boolean z;
        if (zzF()) {
            z = this.zzj;
        } else {
            zzrn zzrnVar = this.zzf;
            Objects.requireNonNull(zzrnVar);
            z = zzrnVar.zze();
        }
        return z;
    }

    public final zzab[] zzI() {
        zzab[] zzabVarArr = this.zzg;
        Objects.requireNonNull(zzabVarArr);
        return zzabVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzil, com.google.android.gms.internal.ads.zzim
    public final int zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final int zzbm() {
        return this.zze;
    }

    public final int zzbn(zzhr zzhrVar, zzda zzdaVar, int i) {
        zzrn zzrnVar = this.zzf;
        Objects.requireNonNull(zzrnVar);
        int zza = zzrnVar.zza(zzhrVar, zzdaVar, i);
        if (zza == -4) {
            if (zzdaVar.zzg()) {
                this.zzi = Long.MIN_VALUE;
                return this.zzj ? -4 : -3;
            }
            long j = zzdaVar.zzd + this.zzh;
            zzdaVar.zzd = j;
            this.zzi = Math.max(this.zzi, j);
        } else if (zza == -5) {
            zzab zzabVar = zzhrVar.zza;
            Objects.requireNonNull(zzabVar);
            if (zzabVar.zzq != Long.MAX_VALUE) {
                zzz zzb = zzabVar.zzb();
                zzb.zzW(zzabVar.zzq + this.zzh);
                zzhrVar.zza = zzb.zzY();
                return -5;
            }
        }
        return zza;
    }

    public final zzgg zzbo(Throwable th, zzab zzabVar, boolean z, int i) {
        int i2;
        if (zzabVar != null && !this.zzk) {
            this.zzk = true;
            try {
                int zzN = zzN(zzabVar);
                this.zzk = false;
                i2 = zzN & 7;
            } catch (zzgg e) {
                this.zzk = false;
            } catch (Throwable th2) {
                this.zzk = false;
                throw th2;
            }
            return zzgg.zzb(th, zzJ(), this.zzd, zzabVar, i2, z, i);
        }
        i2 = 4;
        return zzgg.zzb(th, zzJ(), this.zzd, zzabVar, i2, z, i);
    }

    public final int zzd(long j) {
        zzrn zzrnVar = this.zzf;
        Objects.requireNonNull(zzrnVar);
        return zzrnVar.zzb(j - this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzim
    public int zze() throws zzgg {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final long zzf() {
        return this.zzi;
    }

    public final zzhr zzh() {
        zzhr zzhrVar = this.zzb;
        zzhrVar.zzb = null;
        zzhrVar.zza = null;
        return zzhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public zzht zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final zzim zzj() {
        return this;
    }

    public final zzin zzk() {
        zzin zzinVar = this.zzc;
        Objects.requireNonNull(zzinVar);
        return zzinVar;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final zzrn zzl() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzm() {
        boolean z = true;
        if (this.zze != 1) {
            z = false;
        }
        zzdy.zzf(z);
        zzhr zzhrVar = this.zzb;
        zzhrVar.zzb = null;
        zzhrVar.zza = null;
        this.zze = 0;
        this.zzf = null;
        this.zzg = null;
        this.zzj = false;
        zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzn(zzin zzinVar, zzab[] zzabVarArr, zzrn zzrnVar, long j, boolean z, boolean z2, long j2, long j3) throws zzgg {
        zzdy.zzf(this.zze == 0);
        this.zzc = zzinVar;
        this.zze = 1;
        zzr(z, z2);
        zzx(zzabVarArr, zzrnVar, j2, j3);
        zzs(j, z);
    }

    @Override // com.google.android.gms.internal.ads.zzih
    public void zzo(int i, Object obj) throws zzgg {
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzp() throws IOException {
        zzrn zzrnVar = this.zzf;
        Objects.requireNonNull(zzrnVar);
        zzrnVar.zzd();
    }

    public void zzq() {
        throw null;
    }

    public void zzr(boolean z, boolean z2) throws zzgg {
    }

    public void zzs(long j, boolean z) throws zzgg {
        throw null;
    }

    public void zzt() {
    }

    public void zzu() throws zzgg {
    }

    public void zzv() {
    }

    public void zzw(zzab[] zzabVarArr, long j, long j2) throws zzgg {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzx(zzab[] zzabVarArr, zzrn zzrnVar, long j, long j2) throws zzgg {
        zzdy.zzf(!this.zzj);
        this.zzf = zzrnVar;
        if (this.zzi == Long.MIN_VALUE) {
            this.zzi = j;
        }
        this.zzg = zzabVarArr;
        this.zzh = j2;
        zzw(zzabVarArr, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzy() {
        zzdy.zzf(this.zze == 0);
        zzhr zzhrVar = this.zzb;
        zzhrVar.zzb = null;
        zzhrVar.zza = null;
        zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzz(long j) throws zzgg {
        this.zzj = false;
        this.zzi = j;
        zzs(j, false);
    }
}
