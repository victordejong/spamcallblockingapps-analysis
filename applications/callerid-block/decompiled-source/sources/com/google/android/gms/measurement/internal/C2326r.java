package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C1592a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/r.class */
public final class C2326r implements Parcelable.Creator<zzas> {
    /* renamed from: a */
    static void m3835a(zzas zzasVar, Parcel parcel, int i) {
        int a = C1592a.m8302a(parcel);
        C1592a.m8286q(parcel, 2, zzasVar.b, false);
        C1592a.m8287p(parcel, 3, zzasVar.c, i, false);
        C1592a.m8286q(parcel, 4, zzasVar.d, false);
        C1592a.m8289n(parcel, 5, zzasVar.e);
        C1592a.m8301b(parcel, a);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzas createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        zzaq zzaqVar = null;
        String str2 = null;
        long j = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 2) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 3) {
                zzaqVar = (zzaq) SafeParcelReader.m8324e(parcel, q, zzaq.CREATOR);
            } else if (k == 4) {
                str2 = SafeParcelReader.m8323f(parcel, q);
            } else if (k != 5) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                j = SafeParcelReader.m8309t(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzas(str, zzaqVar, str2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzas[] newArray(int i) {
        return new zzas[i];
    }
}
