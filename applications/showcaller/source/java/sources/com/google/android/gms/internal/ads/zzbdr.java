package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdr.class */
public final class zzbdr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbdr> CREATOR = new C6339br();

    /* renamed from: d */
    public final int f33705d;

    public zzbdr(int i) {
        this.f33705d = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 2, this.f33705d);
        C6170a.m16946b(parcel, m16947a);
    }
}
