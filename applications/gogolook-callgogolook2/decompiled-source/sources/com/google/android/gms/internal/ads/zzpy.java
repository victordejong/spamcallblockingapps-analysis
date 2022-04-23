package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7354p0;
import p081h.p203i.p204a.p224e.p259j.p260a.C7349o7;
@AbstractC7354p0
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpy.class */
public final class zzpy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzpy> CREATOR = new C7349o7();

    /* renamed from: a */
    public final int f6788a;

    /* renamed from: b */
    public final boolean f6789b;

    /* renamed from: c */
    public final int f6790c;

    /* renamed from: d */
    public final boolean f6791d;

    /* renamed from: e */
    public final int f6792e;
    @Nullable

    /* renamed from: f */
    public final zznf f6793f;

    /* renamed from: g */
    public final boolean f6794g;

    public zzpy(int i, boolean z, int i2, boolean z2, int i3, zznf zznfVar, boolean z3) {
        this.f6788a = i;
        this.f6789b = z;
        this.f6790c = i2;
        this.f6791d = z2;
        this.f6792e = i3;
        this.f6793f = zznfVar;
        this.f6794g = z3;
    }

    public zzpy(NativeAdOptions nativeAdOptions) {
        this(3, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new zznf(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zzbe());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6788a);
        C7031b.m21212a(parcel, 2, this.f6789b);
        C7031b.m21225a(parcel, 3, this.f6790c);
        C7031b.m21212a(parcel, 4, this.f6791d);
        C7031b.m21225a(parcel, 5, this.f6792e);
        C7031b.m21220a(parcel, 6, (Parcelable) this.f6793f, i, false);
        C7031b.m21212a(parcel, 7, this.f6794g);
        C7031b.m21229a(parcel, a);
    }
}
