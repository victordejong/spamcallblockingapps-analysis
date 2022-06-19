package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zav.class */
public final class zav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zav> CREATOR = new zaw();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6030a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final IBinder f6031b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final ConnectionResult f6032c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f6033d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final boolean f6034e;

    @SafeParcelable.Constructor
    public zav(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) ConnectionResult connectionResult, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2) {
        this.f6030a = i;
        this.f6031b = iBinder;
        this.f6032c = connectionResult;
        this.f6033d = z;
        this.f6034e = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zav)) {
            return false;
        }
        zav zavVar = (zav) obj;
        return this.f6032c.equals(zavVar.f6032c) && Objects.m38910a(m38824o2(), zavVar.m38824o2());
    }

    /* renamed from: o2 */
    public final IAccountAccessor m38824o2() {
        IBinder iBinder = this.f6031b;
        if (iBinder == null) {
            return null;
        }
        return IAccountAccessor.Stub.m38912m1(iBinder);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6030a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38854i(parcel, 2, this.f6031b, false);
        SafeParcelWriter.m38847p(parcel, 3, this.f6032c, i, false);
        boolean z = this.f6033d;
        parcel.writeInt(262148);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f6034e;
        parcel.writeInt(262149);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
