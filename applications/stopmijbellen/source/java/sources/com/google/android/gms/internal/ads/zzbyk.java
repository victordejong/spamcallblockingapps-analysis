package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyk.class */
public final class zzbyk implements NativeMediationAdRequest {
    private final Date zza;
    private final int zzb;
    private final Set<String> zzc;
    private final boolean zzd;
    private final Location zze;
    private final int zzf;
    private final zzbnw zzg;
    private final boolean zzi;
    private final String zzk;
    private final List<String> zzh = new ArrayList();
    private final Map<String, Boolean> zzj = new HashMap();

    public zzbyk(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzbnw zzbnwVar, List<String> list, boolean z2, int i3, String str) {
        this.zza = date;
        this.zzb = i;
        this.zzc = set;
        this.zze = location;
        this.zzd = z;
        this.zzf = i2;
        this.zzg = zzbnwVar;
        this.zzi = z2;
        this.zzk = str;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            this.zzj.put(split[1], Boolean.TRUE);
                        } else if ("false".equals(split[2])) {
                            this.zzj.put(split[1], Boolean.FALSE);
                        }
                    }
                } else {
                    this.zzh.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final float getAdVolume() {
        return zzbjq.zzf().zza();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions getNativeAdOptions() {
        NativeAdOptions nativeAdOptions;
        zzbnw zzbnwVar = this.zzg;
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzbnwVar == null) {
            nativeAdOptions = builder.build();
        } else {
            int i = zzbnwVar.zza;
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        builder.setRequestCustomMuteThisAd(zzbnwVar.zzg);
                        builder.setMediaAspectRatio(zzbnwVar.zzh);
                    }
                    builder.setReturnUrlsForImageAssets(zzbnwVar.zzb);
                    builder.setImageOrientation(zzbnwVar.zzc);
                    builder.setRequestMultipleImages(zzbnwVar.zzd);
                    nativeAdOptions = builder.build();
                }
                zzbkq zzbkqVar = zzbnwVar.zzf;
                if (zzbkqVar != null) {
                    builder.setVideoOptions(new VideoOptions(zzbkqVar));
                }
            }
            builder.setAdChoicesPlacement(zzbnwVar.zze);
            builder.setReturnUrlsForImageAssets(zzbnwVar.zzb);
            builder.setImageOrientation(zzbnwVar.zzc);
            builder.setRequestMultipleImages(zzbnwVar.zzd);
            nativeAdOptions = builder.build();
        }
        return nativeAdOptions;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final com.google.android.gms.ads.nativead.NativeAdOptions getNativeAdRequestOptions() {
        return zzbnw.zza(this.zzg);
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAdMuted() {
        return zzbjq.zzf().zzu();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzi;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isUnifiedNativeAdRequested() {
        return this.zzh.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.zzf;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map<String, Boolean> zza() {
        return this.zzj;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zzb() {
        return this.zzh.contains("3");
    }
}
