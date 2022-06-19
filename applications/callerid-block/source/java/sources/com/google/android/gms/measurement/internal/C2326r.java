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
        int m8302a = C1592a.m8302a(parcel);
        C1592a.m8286q(parcel, 2, zzasVar.b, false);
        C1592a.m8287p(parcel, 3, zzasVar.c, i, false);
        C1592a.m8286q(parcel, 4, zzasVar.d, false);
        C1592a.m8289n(parcel, 5, zzasVar.e);
        C1592a.m8301b(parcel, m8302a);
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzas createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        zzaq zzaqVar = null;
        String str2 = null;
        char c = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 2) {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k == 3) {
                zzaqVar = (zzaq) SafeParcelReader.m8324e(parcel, m8312q, zzaq.CREATOR);
            } else if (m8318k == 4) {
                str2 = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k != 5) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                c = SafeParcelReader.m8309t(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzas(str, zzaqVar, str2, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzas[] newArray(int i) {
        return new zzas[i];
    }
}
