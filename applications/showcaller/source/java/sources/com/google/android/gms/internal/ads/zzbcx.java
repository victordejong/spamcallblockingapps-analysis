package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcx.class */
public final class zzbcx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbcx> CREATOR = new C6747mq();

    /* renamed from: d */
    public final String f33651d;

    /* renamed from: e */
    public final String f33652e;

    public zzbcx(String str, String str2) {
        this.f33651d = str;
        this.f33652e = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f33651d, false);
        C6170a.m16930r(parcel, 2, this.f33652e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
