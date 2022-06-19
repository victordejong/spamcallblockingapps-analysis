package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.internal.zav;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zak.class */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new C7949i();

    /* renamed from: d */
    final int f35917d;

    /* renamed from: e */
    private final ConnectionResult f35918e;

    /* renamed from: f */
    private final zav f35919f;

    public zak(int i, ConnectionResult connectionResult, zav zavVar) {
        this.f35917d = i;
        this.f35918e = connectionResult;
        this.f35919f = zavVar;
    }

    /* renamed from: k0 */
    public final ConnectionResult m5848k0() {
        return this.f35918e;
    }

    /* renamed from: l0 */
    public final zav m5847l0() {
        return this.f35919f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f35917d);
        C6170a.m16931q(parcel, 2, this.f35918e, i, false);
        C6170a.m16931q(parcel, 3, this.f35919f, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
