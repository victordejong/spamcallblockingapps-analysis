package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemt.class */
public final class zzemt implements zzerx<Bundle> {
    public final zzbdl zza;
    public final String zzb;
    public final boolean zzc;
    public final String zzd;
    public final float zze;
    public final int zzf;
    public final int zzg;
    public final String zzh;
    public final boolean zzi;

    public zzemt(zzbdl zzbdlVar, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        Preconditions.m38897k(zzbdlVar, "the adSize must not be null");
        this.zza = zzbdlVar;
        this.zzb = str;
        this.zzc = z;
        this.zzd = str2;
        this.zze = f;
        this.zzf = i;
        this.zzg = i2;
        this.zzh = str3;
        this.zzi = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        String str;
        Bundle bundle2 = bundle;
        zzfbd.zzb(bundle2, "smart_w", "full", this.zza.zze == -1);
        zzfbd.zzb(bundle2, "smart_h", "auto", this.zza.zzb == -2);
        Boolean bool = Boolean.TRUE;
        zzfbd.zzd(bundle2, "ene", bool, this.zza.zzj);
        zzfbd.zzb(bundle2, "rafmt", "102", this.zza.zzm);
        zzfbd.zzb(bundle2, "rafmt", "103", this.zza.zzn);
        zzfbd.zzb(bundle2, "rafmt", "105", this.zza.zzo);
        zzfbd.zzd(bundle2, "inline_adaptive_slot", bool, this.zzi);
        zzfbd.zzd(bundle2, "interscroller_slot", bool, this.zza.zzo);
        zzfbd.zze(bundle2, "format", this.zzb);
        zzfbd.zzb(bundle2, "fluid", "height", this.zzc);
        zzfbd.zzb(bundle2, "sz", this.zzd, !TextUtils.isEmpty(str));
        bundle2.putFloat("u_sd", this.zze);
        bundle2.putInt("sw", this.zzf);
        bundle2.putInt("sh", this.zzg);
        String str2 = this.zzh;
        zzfbd.zzb(bundle2, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        zzbdl[] zzbdlVarArr = this.zza.zzg;
        if (zzbdlVarArr == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.zza.zzb);
            bundle3.putInt("width", this.zza.zze);
            bundle3.putBoolean("is_fluid_height", this.zza.zzi);
            arrayList.add(bundle3);
        } else {
            for (zzbdl zzbdlVar : zzbdlVarArr) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", zzbdlVar.zzi);
                bundle4.putInt("height", zzbdlVar.zzb);
                bundle4.putInt("width", zzbdlVar.zze);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
