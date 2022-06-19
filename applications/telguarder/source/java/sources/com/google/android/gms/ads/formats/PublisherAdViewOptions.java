package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.ads.zzaas;
import com.google.android.gms.internal.ads.zzagk;
import com.google.android.gms.internal.ads.zzagl;
import com.google.android.gms.internal.ads.zzvy;
import com.google.android.gms.internal.ads.zzxt;
import com.google.android.gms.internal.ads.zzxw;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions.class */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zze();
    private final boolean zzbni;
    private final IBinder zzbnj;
    private final zzxt zzbod;
    private AppEventListener zzboe;

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions$Builder.class */
    public static final class Builder {
        private boolean zzbni = false;
        private ShouldDelayBannerRenderingListener zzbnk;
        private AppEventListener zzboe;

        public final PublisherAdViewOptions build() {
            return new PublisherAdViewOptions(this);
        }

        public final Builder setAppEventListener(AppEventListener appEventListener) {
            this.zzboe = appEventListener;
            return this;
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

    private PublisherAdViewOptions(Builder builder) {
        this.zzbni = builder.zzbni;
        AppEventListener appEventListener = builder.zzboe;
        this.zzboe = appEventListener;
        this.zzbod = appEventListener != null ? new zzvy(this.zzboe) : null;
        this.zzbnj = builder.zzbnk != null ? new zzaas(builder.zzbnk) : null;
    }

    public PublisherAdViewOptions(boolean z, IBinder iBinder, IBinder iBinder2) {
        this.zzbni = z;
        this.zzbod = iBinder != null ? zzxw.zze(iBinder) : null;
        this.zzbnj = iBinder2;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzboe;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzbni;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, getManualImpressionsEnabled());
        zzxt zzxtVar = this.zzbod;
        SafeParcelWriter.writeIBinder(parcel, 2, zzxtVar == null ? null : zzxtVar.asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 3, this.zzbnj, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzagl zzjr() {
        return zzagk.zzy(this.zzbnj);
    }

    public final zzxt zzjv() {
        return this.zzbod;
    }
}
