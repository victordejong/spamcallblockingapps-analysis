package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import p1727n3.p1789g0.C26232y;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/zzq.class */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new zzr();
    @SafeParcelable.Field

    /* renamed from: a */
    public final boolean f6162a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f6163b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f6164c;

    @SafeParcelable.Constructor
    public zzq(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i) {
        this.f6162a = z;
        this.f6163b = str;
        this.f6164c = C26232y.m2279y2(i) - 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        boolean z = this.f6162a;
        parcel.writeInt(262145);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 2, this.f6163b, false);
        int i2 = this.f6164c;
        parcel.writeInt(262147);
        parcel.writeInt(i2);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
