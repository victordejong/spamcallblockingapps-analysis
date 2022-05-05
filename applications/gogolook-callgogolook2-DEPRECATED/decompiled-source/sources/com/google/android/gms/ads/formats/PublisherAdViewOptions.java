package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractBinderC7431v4;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7419u4;
import p081h.p203i.p204a.p224e.p259j.p260a.BinderC7284j3;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions.class */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzc();
    public final boolean zzvz;
    @Nullable
    public final AbstractC7419u4 zzwa;
    @Nullable
    public AppEventListener zzwb;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions$Builder.class */
    public static final class Builder {
        public boolean zzvz = false;
        public AppEventListener zzwb;

        public final PublisherAdViewOptions build() {
            return new PublisherAdViewOptions(this);
        }

        public final Builder setAppEventListener(AppEventListener appEventListener) {
            this.zzwb = appEventListener;
            return this;
        }

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.zzvz = z;
            return this;
        }
    }

    public PublisherAdViewOptions(Builder builder) {
        this.zzvz = builder.zzvz;
        this.zzwb = builder.zzwb;
        AppEventListener appEventListener = this.zzwb;
        this.zzwa = appEventListener != null ? new BinderC7284j3(appEventListener) : null;
    }

    public PublisherAdViewOptions(boolean z, @Nullable IBinder iBinder) {
        this.zzvz = z;
        this.zzwa = iBinder != null ? AbstractBinderC7431v4.m20632a(iBinder) : null;
    }

    @Nullable
    public final AppEventListener getAppEventListener() {
        return this.zzwb;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzvz;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21212a(parcel, 1, getManualImpressionsEnabled());
        AbstractC7419u4 u4Var = this.zzwa;
        C7031b.m21222a(parcel, 2, u4Var == null ? null : u4Var.asBinder(), false);
        C7031b.m21229a(parcel, a);
    }

    @Nullable
    public final AbstractC7419u4 zzbg() {
        return this.zzwa;
    }
}
