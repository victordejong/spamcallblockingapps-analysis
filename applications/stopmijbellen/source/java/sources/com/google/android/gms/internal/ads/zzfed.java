package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfed.class */
public final class zzfed {
    private zzbfd zza;
    private zzbfi zzb;
    private String zzc;
    private zzbkq zzd;
    private boolean zze;
    private ArrayList<String> zzf;
    private ArrayList<String> zzg;
    private zzbnw zzh;
    private zzbfo zzi;
    private AdManagerAdViewOptions zzj;
    private PublisherAdViewOptions zzk;
    private zzbhr zzl;
    private zzbtz zzn;
    private zzeox zzq;
    private zzbhv zzr;
    private int zzm = 1;
    private final zzfdt zzo = new zzfdt();
    private boolean zzp = false;

    public static /* bridge */ /* synthetic */ String zzG(zzfed zzfedVar) {
        return zzfedVar.zzc;
    }

    public static /* bridge */ /* synthetic */ ArrayList zzI(zzfed zzfedVar) {
        return zzfedVar.zzf;
    }

    public static /* bridge */ /* synthetic */ ArrayList zzJ(zzfed zzfedVar) {
        return zzfedVar.zzg;
    }

    public static /* bridge */ /* synthetic */ boolean zzK(zzfed zzfedVar) {
        return zzfedVar.zzp;
    }

    public static /* bridge */ /* synthetic */ boolean zzL(zzfed zzfedVar) {
        return zzfedVar.zze;
    }

    public static /* bridge */ /* synthetic */ zzbhv zzN(zzfed zzfedVar) {
        return zzfedVar.zzr;
    }

    public static /* bridge */ /* synthetic */ int zza(zzfed zzfedVar) {
        return zzfedVar.zzm;
    }

    public static /* bridge */ /* synthetic */ AdManagerAdViewOptions zzb(zzfed zzfedVar) {
        return zzfedVar.zzj;
    }

    public static /* bridge */ /* synthetic */ PublisherAdViewOptions zzc(zzfed zzfedVar) {
        return zzfedVar.zzk;
    }

    public static /* bridge */ /* synthetic */ zzbfd zzd(zzfed zzfedVar) {
        return zzfedVar.zza;
    }

    public static /* bridge */ /* synthetic */ zzbfi zzf(zzfed zzfedVar) {
        return zzfedVar.zzb;
    }

    public static /* bridge */ /* synthetic */ zzbfo zzh(zzfed zzfedVar) {
        return zzfedVar.zzi;
    }

    public static /* bridge */ /* synthetic */ zzbhr zzi(zzfed zzfedVar) {
        return zzfedVar.zzl;
    }

    public static /* bridge */ /* synthetic */ zzbkq zzj(zzfed zzfedVar) {
        return zzfedVar.zzd;
    }

    public static /* bridge */ /* synthetic */ zzbnw zzk(zzfed zzfedVar) {
        return zzfedVar.zzh;
    }

    public static /* bridge */ /* synthetic */ zzbtz zzl(zzfed zzfedVar) {
        return zzfedVar.zzn;
    }

    public static /* bridge */ /* synthetic */ zzeox zzm(zzfed zzfedVar) {
        return zzfedVar.zzq;
    }

    public static /* bridge */ /* synthetic */ zzfdt zzn(zzfed zzfedVar) {
        return zzfedVar.zzo;
    }

    public final zzfed zzA(ArrayList<String> arrayList) {
        this.zzf = arrayList;
        return this;
    }

    public final zzfed zzB(ArrayList<String> arrayList) {
        this.zzg = arrayList;
        return this;
    }

    public final zzfed zzC(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzk = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.zze = publisherAdViewOptions.zzc();
            this.zzl = publisherAdViewOptions.zza();
        }
        return this;
    }

    public final zzfed zzD(zzbfd zzbfdVar) {
        this.zza = zzbfdVar;
        return this;
    }

    public final zzfed zzE(zzbkq zzbkqVar) {
        this.zzd = zzbkqVar;
        return this;
    }

    public final zzfef zzF() {
        Preconditions.checkNotNull(this.zzc, "ad unit must not be null");
        Preconditions.checkNotNull(this.zzb, "ad size must not be null");
        Preconditions.checkNotNull(this.zza, "ad request must not be null");
        return new zzfef(this, null);
    }

    public final String zzH() {
        return this.zzc;
    }

    public final boolean zzM() {
        return this.zzp;
    }

    public final zzfed zzO(zzbhv zzbhvVar) {
        this.zzr = zzbhvVar;
        return this;
    }

    public final zzbfd zze() {
        return this.zza;
    }

    public final zzbfi zzg() {
        return this.zzb;
    }

    public final zzfdt zzo() {
        return this.zzo;
    }

    public final zzfed zzp(zzfef zzfefVar) {
        this.zzo.zza(zzfefVar.zzo.zza);
        this.zza = zzfefVar.zzd;
        this.zzb = zzfefVar.zze;
        this.zzr = zzfefVar.zzq;
        this.zzc = zzfefVar.zzf;
        this.zzd = zzfefVar.zza;
        this.zzf = zzfefVar.zzg;
        this.zzg = zzfefVar.zzh;
        this.zzh = zzfefVar.zzi;
        this.zzi = zzfefVar.zzj;
        zzq(zzfefVar.zzl);
        zzC(zzfefVar.zzm);
        this.zzp = zzfefVar.zzp;
        this.zzq = zzfefVar.zzc;
        return this;
    }

    public final zzfed zzq(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zzj = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            this.zze = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
        return this;
    }

    public final zzfed zzr(zzbfi zzbfiVar) {
        this.zzb = zzbfiVar;
        return this;
    }

    public final zzfed zzs(String str) {
        this.zzc = str;
        return this;
    }

    public final zzfed zzt(zzbfo zzbfoVar) {
        this.zzi = zzbfoVar;
        return this;
    }

    public final zzfed zzu(zzeox zzeoxVar) {
        this.zzq = zzeoxVar;
        return this;
    }

    public final zzfed zzv(zzbtz zzbtzVar) {
        this.zzn = zzbtzVar;
        this.zzd = new zzbkq(false, true, false);
        return this;
    }

    public final zzfed zzw(boolean z) {
        this.zzp = z;
        return this;
    }

    public final zzfed zzx(boolean z) {
        this.zze = z;
        return this;
    }

    public final zzfed zzy(int i) {
        this.zzm = i;
        return this;
    }

    public final zzfed zzz(zzbnw zzbnwVar) {
        this.zzh = zzbnwVar;
        return this;
    }
}
