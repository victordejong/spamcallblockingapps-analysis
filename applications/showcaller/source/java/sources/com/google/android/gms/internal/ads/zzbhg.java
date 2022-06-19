package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhg.class */
public final class zzbhg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbhg> CREATOR = new C6788nu();

    /* renamed from: d */
    public final int f33708d;

    public zzbhg(int i) {
        this.f33708d = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 2, this.f33708d);
        C6170a.m16946b(parcel, m16947a);
    }
}
