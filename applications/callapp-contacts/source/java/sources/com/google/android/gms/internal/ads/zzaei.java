package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaei.class */
public final class zzaei extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaei> CREATOR = new C12376dk();
    public final int versionCode;
    public final int zzboc;
    public final int zzbod;
    public final boolean zzboe;
    public final int zzbof;
    public final boolean zzboh;
    public final boolean zzdgx;
    public final zzaaz zzdgy;

    public zzaei(int i, boolean z, int i2, boolean z2, int i3, zzaaz zzaazVar, boolean z3, int i4) {
        this.versionCode = i;
        this.zzdgx = z;
        this.zzboc = i2;
        this.zzboe = z2;
        this.zzbof = i3;
        this.zzdgy = zzaazVar;
        this.zzboh = z3;
        this.zzbod = i4;
    }

    public zzaei(NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzaaz(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzjx(), nativeAdOptions.getMediaAspectRatio());
    }

    public zzaei(com.google.android.gms.ads.nativead.NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), -1, nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zzaaz(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzjx(), nativeAdOptions.getMediaAspectRatio());
    }

    public static com.google.android.gms.ads.nativead.NativeAdOptions zzb(zzaei zzaeiVar) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzaeiVar == null) {
            return builder.build();
        }
        int i = zzaeiVar.versionCode;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzaeiVar.zzboh).setMediaAspectRatio(zzaeiVar.zzbod);
                }
                builder.setReturnUrlsForImageAssets(zzaeiVar.zzdgx).setRequestMultipleImages(zzaeiVar.zzboe);
                return builder.build();
            }
            zzaaz zzaazVar = zzaeiVar.zzdgy;
            if (zzaazVar != null) {
                builder.setVideoOptions(new VideoOptions(zzaazVar));
            }
        }
        builder.setAdChoicesPlacement(zzaeiVar.zzbof);
        builder.setReturnUrlsForImageAssets(zzaeiVar.zzdgx).setRequestMultipleImages(zzaeiVar.zzboe);
        return builder.build();
    }

    public static com.google.android.gms.ads.formats.NativeAdOptions zzc(zzaei zzaeiVar) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (zzaeiVar == null) {
            return builder.build();
        }
        int i = zzaeiVar.versionCode;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzaeiVar.zzboh).setMediaAspectRatio(zzaeiVar.zzbod);
                }
                builder.setReturnUrlsForImageAssets(zzaeiVar.zzdgx).setImageOrientation(zzaeiVar.zzboc).setRequestMultipleImages(zzaeiVar.zzboe);
                return builder.build();
            }
            zzaaz zzaazVar = zzaeiVar.zzdgy;
            if (zzaazVar != null) {
                builder.setVideoOptions(new VideoOptions(zzaazVar));
            }
        }
        builder.setAdChoicesPlacement(zzaeiVar.zzbof);
        builder.setReturnUrlsForImageAssets(zzaeiVar.zzdgx).setImageOrientation(zzaeiVar.zzboc).setRequestMultipleImages(zzaeiVar.zzboe);
        return builder.build();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.versionCode);
        C12050a.m19101a(parcel, 2, this.zzdgx);
        C12050a.m19112a(parcel, 3, this.zzboc);
        C12050a.m19101a(parcel, 4, this.zzboe);
        C12050a.m19112a(parcel, 5, this.zzbof);
        C12050a.m19107a(parcel, 6, this.zzdgy, i, false);
        C12050a.m19101a(parcel, 7, this.zzboh);
        C12050a.m19112a(parcel, 8, this.zzbod);
        C12050a.m19095b(parcel, m19116a);
    }
}
