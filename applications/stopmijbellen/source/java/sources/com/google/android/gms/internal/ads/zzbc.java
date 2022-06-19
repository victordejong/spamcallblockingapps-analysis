package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbc.class */
public final class zzbc {
    private CharSequence zza;
    private CharSequence zzb;
    private CharSequence zzc;
    private CharSequence zzd;
    private CharSequence zze;
    private byte[] zzf;
    private Integer zzg;
    private Integer zzh;
    private Integer zzi;
    private Integer zzj;
    private Integer zzk;
    private Integer zzl;
    private Integer zzm;
    private Integer zzn;
    private Integer zzo;
    private CharSequence zzp;
    private CharSequence zzq;
    private CharSequence zzr;

    public zzbc() {
    }

    public /* synthetic */ zzbc(zzbe zzbeVar, zzbb zzbbVar) {
        this.zza = zzbeVar.zzc;
        this.zzb = zzbeVar.zzd;
        this.zzc = zzbeVar.zze;
        this.zzd = zzbeVar.zzf;
        this.zze = zzbeVar.zzg;
        this.zzf = zzbeVar.zzh;
        this.zzg = zzbeVar.zzi;
        this.zzh = zzbeVar.zzj;
        this.zzi = zzbeVar.zzk;
        this.zzj = zzbeVar.zzm;
        this.zzk = zzbeVar.zzn;
        this.zzl = zzbeVar.zzo;
        this.zzm = zzbeVar.zzp;
        this.zzn = zzbeVar.zzq;
        this.zzo = zzbeVar.zzr;
        this.zzp = zzbeVar.zzs;
        this.zzq = zzbeVar.zzt;
        this.zzr = zzbeVar.zzu;
    }

    public final zzbc zza(byte[] bArr, int i) {
        if (this.zzf == null || zzfn.zzP(Integer.valueOf(i), 3) || !zzfn.zzP(this.zzg, 3)) {
            this.zzf = (byte[]) bArr.clone();
            this.zzg = Integer.valueOf(i);
        }
        return this;
    }

    public final zzbc zzb(CharSequence charSequence) {
        this.zzd = charSequence;
        return this;
    }

    public final zzbc zzc(CharSequence charSequence) {
        this.zzc = charSequence;
        return this;
    }

    public final zzbc zzd(CharSequence charSequence) {
        this.zzb = charSequence;
        return this;
    }

    public final zzbc zze(CharSequence charSequence) {
        this.zzq = charSequence;
        return this;
    }

    public final zzbc zzf(CharSequence charSequence) {
        this.zzr = charSequence;
        return this;
    }

    public final zzbc zzg(CharSequence charSequence) {
        this.zze = charSequence;
        return this;
    }

    public final zzbc zzh(Integer num) {
        this.zzl = num;
        return this;
    }

    public final zzbc zzi(Integer num) {
        this.zzk = num;
        return this;
    }

    public final zzbc zzj(Integer num) {
        this.zzj = num;
        return this;
    }

    public final zzbc zzk(Integer num) {
        this.zzo = num;
        return this;
    }

    public final zzbc zzl(Integer num) {
        this.zzn = num;
        return this;
    }

    public final zzbc zzm(Integer num) {
        this.zzm = num;
        return this;
    }

    public final zzbc zzn(CharSequence charSequence) {
        this.zza = charSequence;
        return this;
    }

    public final zzbc zzo(Integer num) {
        this.zzi = num;
        return this;
    }

    public final zzbc zzp(Integer num) {
        this.zzh = num;
        return this;
    }

    public final zzbc zzq(CharSequence charSequence) {
        this.zzp = charSequence;
        return this;
    }

    public final zzbe zzr() {
        return new zzbe(this);
    }
}
