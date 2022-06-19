package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbft;
import com.google.android.gms.internal.ads.zzbfu;
import com.google.android.gms.internal.ads.zzbnx;
import com.google.android.gms.internal.ads.zzbny;
@Deprecated
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions.class */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzf();
    @SafeParcelable.Field
    private final boolean zza;
    @SafeParcelable.Field
    private final zzbfu zzb;
    @SafeParcelable.Field
    private final IBinder zzc;

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions$Builder.class */
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
    public PublisherAdViewOptions(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) IBinder iBinder2) {
        this.zza = z;
        this.zzb = iBinder != null ? zzbft.zzd(iBinder) : null;
        this.zzc = iBinder2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        boolean z = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(z ? 1 : 0);
        zzbfu zzbfuVar = this.zzb;
        SafeParcelWriter.m38854i(parcel, 2, zzbfuVar == null ? null : zzbfuVar.asBinder(), false);
        SafeParcelWriter.m38854i(parcel, 3, this.zzc, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    public final boolean zza() {
        return this.zza;
    }

    public final zzbfu zzb() {
        return this.zzb;
    }

    public final zzbny zzc() {
        IBinder iBinder = this.zzc;
        if (iBinder == null) {
            return null;
        }
        return zzbnx.zzc(iBinder);
    }
}
