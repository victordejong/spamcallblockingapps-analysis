package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zam.class */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new C6213b();

    /* renamed from: d */
    final int f19680d;

    /* renamed from: e */
    final String f19681e;

    /* renamed from: f */
    final FastJsonResponse.Field<?, ?> f19682f;

    public zam(int i, String str, FastJsonResponse.Field<?, ?> field) {
        this.f19680d = i;
        this.f19681e = str;
        this.f19682f = field;
    }

    public zam(String str, FastJsonResponse.Field<?, ?> field) {
        this.f19680d = 1;
        this.f19681e = str;
        this.f19682f = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19680d);
        C6170a.m16930r(parcel, 2, this.f19681e, false);
        C6170a.m16931q(parcel, 3, this.f19682f, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
