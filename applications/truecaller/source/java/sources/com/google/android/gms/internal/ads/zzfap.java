package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfap.class */
public final class zzfap {
    private zzbdg zza;
    private zzbdl zzb;
    private String zzc;
    private zzbis zzd;
    private boolean zze;
    private ArrayList<String> zzf;
    private ArrayList<String> zzg;
    private zzblv zzh;
    private zzbdr zzi;
    private AdManagerAdViewOptions zzj;
    private PublisherAdViewOptions zzk;
    private zzbfu zzl;
    private zzbrx zzn;
    private zzeli zzq;
    private zzbfy zzr;
    private int zzm = 1;
    private final zzfaf zzo = new zzfaf();
    private boolean zzp = false;

    public static /* synthetic */ zzbfy zzN(zzfap zzfapVar) {
        return zzfapVar.zzr;
    }

    public static /* synthetic */ zzbdg zza(zzfap zzfapVar) {
        return zzfapVar.zza;
    }

    public static /* synthetic */ zzbdl zzb(zzfap zzfapVar) {
        return zzfapVar.zzb;
    }

    public static /* synthetic */ String zzc(zzfap zzfapVar) {
        return zzfapVar.zzc;
    }

    public static /* synthetic */ zzbis zzd(zzfap zzfapVar) {
        return zzfapVar.zzd;
    }

    public static /* synthetic */ boolean zze(zzfap zzfapVar) {
        return zzfapVar.zze;
    }

    public static /* synthetic */ ArrayList zzf(zzfap zzfapVar) {
        return zzfapVar.zzf;
    }

    public static /* synthetic */ ArrayList zzg(zzfap zzfapVar) {
        return zzfapVar.zzg;
    }

    public static /* synthetic */ zzblv zzh(zzfap zzfapVar) {
        return zzfapVar.zzh;
    }

    public static /* synthetic */ zzbdr zzi(zzfap zzfapVar) {
        return zzfapVar.zzi;
    }

    public static /* synthetic */ AdManagerAdViewOptions zzj(zzfap zzfapVar) {
        return zzfapVar.zzj;
    }

    public static /* synthetic */ PublisherAdViewOptions zzk(zzfap zzfapVar) {
        return zzfapVar.zzk;
    }

    public static /* synthetic */ zzbfu zzl(zzfap zzfapVar) {
        return zzfapVar.zzl;
    }

    public static /* synthetic */ int zzm(zzfap zzfapVar) {
        return zzfapVar.zzm;
    }

    public static /* synthetic */ zzbrx zzn(zzfap zzfapVar) {
        return zzfapVar.zzn;
    }

    public static /* synthetic */ zzfaf zzo(zzfap zzfapVar) {
        return zzfapVar.zzo;
    }

    public static /* synthetic */ boolean zzp(zzfap zzfapVar) {
        return zzfapVar.zzp;
    }

    public static /* synthetic */ zzeli zzq(zzfap zzfapVar) {
        return zzfapVar.zzq;
    }

    public final zzfap zzA(boolean z) {
        this.zze = z;
        return this;
    }

    public final zzfap zzB(int i) {
        this.zzm = i;
        return this;
    }

    public final zzfap zzC(ArrayList<String> arrayList) {
        this.zzf = arrayList;
        return this;
    }

    public final zzfap zzD(ArrayList<String> arrayList) {
        this.zzg = arrayList;
        return this;
    }

    public final zzfap zzE(zzblv zzblvVar) {
        this.zzh = zzblvVar;
        return this;
    }

    public final zzfap zzF(zzbdr zzbdrVar) {
        this.zzi = zzbdrVar;
        return this;
    }

    public final zzfap zzG(zzbrx zzbrxVar) {
        this.zzn = zzbrxVar;
        this.zzd = new zzbis(false, true, false);
        return this;
    }

    public final zzfap zzH(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzk = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.zze = publisherAdViewOptions.zza();
            this.zzl = publisherAdViewOptions.zzb();
        }
        return this;
    }

    public final zzfap zzI(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zzj = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            this.zze = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
        return this;
    }

    public final zzfap zzJ(zzeli zzeliVar) {
        this.zzq = zzeliVar;
        return this;
    }

    public final zzfap zzK(zzfar zzfarVar) {
        this.zzo.zzb(zzfarVar.zzo.zza);
        this.zza = zzfarVar.zzd;
        this.zzb = zzfarVar.zze;
        this.zzr = zzfarVar.zzq;
        this.zzc = zzfarVar.zzf;
        this.zzd = zzfarVar.zza;
        this.zzf = zzfarVar.zzg;
        this.zzg = zzfarVar.zzh;
        this.zzh = zzfarVar.zzi;
        this.zzi = zzfarVar.zzj;
        zzI(zzfarVar.zzl);
        zzH(zzfarVar.zzm);
        this.zzp = zzfarVar.zzp;
        this.zzq = zzfarVar.zzc;
        return this;
    }

    public final zzfar zzL() {
        Preconditions.m38897k(this.zzc, "ad unit must not be null");
        Preconditions.m38897k(this.zzb, "ad size must not be null");
        Preconditions.m38897k(this.zza, "ad request must not be null");
        return new zzfar(this, null);
    }

    public final boolean zzM() {
        return this.zzp;
    }

    public final zzfap zzO(zzbfy zzbfyVar) {
        this.zzr = zzbfyVar;
        return this;
    }

    public final zzfap zzr(zzbdg zzbdgVar) {
        this.zza = zzbdgVar;
        return this;
    }

    public final zzbdg zzs() {
        return this.zza;
    }

    public final zzfap zzt(zzbdl zzbdlVar) {
        this.zzb = zzbdlVar;
        return this;
    }

    public final zzfap zzu(boolean z) {
        this.zzp = z;
        return this;
    }

    public final zzbdl zzv() {
        return this.zzb;
    }

    public final zzfap zzw(String str) {
        this.zzc = str;
        return this;
    }

    public final String zzx() {
        return this.zzc;
    }

    public final zzfap zzy(zzbis zzbisVar) {
        this.zzd = zzbisVar;
        return this;
    }

    public final zzfaf zzz() {
        return this.zzo;
    }
}
