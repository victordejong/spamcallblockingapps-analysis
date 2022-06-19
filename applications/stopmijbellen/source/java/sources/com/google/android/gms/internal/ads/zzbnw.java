package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "NativeAdOptionsParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnw.class */
public final class zzbnw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbnw> CREATOR = new zzbnx();
    @SafeParcelable.Field(m4805id = 1)
    public final int zza;
    @SafeParcelable.Field(m4805id = 2)
    public final boolean zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final int zzc;
    @SafeParcelable.Field(m4805id = 4)
    public final boolean zzd;
    @SafeParcelable.Field(m4805id = 5)
    public final int zze;
    @SafeParcelable.Field(m4805id = 6)
    public final zzbkq zzf;
    @SafeParcelable.Field(m4805id = 7)
    public final boolean zzg;
    @SafeParcelable.Field(m4805id = 8)
    public final int zzh;

    @SafeParcelable.Constructor
    public zzbnw(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) boolean z, @SafeParcelable.Param(m4804id = 3) int i2, @SafeParcelable.Param(m4804id = 4) boolean z2, @SafeParcelable.Param(m4804id = 5) int i3, @SafeParcelable.Param(m4804id = 6) zzbkq zzbkqVar, @SafeParcelable.Param(m4804id = 7) boolean z3, @SafeParcelable.Param(m4804id = 8) int i4) {
        this.zza = i;
        this.zzb = z;
        this.zzc = i2;
        this.zzd = z2;
        this.zze = i3;
        this.zzf = zzbkqVar;
        this.zzg = z3;
        this.zzh = i4;
    }

    public zzbnw(NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzbkq(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zza(), nativeAdOptions.getMediaAspectRatio());
    }

    public static com.google.android.gms.ads.nativead.NativeAdOptions zza(zzbnw zzbnwVar) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzbnwVar == null) {
            return builder.build();
        }
        int i = zzbnwVar.zza;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzbnwVar.zzg);
                    builder.setMediaAspectRatio(zzbnwVar.zzh);
                }
                builder.setReturnUrlsForImageAssets(zzbnwVar.zzb);
                builder.setRequestMultipleImages(zzbnwVar.zzd);
                return builder.build();
            }
            zzbkq zzbkqVar = zzbnwVar.zzf;
            if (zzbkqVar != null) {
                builder.setVideoOptions(new VideoOptions(zzbkqVar));
            }
        }
        builder.setAdChoicesPlacement(zzbnwVar.zze);
        builder.setReturnUrlsForImageAssets(zzbnwVar.zzb);
        builder.setRequestMultipleImages(zzbnwVar.zzd);
        return builder.build();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzd);
        SafeParcelWriter.writeInt(parcel, 5, this.zze);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzf, i, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzg);
        SafeParcelWriter.writeInt(parcel, 8, this.zzh);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
