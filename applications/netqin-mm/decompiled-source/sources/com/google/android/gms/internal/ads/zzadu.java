package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadu.class */
public final class zzadu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzadu> CREATOR = new zzadt();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f24039a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final boolean f24040b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f24041c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f24042d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final int f24043e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final zzaak f24044f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final boolean f24045g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final int f24046h;

    @SafeParcelable.Constructor
    public zzadu(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) boolean z2, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 6) zzaak zzaakVar, @SafeParcelable.Param(id = 7) boolean z3, @SafeParcelable.Param(id = 8) int i4) {
        this.f24039a = i;
        this.f24040b = z;
        this.f24041c = i2;
        this.f24042d = z2;
        this.f24043e = i3;
        this.f24044f = zzaakVar;
        this.f24045g = z3;
        this.f24046h = i4;
    }

    public zzadu(NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.m18065f(), nativeAdOptions.m18069b(), nativeAdOptions.m18066e(), nativeAdOptions.m18070a(), nativeAdOptions.m18067d() != null ? new zzaak(nativeAdOptions.m18067d()) : null, nativeAdOptions.m18064g(), nativeAdOptions.m18068c());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f24039a);
        SafeParcelWriter.m17218a(parcel, 2, this.f24040b);
        SafeParcelWriter.m17231a(parcel, 3, this.f24041c);
        SafeParcelWriter.m17218a(parcel, 4, this.f24042d);
        SafeParcelWriter.m17231a(parcel, 5, this.f24043e);
        SafeParcelWriter.m17226a(parcel, 6, (Parcelable) this.f24044f, i, false);
        SafeParcelWriter.m17218a(parcel, 7, this.f24045g);
        SafeParcelWriter.m17231a(parcel, 8, this.f24046h);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
