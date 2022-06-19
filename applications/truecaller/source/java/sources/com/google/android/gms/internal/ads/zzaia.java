package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaia.class */
public final class zzaia {
    private final Context zza;
    private final zzahy zzb;
    private final zzaku zzc;
    private zzjz zzd;
    private final zzhq zze;
    private zzafy zzf;
    private final zzki zzg;
    private final zzcy zzh;
    private boolean zzl;
    private final Looper zzi = zzamq.zzk();
    private final zzg zzj = zzg.zza;
    private final zzahz zzk = zzahz.zze;
    private final zzadz zzm = new zzadz(0.97f, 1.03f, 1000, 1.0E-7f, zzadx.zzb(20), zzadx.zzb(500), 0.999f, null);

    @Deprecated
    public zzaia(Context context, zzahy zzahyVar) {
        zznq zznqVar = new zznq();
        zzjt zzjtVar = new zzjt(context);
        zzgt zzgtVar = new zzgt(context, zznqVar);
        zzaea zzaeaVar = new zzaea();
        zzkr zzg = zzkr.zzg(context);
        zzaku zzakuVar = zzaku.zza;
        zzcy zzcyVar = new zzcy(zzakuVar);
        this.zza = context;
        this.zzb = zzahyVar;
        this.zzd = zzjtVar;
        this.zze = zzgtVar;
        this.zzf = zzaeaVar;
        this.zzg = zzg;
        this.zzh = zzcyVar;
        this.zzc = zzakuVar;
    }

    public static /* synthetic */ Context zza(zzaia zzaiaVar) {
        return zzaiaVar.zza;
    }

    public static /* synthetic */ zzahy zzb(zzaia zzaiaVar) {
        return zzaiaVar.zzb;
    }

    public static /* synthetic */ zzaku zzc(zzaia zzaiaVar) {
        return zzaiaVar.zzc;
    }

    public static /* synthetic */ zzjz zzd(zzaia zzaiaVar) {
        return zzaiaVar.zzd;
    }

    public static /* synthetic */ zzhq zze(zzaia zzaiaVar) {
        return zzaiaVar.zze;
    }

    public static /* synthetic */ zzafy zzf(zzaia zzaiaVar) {
        return zzaiaVar.zzf;
    }

    public static /* synthetic */ zzki zzg(zzaia zzaiaVar) {
        return zzaiaVar.zzg;
    }

    public static /* synthetic */ zzcy zzh(zzaia zzaiaVar) {
        return zzaiaVar.zzh;
    }

    public static /* synthetic */ Looper zzi(zzaia zzaiaVar) {
        return zzaiaVar.zzi;
    }

    public static /* synthetic */ zzg zzj(zzaia zzaiaVar) {
        return zzaiaVar.zzj;
    }

    public static /* synthetic */ zzahz zzk(zzaia zzaiaVar) {
        return zzaiaVar.zzk;
    }

    public static /* synthetic */ zzadz zzo(zzaia zzaiaVar) {
        return zzaiaVar.zzm;
    }

    @Deprecated
    public final zzaia zzl(zzjz zzjzVar) {
        zzakt.zzd(!this.zzl);
        this.zzd = zzjzVar;
        return this;
    }

    @Deprecated
    public final zzaia zzm(zzafy zzafyVar) {
        zzakt.zzd(!this.zzl);
        this.zzf = zzafyVar;
        return this;
    }

    @Deprecated
    public final zzaie zzn() {
        zzakt.zzd(!this.zzl);
        this.zzl = true;
        return new zzaie(this);
    }
}
