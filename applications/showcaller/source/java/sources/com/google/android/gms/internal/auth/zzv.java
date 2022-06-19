package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzv.class */
public final class zzv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzv> CREATOR = new C7270o();

    /* renamed from: d */
    private final int f34311d = 1;

    /* renamed from: e */
    private final String f34312e;

    public zzv(int i, String str) {
        this.f34312e = (String) C6155o.m17018j(str);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f34311d);
        C6170a.m16930r(parcel, 2, this.f34312e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
