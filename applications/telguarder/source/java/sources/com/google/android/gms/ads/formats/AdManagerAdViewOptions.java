package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.ads.zzaas;
import com.google.android.gms.internal.ads.zzagk;
import com.google.android.gms.internal.ads.zzagl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/AdManagerAdViewOptions.class */
public final class AdManagerAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AdManagerAdViewOptions> CREATOR = new zzb();
    private final boolean zzbni;
    private final IBinder zzbnj;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder.class */
    public static final class Builder {
        private boolean zzbni = false;
        private ShouldDelayBannerRenderingListener zzbnk;

        public final AdManagerAdViewOptions build() {
            return new AdManagerAdViewOptions(this);
        }

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.zzbni = z;
            return this;
        }

        public final Builder setShouldDelayBannerRenderingListener(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            this.zzbnk = shouldDelayBannerRenderingListener;
            return this;
        }
    }

    private AdManagerAdViewOptions(Builder builder) {
        this.zzbni = builder.zzbni;
        this.zzbnj = builder.zzbnk != null ? new zzaas(builder.zzbnk) : null;
    }

    public AdManagerAdViewOptions(boolean z, IBinder iBinder) {
        this.zzbni = z;
        this.zzbnj = iBinder;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzbni;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, getManualImpressionsEnabled());
        SafeParcelWriter.writeIBinder(parcel, 2, this.zzbnj, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzagl zzjr() {
        return zzagk.zzy(this.zzbnj);
    }
}
