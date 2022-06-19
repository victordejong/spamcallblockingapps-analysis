package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/RootTelemetryConfiguration.class */
public class RootTelemetryConfiguration extends AbstractSafeParcelable {
    @KeepForSdk
    public static final Parcelable.Creator<RootTelemetryConfiguration> CREATOR = new zzai();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f5996a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final boolean f5997b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f5998c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final int f5999d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final int f6000e;

    @SafeParcelable.Constructor
    public RootTelemetryConfiguration(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) int i3) {
        this.f5996a = i;
        this.f5997b = z;
        this.f5998c = z2;
        this.f5999d = i2;
        this.f6000e = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5996a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        boolean z = this.f5997b;
        parcel.writeInt(262146);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f5998c;
        parcel.writeInt(262147);
        parcel.writeInt(z2 ? 1 : 0);
        int i3 = this.f5999d;
        parcel.writeInt(262148);
        parcel.writeInt(i3);
        int i4 = this.f6000e;
        parcel.writeInt(262149);
        parcel.writeInt(i4);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
