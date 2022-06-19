package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzblv.class */
public final class zzblv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzblv> CREATOR = new zzblw();
    @SafeParcelable.Field
    public final int zza;
    @SafeParcelable.Field
    public final boolean zzb;
    @SafeParcelable.Field
    public final int zzc;
    @SafeParcelable.Field
    public final boolean zzd;
    @SafeParcelable.Field
    public final int zze;
    @SafeParcelable.Field
    public final zzbis zzf;
    @SafeParcelable.Field
    public final boolean zzg;
    @SafeParcelable.Field
    public final int zzh;

    @SafeParcelable.Constructor
    public zzblv(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) boolean z2, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 6) zzbis zzbisVar, @SafeParcelable.Param(id = 7) boolean z3, @SafeParcelable.Param(id = 8) int i4) {
        this.zza = i;
        this.zzb = z;
        this.zzc = i2;
        this.zzd = z2;
        this.zze = i3;
        this.zzf = zzbisVar;
        this.zzg = z3;
        this.zzh = i4;
    }

    public zzblv(NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzbis(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zza(), nativeAdOptions.getMediaAspectRatio());
    }

    public static com.google.android.gms.ads.nativead.NativeAdOptions zza(zzblv zzblvVar) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzblvVar == null) {
            return builder.build();
        }
        int i = zzblvVar.zza;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzblvVar.zzg);
                    builder.setMediaAspectRatio(zzblvVar.zzh);
                }
                builder.setReturnUrlsForImageAssets(zzblvVar.zzb);
                builder.setRequestMultipleImages(zzblvVar.zzd);
                return builder.build();
            }
            zzbis zzbisVar = zzblvVar.zzf;
            if (zzbisVar != null) {
                builder.setVideoOptions(new VideoOptions(zzbisVar));
            }
        }
        builder.setAdChoicesPlacement(zzblvVar.zze);
        builder.setReturnUrlsForImageAssets(zzblvVar.zzb);
        builder.setRequestMultipleImages(zzblvVar.zzd);
        return builder.build();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        boolean z = this.zzb;
        parcel.writeInt(262146);
        parcel.writeInt(z ? 1 : 0);
        int i3 = this.zzc;
        parcel.writeInt(262147);
        parcel.writeInt(i3);
        boolean z2 = this.zzd;
        parcel.writeInt(262148);
        parcel.writeInt(z2 ? 1 : 0);
        int i4 = this.zze;
        parcel.writeInt(262149);
        parcel.writeInt(i4);
        SafeParcelWriter.m38847p(parcel, 6, this.zzf, i, false);
        boolean z3 = this.zzg;
        parcel.writeInt(262151);
        parcel.writeInt(z3 ? 1 : 0);
        int i5 = this.zzh;
        parcel.writeInt(262152);
        parcel.writeInt(i5);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
