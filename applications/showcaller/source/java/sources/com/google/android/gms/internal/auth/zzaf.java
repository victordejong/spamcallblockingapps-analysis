package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzaf.class */
public final class zzaf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaf> CREATOR = new C7259d();

    /* renamed from: d */
    private final int f34251d = 1;

    /* renamed from: e */
    private final String f34252e;

    /* renamed from: f */
    private final byte[] f34253f;

    public zzaf(int i, String str, byte[] bArr) {
        this.f34252e = (String) C6155o.m17018j(str);
        this.f34253f = (byte[]) C6155o.m17018j(bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f34251d);
        C6170a.m16930r(parcel, 2, this.f34252e, false);
        C6170a.m16942f(parcel, 3, this.f34253f, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
