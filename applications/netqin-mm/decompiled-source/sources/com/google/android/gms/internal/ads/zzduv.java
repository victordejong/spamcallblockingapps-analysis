package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduv.class */
public final class zzduv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzduv> CREATOR = new zzduy();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f27860a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final byte[] f27861b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f27862c;

    @SafeParcelable.Constructor
    public zzduv(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) byte[] bArr, @SafeParcelable.Param(id = 3) int i2) {
        this.f27860a = i;
        this.f27861b = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.f27862c = i2;
    }

    public zzduv(byte[] bArr, int i) {
        this(1, null, 1);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f27860a);
        SafeParcelWriter.m17217a(parcel, 2, this.f27861b, false);
        SafeParcelWriter.m17231a(parcel, 3, this.f27862c);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
