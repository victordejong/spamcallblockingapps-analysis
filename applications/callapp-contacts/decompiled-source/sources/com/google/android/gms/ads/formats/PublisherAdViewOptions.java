package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.ads.ejg;
import com.google.android.gms.internal.ads.eld;
import com.google.android.gms.internal.ads.ele;
import com.google.android.gms.internal.ads.fn;
import com.google.android.gms.internal.ads.fq;
import com.google.android.gms.internal.ads.x;
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
        x xVar = null;
        this.zzbon = appEventListener != null ? new ejg(this.zzboo) : null;
        this.zzbnt = builder.zzbnu != null ? new x(builder.zzbnu) : xVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PublisherAdViewOptions(boolean z, IBinder iBinder, IBinder iBinder2) {
        this.zzbns = z;
        this.zzbon = iBinder != null ? eld.a(iBinder) : null;
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, getManualImpressionsEnabled());
        ele eleVar = this.zzbon;
        a.a(parcel, 2, eleVar == null ? null : eleVar.asBinder());
        a.a(parcel, 3, this.zzbnt);
        a.b(parcel, a2);
    }

    public final fn zzjv() {
        return fq.a(this.zzbnt);
    }

    public final ele zzjz() {
        return this.zzbon;
    }
}
