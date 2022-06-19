package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.internal.ads.AbstractBinderC12561fq;
import com.google.android.gms.internal.ads.AbstractC12558fn;
import com.google.android.gms.internal.ads.BinderC13033x;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/AdManagerAdViewOptions.class */
public final class AdManagerAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AdManagerAdViewOptions> CREATOR = new zzb();
    private final boolean zzbns;
    private final IBinder zzbnt;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder.class */
    public static final class Builder {
        private boolean zzbns = false;
        private ShouldDelayBannerRenderingListener zzbnu;

        public final AdManagerAdViewOptions build() {
            return new AdManagerAdViewOptions(this);
        }

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.zzbns = z;
            return this;
        }

        public final Builder setShouldDelayBannerRenderingListener(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            this.zzbnu = shouldDelayBannerRenderingListener;
            return this;
        }
    }

    private AdManagerAdViewOptions(Builder builder) {
        this.zzbns = builder.zzbns;
        this.zzbnt = builder.zzbnu != null ? new BinderC13033x(builder.zzbnu) : null;
    }

    public AdManagerAdViewOptions(boolean z, IBinder iBinder) {
        this.zzbns = z;
        this.zzbnt = iBinder;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzbns;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19101a(parcel, 1, getManualImpressionsEnabled());
        C12050a.m19109a(parcel, 2, this.zzbnt);
        C12050a.m19095b(parcel, m19116a);
    }

    public final AbstractC12558fn zzjv() {
        return AbstractBinderC12561fq.m14678a(this.zzbnt);
    }
}
