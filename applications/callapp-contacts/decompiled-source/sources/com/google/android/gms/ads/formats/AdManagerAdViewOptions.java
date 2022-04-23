package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.ads.fn;
import com.google.android.gms.internal.ads.fq;
import com.google.android.gms.internal.ads.x;
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
        this.zzbnt = builder.zzbnu != null ? new x(builder.zzbnu) : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdManagerAdViewOptions(boolean z, IBinder iBinder) {
        this.zzbns = z;
        this.zzbnt = iBinder;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzbns;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, getManualImpressionsEnabled());
        a.a(parcel, 2, this.zzbnt);
        a.b(parcel, a2);
    }

    public final fn zzjv() {
        return fq.a(this.zzbnt);
    }
}
