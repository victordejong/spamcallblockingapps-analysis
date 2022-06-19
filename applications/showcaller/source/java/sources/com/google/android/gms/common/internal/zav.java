package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC6134i;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zav.class */
public final class zav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zav> CREATOR = new C6153n0();

    /* renamed from: d */
    final int f19623d;

    /* renamed from: e */
    final IBinder f19624e;

    /* renamed from: f */
    private final ConnectionResult f19625f;

    /* renamed from: g */
    private final boolean f19626g;

    /* renamed from: h */
    private final boolean f19627h;

    public zav(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.f19623d = i;
        this.f19624e = iBinder;
        this.f19625f = connectionResult;
        this.f19626g = z;
        this.f19627h = z2;
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
        return this.f19625f.equals(zavVar.f19625f) && C6147m.m17044a(m16898k0(), zavVar.m16898k0());
    }

    /* renamed from: k0 */
    public final AbstractC6134i m16898k0() {
        IBinder iBinder = this.f19624e;
        if (iBinder == null) {
            return null;
        }
        return AbstractC6134i.AbstractBinderC6135a.m17054D0(iBinder);
    }

    /* renamed from: l0 */
    public final ConnectionResult m16897l0() {
        return this.f19625f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19623d);
        C6170a.m16938j(parcel, 2, this.f19624e, false);
        C6170a.m16931q(parcel, 3, this.f19625f, i, false);
        C6170a.m16945c(parcel, 4, this.f19626g);
        C6170a.m16945c(parcel, 5, this.f19627h);
        C6170a.m16946b(parcel, m16947a);
    }
}
