package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.internal.ads.AbstractBinderC12561fq;
import com.google.android.gms.internal.ads.AbstractC12558fn;
import com.google.android.gms.internal.ads.BinderC13033x;
import com.google.android.gms.internal.ads.ejg;
import com.google.android.gms.internal.ads.eld;
import com.google.android.gms.internal.ads.ele;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions.class */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zze();
    private final boolean zzbns;
    private final IBinder zzbnt;
    private final ele zzbon;
    private AppEventListener zzboo;

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions$Builder.class */
    public static final class Builder {
        private boolean zzbns = false;
        private ShouldDelayBannerRenderingListener zzbnu;
        private AppEventListener zzboo;

        public final PublisherAdViewOptions build() {
            return new PublisherAdViewOptions(this);
        }

        public final Builder setAppEventListener(AppEventListener appEventListener) {
            this.zzboo = appEventListener;
            return this;
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

    private PublisherAdViewOptions(Builder builder) {
        this.zzbns = builder.zzbns;
        AppEventListener appEventListener = builder.zzboo;
        this.zzboo = appEventListener;
        this.zzbon = appEventListener != null ? new ejg(this.zzboo) : null;
        this.zzbnt = builder.zzbnu != null ? new BinderC13033x(builder.zzbnu) : null;
    }

    public PublisherAdViewOptions(boolean z, IBinder iBinder, IBinder iBinder2) {
        this.zzbns = z;
        this.zzbon = iBinder != null ? eld.m14810a(iBinder) : null;
        this.zzbnt = iBinder2;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzboo;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzbns;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19101a(parcel, 1, getManualImpressionsEnabled());
        ele eleVar = this.zzbon;
        C12050a.m19109a(parcel, 2, eleVar == null ? null : eleVar.asBinder());
        C12050a.m19109a(parcel, 3, this.zzbnt);
        C12050a.m19095b(parcel, m19116a);
    }

    public final AbstractC12558fn zzjv() {
        return AbstractBinderC12561fq.m14678a(this.zzbnt);
    }

    public final ele zzjz() {
        return this.zzbon;
    }
}
