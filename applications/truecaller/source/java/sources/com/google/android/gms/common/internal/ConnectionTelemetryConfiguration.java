package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/ConnectionTelemetryConfiguration.class */
public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {
    @KeepForSdk
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new zzl();
    @SafeParcelable.Field

    /* renamed from: a */
    public final RootTelemetryConfiguration f5955a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final boolean f5956b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f5957c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final int[] f5958d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final int f5959e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final int[] f5960f;

    @SafeParcelable.Constructor
    public ConnectionTelemetryConfiguration(@SafeParcelable.Param(id = 1) RootTelemetryConfiguration rootTelemetryConfiguration, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) int[] iArr, @SafeParcelable.Param(id = 5) int i, @SafeParcelable.Param(id = 6) int[] iArr2) {
        this.f5955a = rootTelemetryConfiguration;
        this.f5956b = z;
        this.f5957c = z2;
        this.f5958d = iArr;
        this.f5959e = i;
        this.f5960f = iArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 1, this.f5955a, i, false);
        boolean z = this.f5956b;
        parcel.writeInt(262146);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f5957c;
        parcel.writeInt(262147);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38852k(parcel, 4, this.f5958d, false);
        int i2 = this.f5959e;
        parcel.writeInt(262149);
        parcel.writeInt(i2);
        SafeParcelWriter.m38852k(parcel, 6, this.f5960f, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
