package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaeh.class */
public final class zzaeh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaeh> CREATOR = new zzaeg();
    public final int versionCode;
    public final int zzbns;
    public final int zzbnt;
    public final boolean zzbnu;
    public final int zzbnv;
    public final boolean zzbnx;
    public final boolean zzdft;
    public final zzaau zzdfu;

    public zzaeh(int i, boolean z, int i2, boolean z2, int i3, zzaau zzaauVar, boolean z3, int i4) {
        this.versionCode = i;
        this.zzdft = z;
        this.zzbns = i2;
        this.zzbnu = z2;
        this.zzbnv = i3;
        this.zzdfu = zzaauVar;
        this.zzbnx = z3;
        this.zzbnt = i4;
    }

    public zzaeh(NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzaau(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzjt(), nativeAdOptions.getMediaAspectRatio());
    }

    public zzaeh(com.google.android.gms.ads.nativead.NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), -1, nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzaau(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzjt(), nativeAdOptions.getMediaAspectRatio());
    }

    public static com.google.android.gms.ads.nativead.NativeAdOptions zzb(zzaeh zzaehVar) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzaehVar == null) {
            return builder.build();
        }
        int i = zzaehVar.versionCode;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzaehVar.zzbnx).setMediaAspectRatio(zzaehVar.zzbnt);
                }
                builder.setReturnUrlsForImageAssets(zzaehVar.zzdft).setRequestMultipleImages(zzaehVar.zzbnu);
                return builder.build();
            }
            zzaau zzaauVar = zzaehVar.zzdfu;
            if (zzaauVar != null) {
                builder.setVideoOptions(new VideoOptions(zzaauVar));
            }
        }
        builder.setAdChoicesPlacement(zzaehVar.zzbnv);
        builder.setReturnUrlsForImageAssets(zzaehVar.zzdft).setRequestMultipleImages(zzaehVar.zzbnu);
        return builder.build();
    }

    public static com.google.android.gms.ads.formats.NativeAdOptions zzc(zzaeh zzaehVar) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzaehVar == null) {
            return builder.build();
        }
        int i = zzaehVar.versionCode;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzaehVar.zzbnx).setMediaAspectRatio(zzaehVar.zzbnt);
                }
                builder.setReturnUrlsForImageAssets(zzaehVar.zzdft).setImageOrientation(zzaehVar.zzbns).setRequestMultipleImages(zzaehVar.zzbnu);
                return builder.build();
            }
            zzaau zzaauVar = zzaehVar.zzdfu;
            if (zzaauVar != null) {
                builder.setVideoOptions(new VideoOptions(zzaauVar));
            }
        }
        builder.setAdChoicesPlacement(zzaehVar.zzbnv);
        builder.setReturnUrlsForImageAssets(zzaehVar.zzdft).setImageOrientation(zzaehVar.zzbns).setRequestMultipleImages(zzaehVar.zzbnu);
        return builder.build();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzdft);
        SafeParcelWriter.writeInt(parcel, 3, this.zzbns);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzbnu);
        SafeParcelWriter.writeInt(parcel, 5, this.zzbnv);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzdfu, i, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzbnx);
        SafeParcelWriter.writeInt(parcel, 8, this.zzbnt);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
