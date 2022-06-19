package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/zac.class */
public final class zac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zac> CREATOR = new C6210c();

    /* renamed from: d */
    final int f19656d;

    /* renamed from: e */
    final String f19657e;

    /* renamed from: f */
    final int f19658f;

    public zac(int i, String str, int i2) {
        this.f19656d = i;
        this.f19657e = str;
        this.f19658f = i2;
    }

    public zac(String str, int i) {
        this.f19656d = 1;
        this.f19657e = str;
        this.f19658f = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19656d);
        C6170a.m16930r(parcel, 2, this.f19657e, false);
        C6170a.m16937k(parcel, 3, this.f19658f);
        C6170a.m16946b(parcel, m16947a);
    }
}
