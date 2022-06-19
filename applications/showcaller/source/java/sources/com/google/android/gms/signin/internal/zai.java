package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.internal.zat;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zai.class */
public final class zai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zai> CREATOR = new C7948h();

    /* renamed from: d */
    final int f35915d;

    /* renamed from: e */
    final zat f35916e;

    public zai(int i, zat zatVar) {
        this.f35915d = i;
        this.f35916e = zatVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f35915d);
        C6170a.m16931q(parcel, 2, this.f35916e, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
