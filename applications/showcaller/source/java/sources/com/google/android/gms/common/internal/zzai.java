package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzai.class */
public final class zzai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzai> CREATOR = new C6192z0();

    /* renamed from: d */
    final int f19632d;

    public zzai(int i) {
        this.f19632d = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19632d);
        C6170a.m16946b(parcel, m16947a);
    }
}
