package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbhq;
import com.google.android.gms.internal.ads.zzbhr;
import com.google.android.gms.internal.ads.zzbpy;
import com.google.android.gms.internal.ads.zzbpz;
@Deprecated
@SafeParcelable.Class(creator = "PublisherAdViewOptionsCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions.class */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzf();
    @SafeParcelable.Field(getter = "getManualImpressionsEnabled", m4805id = 1)
    private final boolean zza;
    @SafeParcelable.Field(getter = "getAppEventListenerBinder", m4805id = 2, type = "android.os.IBinder")
    private final zzbhr zzb;
    @SafeParcelable.Field(getter = "getDelayedBannerAdListenerBinder", m4805id = 3)
    private final IBinder zzc;

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions$Builder.class */
    public static final class Builder {
        private ShouldDelayBannerRenderingListener zza;

        @RecentlyNonNull
        @KeepForSdk
        public Builder setShouldDelayBannerRenderingListener(@RecentlyNonNull ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            this.zza = shouldDelayBannerRenderingListener;
            return this;
        }
    }

    @SafeParcelable.Constructor
    public PublisherAdViewOptions(@SafeParcelable.Param(m4804id = 1) boolean z, @SafeParcelable.Param(m4804id = 2) IBinder iBinder, @SafeParcelable.Param(m4804id = 3) IBinder iBinder2) {
        this.zza = z;
        this.zzb = iBinder != null ? zzbhq.zzd(iBinder) : null;
        this.zzc = iBinder2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.zza);
        zzbhr zzbhrVar = this.zzb;
        SafeParcelWriter.writeIBinder(parcel, 2, zzbhrVar == null ? null : zzbhrVar.asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 3, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzbhr zza() {
        return this.zzb;
    }

    public final zzbpz zzb() {
        IBinder iBinder = this.zzc;
        if (iBinder == null) {
            return null;
        }
        return zzbpy.zzc(iBinder);
    }

    public final boolean zzc() {
        return this.zza;
    }
}
