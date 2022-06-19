package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/MethodInvocation.class */
public class MethodInvocation extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new zan();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f5982a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f5983b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f5984c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final long f5985d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final long f5986e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f5987f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f5988g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final int f5989h;

    @SafeParcelable.Constructor
    public MethodInvocation(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) long j, @SafeParcelable.Param(id = 5) long j2, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) String str2, @SafeParcelable.Param(id = 8) int i4) {
        this.f5982a = i;
        this.f5983b = i2;
        this.f5984c = i3;
        this.f5985d = j;
        this.f5986e = j2;
        this.f5987f = str;
        this.f5988g = str2;
        this.f5989h = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5982a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        int i3 = this.f5983b;
        parcel.writeInt(262146);
        parcel.writeInt(i3);
        int i4 = this.f5984c;
        parcel.writeInt(262147);
        parcel.writeInt(i4);
        long j = this.f5985d;
        parcel.writeInt(524292);
        parcel.writeLong(j);
        long j2 = this.f5986e;
        parcel.writeInt(524293);
        parcel.writeLong(j2);
        SafeParcelWriter.m38846q(parcel, 6, this.f5987f, false);
        SafeParcelWriter.m38846q(parcel, 7, this.f5988g, false);
        int i5 = this.f5989h;
        parcel.writeInt(262152);
        parcel.writeInt(i5);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
