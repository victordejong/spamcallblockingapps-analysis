package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqi.class */
public final class zzeqi implements zzevm<Bundle> {
    public final zzbfi zza;
    public final String zzb;
    public final boolean zzc;
    public final String zzd;
    public final float zze;
    public final int zzf;
    public final int zzg;
    public final String zzh;
    public final boolean zzi;

    public zzeqi(zzbfi zzbfiVar, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        Preconditions.checkNotNull(zzbfiVar, "the adSize must not be null");
        this.zza = zzbfiVar;
        this.zzb = str;
        this.zzc = z;
        this.zzd = str2;
        this.zze = f;
        this.zzf = i;
        this.zzg = i2;
        this.zzh = str3;
        this.zzi = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        String str;
        Bundle bundle2 = bundle;
        zzfeq.zzg(bundle2, "smart_w", "full", this.zza.zze == -1);
        zzfeq.zzg(bundle2, "smart_h", "auto", this.zza.zzb == -2);
        Boolean bool = Boolean.TRUE;
        zzfeq.zze(bundle2, "ene", bool, this.zza.zzj);
        zzfeq.zzg(bundle2, "rafmt", "102", this.zza.zzm);
        zzfeq.zzg(bundle2, "rafmt", "103", this.zza.zzn);
        zzfeq.zzg(bundle2, "rafmt", "105", this.zza.zzo);
        zzfeq.zze(bundle2, "inline_adaptive_slot", bool, this.zzi);
        zzfeq.zze(bundle2, "interscroller_slot", bool, this.zza.zzo);
        zzfeq.zzc(bundle2, "format", this.zzb);
        zzfeq.zzg(bundle2, "fluid", "height", this.zzc);
        zzfeq.zzg(bundle2, "sz", this.zzd, !TextUtils.isEmpty(str));
        bundle2.putFloat("u_sd", this.zze);
        bundle2.putInt("sw", this.zzf);
        bundle2.putInt("sh", this.zzg);
        String str2 = this.zzh;
        zzfeq.zzg(bundle2, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        zzbfi[] zzbfiVarArr = this.zza.zzg;
        if (zzbfiVarArr == null) {
            Bundle bundle3 = new Bundle();
            bundle3.putInt("height", this.zza.zzb);
            bundle3.putInt("width", this.zza.zze);
            bundle3.putBoolean("is_fluid_height", this.zza.zzi);
            arrayList.add(bundle3);
        } else {
            for (zzbfi zzbfiVar : zzbfiVarArr) {
                Bundle bundle4 = new Bundle();
                bundle4.putBoolean("is_fluid_height", zzbfiVar.zzi);
                bundle4.putInt("height", zzbfiVar.zzb);
                bundle4.putInt("width", zzbfiVar.zze);
                arrayList.add(bundle4);
            }
        }
        bundle2.putParcelableArrayList("valid_ad_sizes", arrayList);
    }
}
