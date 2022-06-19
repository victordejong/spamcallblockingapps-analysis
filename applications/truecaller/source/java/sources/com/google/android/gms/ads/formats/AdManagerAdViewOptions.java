package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbiq;
import com.google.android.gms.internal.ads.zzbnx;
import com.google.android.gms.internal.ads.zzbny;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/AdManagerAdViewOptions.class */
public final class AdManagerAdViewOptions extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<AdManagerAdViewOptions> CREATOR = new zzc();
    @SafeParcelable.Field
    private final boolean zza;
    @SafeParcelable.Field
    private final IBinder zzb;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder.class */
    public static final class Builder {
        private boolean zza = false;
        private ShouldDelayBannerRenderingListener zzb;

        @RecentlyNonNull
        public AdManagerAdViewOptions build() {
            return new AdManagerAdViewOptions(this, (zzb) null);
        }

        @RecentlyNonNull
        public Builder setManualImpressionsEnabled(boolean z) {
            this.zza = z;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setShouldDelayBannerRenderingListener(@RecentlyNonNull ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            this.zzb = shouldDelayBannerRenderingListener;
            return this;
        }
    }

    public /* synthetic */ AdManagerAdViewOptions(Builder builder, zzb zzbVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb != null ? new zzbiq(builder.zzb) : null;
    }

    @SafeParcelable.Constructor
    public AdManagerAdViewOptions(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) IBinder iBinder) {
        this.zza = z;
        this.zzb = iBinder;
    }

    public boolean getManualImpressionsEnabled() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        boolean manualImpressionsEnabled = getManualImpressionsEnabled();
        parcel.writeInt(262145);
        parcel.writeInt(manualImpressionsEnabled ? 1 : 0);
        SafeParcelWriter.m38854i(parcel, 2, this.zzb, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    public final zzbny zza() {
        IBinder iBinder = this.zzb;
        if (iBinder == null) {
            return null;
        }
        return zzbnx.zzc(iBinder);
    }
}
