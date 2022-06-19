package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zax.class */
public final class zax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zax> CREATOR = new C6156o0();

    /* renamed from: d */
    final int f19628d;

    /* renamed from: e */
    private final int f19629e;

    /* renamed from: f */
    private final int f19630f;
    @Deprecated

    /* renamed from: g */
    private final Scope[] f19631g;

    public zax(int i, int i2, int i3, Scope[] scopeArr) {
        this.f19628d = i;
        this.f19629e = i2;
        this.f19630f = i3;
        this.f19631g = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19628d);
        C6170a.m16937k(parcel, 2, this.f19629e);
        C6170a.m16937k(parcel, 3, this.f19630f);
        C6170a.m16927u(parcel, 4, this.f19631g, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
