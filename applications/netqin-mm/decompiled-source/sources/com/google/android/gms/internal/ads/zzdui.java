package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdui.class */
public final class zzdui extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdui> CREATOR = new zzduh();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f27837a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final byte[] f27838b;

    @SafeParcelable.Constructor
    public zzdui(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) byte[] bArr) {
        this.f27837a = i;
        this.f27838b = bArr;
    }

    public zzdui(byte[] bArr) {
        this(1, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f27837a);
        SafeParcelWriter.m17217a(parcel, 2, this.f27838b, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
