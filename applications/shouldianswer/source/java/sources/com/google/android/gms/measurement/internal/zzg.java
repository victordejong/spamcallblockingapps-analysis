package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzg.class */
public final class zzg {
    private final zzga zza;
    private long zzaa;
    private long zzab;
    private long zzac;
    private String zzad;
    private boolean zzae;
    private long zzaf;
    private long zzag;
    private final String zzb;
    private String zzc;
    private String zzd;
    private String zze;
    private String zzf;
    private long zzg;
    private long zzh;
    private long zzi;
    private String zzj;
    private long zzk;
    private String zzl;
    private long zzm;
    private long zzn;
    private boolean zzo;
    private long zzp;
    private boolean zzq;
    private boolean zzr;
    private String zzs;
    private Boolean zzt;
    private long zzu;
    private List<String> zzv;
    private String zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    public zzg(zzga zzgaVar, String str) {
        Preconditions.checkNotNull(zzgaVar);
        Preconditions.checkNotEmpty(str);
        this.zza = zzgaVar;
        this.zzb = str;
        this.zza.zzq().zzd();
    }

    public final void zza(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzh != j;
        this.zzh = j;
    }

    public final void zza(Boolean bool) {
        this.zza.zzq().zzd();
        this.zzae |= !zzkm.zza(this.zzt, bool);
        this.zzt = bool;
    }

    public final void zza(String str) {
        this.zza.zzq().zzd();
        this.zzae |= !zzkm.zzc(this.zzc, str);
        this.zzc = str;
    }

    public final void zza(List<String> list) {
        this.zza.zzq().zzd();
        if (!zzkm.zza(this.zzv, list)) {
            this.zzae = true;
            this.zzv = list != null ? new ArrayList(list) : null;
        }
    }

    public final void zza(boolean z) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzo != z;
        this.zzo = z;
    }

    public final boolean zza() {
        this.zza.zzq().zzd();
        return this.zzae;
    }

    public final long zzaa() {
        this.zza.zzq().zzd();
        return this.zzac;
    }

    public final long zzab() {
        this.zza.zzq().zzd();
        return this.zzab;
    }

    public final String zzac() {
        this.zza.zzq().zzd();
        return this.zzad;
    }

    public final String zzad() {
        this.zza.zzq().zzd();
        String str = this.zzad;
        zzi((String) null);
        return str;
    }

    public final long zzae() {
        this.zza.zzq().zzd();
        return this.zzp;
    }

    public final boolean zzaf() {
        this.zza.zzq().zzd();
        return this.zzq;
    }

    public final boolean zzag() {
        this.zza.zzq().zzd();
        return this.zzr;
    }

    public final Boolean zzah() {
        this.zza.zzq().zzd();
        return this.zzt;
    }

    public final List<String> zzai() {
        this.zza.zzq().zzd();
        return this.zzv;
    }

    public final void zzb() {
        this.zza.zzq().zzd();
        this.zzae = false;
    }

    public final void zzb(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzi != j;
        this.zzi = j;
    }

    public final void zzb(String str) {
        this.zza.zzq().zzd();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.zzae |= !zzkm.zzc(this.zzd, str2);
        this.zzd = str2;
    }

    public final void zzb(boolean z) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzq != z;
        this.zzq = z;
    }

    public final String zzc() {
        this.zza.zzq().zzd();
        return this.zzb;
    }

    public final void zzc(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzk != j;
        this.zzk = j;
    }

    public final void zzc(String str) {
        this.zza.zzq().zzd();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.zzae |= !zzkm.zzc(this.zzs, str2);
        this.zzs = str2;
    }

    public final void zzc(boolean z) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzr != z;
        this.zzr = z;
    }

    public final String zzd() {
        this.zza.zzq().zzd();
        return this.zzc;
    }

    public final void zzd(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzm != j;
        this.zzm = j;
    }

    public final void zzd(String str) {
        this.zza.zzq().zzd();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.zzae |= !zzkm.zzc(this.zzw, str2);
        this.zzw = str2;
    }

    public final String zze() {
        this.zza.zzq().zzd();
        return this.zzd;
    }

    public final void zze(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzn != j;
        this.zzn = j;
    }

    public final void zze(String str) {
        this.zza.zzq().zzd();
        this.zzae |= !zzkm.zzc(this.zze, str);
        this.zze = str;
    }

    public final String zzf() {
        this.zza.zzq().zzd();
        return this.zzs;
    }

    public final void zzf(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzu != j;
        this.zzu = j;
    }

    public final void zzf(String str) {
        this.zza.zzq().zzd();
        this.zzae |= !zzkm.zzc(this.zzf, str);
        this.zzf = str;
    }

    public final String zzg() {
        this.zza.zzq().zzd();
        return this.zzw;
    }

    public final void zzg(long j) {
        boolean z = true;
        Preconditions.checkArgument(j >= 0);
        this.zza.zzq().zzd();
        boolean z2 = this.zzae;
        if (this.zzg == j) {
            z = false;
        }
        this.zzae = z2 | z;
        this.zzg = j;
    }

    public final void zzg(String str) {
        this.zza.zzq().zzd();
        this.zzae |= !zzkm.zzc(this.zzj, str);
        this.zzj = str;
    }

    public final String zzh() {
        this.zza.zzq().zzd();
        return this.zze;
    }

    public final void zzh(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzaf != j;
        this.zzaf = j;
    }

    public final void zzh(String str) {
        this.zza.zzq().zzd();
        this.zzae |= !zzkm.zzc(this.zzl, str);
        this.zzl = str;
    }

    public final String zzi() {
        this.zza.zzq().zzd();
        return this.zzf;
    }

    public final void zzi(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzag != j;
        this.zzag = j;
    }

    public final void zzi(String str) {
        this.zza.zzq().zzd();
        this.zzae |= !zzkm.zzc(this.zzad, str);
        this.zzad = str;
    }

    public final long zzj() {
        this.zza.zzq().zzd();
        return this.zzh;
    }

    public final void zzj(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzx != j;
        this.zzx = j;
    }

    public final long zzk() {
        this.zza.zzq().zzd();
        return this.zzi;
    }

    public final void zzk(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzy != j;
        this.zzy = j;
    }

    public final String zzl() {
        this.zza.zzq().zzd();
        return this.zzj;
    }

    public final void zzl(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzz != j;
        this.zzz = j;
    }

    public final long zzm() {
        this.zza.zzq().zzd();
        return this.zzk;
    }

    public final void zzm(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzaa != j;
        this.zzaa = j;
    }

    public final String zzn() {
        this.zza.zzq().zzd();
        return this.zzl;
    }

    public final void zzn(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzac != j;
        this.zzac = j;
    }

    public final long zzo() {
        this.zza.zzq().zzd();
        return this.zzm;
    }

    public final void zzo(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzab != j;
        this.zzab = j;
    }

    public final long zzp() {
        this.zza.zzq().zzd();
        return this.zzn;
    }

    public final void zzp(long j) {
        this.zza.zzq().zzd();
        this.zzae |= this.zzp != j;
        this.zzp = j;
    }

    public final long zzq() {
        this.zza.zzq().zzd();
        return this.zzu;
    }

    public final boolean zzr() {
        this.zza.zzq().zzd();
        return this.zzo;
    }

    public final long zzs() {
        this.zza.zzq().zzd();
        return this.zzg;
    }

    public final long zzt() {
        this.zza.zzq().zzd();
        return this.zzaf;
    }

    public final long zzu() {
        this.zza.zzq().zzd();
        return this.zzag;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public final void zzv() {
        this.zza.zzq().zzd();
        ?? r0 = this.zzg + 1;
        char c = r0;
        if (r0 > 2147483647L) {
            this.zza.zzr().zzi().zza("Bundle index overflow. appId", zzew.zza(this.zzb));
            c = 0;
        }
        this.zzae = true;
        this.zzg = c;
    }

    public final long zzw() {
        this.zza.zzq().zzd();
        return this.zzx;
    }

    public final long zzx() {
        this.zza.zzq().zzd();
        return this.zzy;
    }

    public final long zzy() {
        this.zza.zzq().zzd();
        return this.zzz;
    }

    public final long zzz() {
        this.zza.zzq().zzd();
        return this.zzaa;
    }
}
