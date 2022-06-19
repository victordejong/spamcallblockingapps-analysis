package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdnr.class */
public final class zzdnr {
    private boolean zzbni;
    private zzvs zzbpo;
    private zzaeh zzdoe;
    private zzajt zzdvt;
    private zzxz zzhku;
    private zzaau zzhkv;
    private zzvl zzhkw;
    private String zzhkx;
    private ArrayList<String> zzhky;
    private ArrayList<String> zzhkz;
    private zzvx zzhla;
    private AdManagerAdViewOptions zzhlb;
    private PublisherAdViewOptions zzhlc;
    private zzxt zzhld;
    private int zzgzc = 1;
    private zzdne zzhlf = new zzdne();
    private boolean zzhar = false;

    public static /* synthetic */ zzvs zza(zzdnr zzdnrVar) {
        return zzdnrVar.zzbpo;
    }

    public static /* synthetic */ String zzb(zzdnr zzdnrVar) {
        return zzdnrVar.zzhkx;
    }

    public static /* synthetic */ zzxz zzc(zzdnr zzdnrVar) {
        return zzdnrVar.zzhku;
    }

    public static /* synthetic */ ArrayList zzd(zzdnr zzdnrVar) {
        return zzdnrVar.zzhky;
    }

    public static /* synthetic */ ArrayList zze(zzdnr zzdnrVar) {
        return zzdnrVar.zzhkz;
    }

    public static /* synthetic */ zzvx zzf(zzdnr zzdnrVar) {
        return zzdnrVar.zzhla;
    }

    public static /* synthetic */ int zzg(zzdnr zzdnrVar) {
        return zzdnrVar.zzgzc;
    }

    public static /* synthetic */ AdManagerAdViewOptions zzh(zzdnr zzdnrVar) {
        return zzdnrVar.zzhlb;
    }

    public static /* synthetic */ PublisherAdViewOptions zzi(zzdnr zzdnrVar) {
        return zzdnrVar.zzhlc;
    }

    public static /* synthetic */ zzxt zzj(zzdnr zzdnrVar) {
        return zzdnrVar.zzhld;
    }

    public static /* synthetic */ zzajt zzk(zzdnr zzdnrVar) {
        return zzdnrVar.zzdvt;
    }

    public static /* synthetic */ zzdne zzl(zzdnr zzdnrVar) {
        return zzdnrVar.zzhlf;
    }

    public static /* synthetic */ boolean zzm(zzdnr zzdnrVar) {
        return zzdnrVar.zzhar;
    }

    public static /* synthetic */ zzvl zzn(zzdnr zzdnrVar) {
        return zzdnrVar.zzhkw;
    }

    public static /* synthetic */ boolean zzo(zzdnr zzdnrVar) {
        return zzdnrVar.zzbni;
    }

    public static /* synthetic */ zzaau zzp(zzdnr zzdnrVar) {
        return zzdnrVar.zzhkv;
    }

    public static /* synthetic */ zzaeh zzq(zzdnr zzdnrVar) {
        return zzdnrVar.zzdoe;
    }

    public final zzvl zzave() {
        return this.zzhkw;
    }

    public final String zzavf() {
        return this.zzhkx;
    }

    public final zzdne zzavg() {
        return this.zzhlf;
    }

    public final zzdnp zzavh() {
        Preconditions.checkNotNull(this.zzhkx, "ad unit must not be null");
        Preconditions.checkNotNull(this.zzbpo, "ad size must not be null");
        Preconditions.checkNotNull(this.zzhkw, "ad request must not be null");
        return new zzdnp(this);
    }

    public final boolean zzavi() {
        return this.zzhar;
    }

    public final zzdnr zzb(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.zzhlb = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            this.zzbni = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
        return this;
    }

    public final zzdnr zzb(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzhlc = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.zzbni = publisherAdViewOptions.getManualImpressionsEnabled();
            this.zzhld = publisherAdViewOptions.zzjv();
        }
        return this;
    }

    public final zzdnr zzb(zzajt zzajtVar) {
        this.zzdvt = zzajtVar;
        this.zzhkv = new zzaau(false, true, false);
        return this;
    }

    public final zzdnr zzb(zzvx zzvxVar) {
        this.zzhla = zzvxVar;
        return this;
    }

    public final zzdnr zzbm(boolean z) {
        this.zzhar = z;
        return this;
    }

    public final zzdnr zzbn(boolean z) {
        this.zzbni = z;
        return this;
    }

    public final zzdnr zzc(zzaau zzaauVar) {
        this.zzhkv = zzaauVar;
        return this;
    }

    public final zzdnr zzc(zzdnp zzdnpVar) {
        this.zzhlf.zza(zzdnpVar.zzhle);
        this.zzhkw = zzdnpVar.zzhkw;
        this.zzbpo = zzdnpVar.zzbpo;
        this.zzhku = zzdnpVar.zzhku;
        this.zzhkx = zzdnpVar.zzhkx;
        this.zzhkv = zzdnpVar.zzhkv;
        this.zzhky = zzdnpVar.zzhky;
        this.zzhkz = zzdnpVar.zzhkz;
        this.zzdoe = zzdnpVar.zzdoe;
        this.zzhla = zzdnpVar.zzhla;
        zzdnr zzb = zzb(zzdnpVar.zzhlb).zzb(zzdnpVar.zzhlc);
        zzb.zzhar = zzdnpVar.zzhar;
        return zzb;
    }

    public final zzdnr zzc(zzxz zzxzVar) {
        this.zzhku = zzxzVar;
        return this;
    }

    public final zzdnr zzc(ArrayList<String> arrayList) {
        this.zzhky = arrayList;
        return this;
    }

    public final zzdnr zzd(zzaeh zzaehVar) {
        this.zzdoe = zzaehVar;
        return this;
    }

    public final zzdnr zzd(ArrayList<String> arrayList) {
        this.zzhkz = arrayList;
        return this;
    }

    public final zzdnr zzee(int i) {
        this.zzgzc = i;
        return this;
    }

    public final zzdnr zzg(zzvs zzvsVar) {
        this.zzbpo = zzvsVar;
        return this;
    }

    public final zzdnr zzgs(String str) {
        this.zzhkx = str;
        return this;
    }

    public final zzdnr zzh(zzvl zzvlVar) {
        this.zzhkw = zzvlVar;
        return this;
    }

    public final zzvs zzkg() {
        return this.zzbpo;
    }
}
