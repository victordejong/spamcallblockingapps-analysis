package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.r */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/r.class */
public final class C7842r implements Parcelable.Creator<zzas> {
    /* renamed from: a */
    public static void m6052a(zzas zzasVar, Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 2, zzasVar.f35872d, false);
        C6170a.m16931q(parcel, 3, zzasVar.f35873e, i, false);
        C6170a.m16930r(parcel, 4, zzasVar.f35874f, false);
        C6170a.m16934n(parcel, 5, zzasVar.f35875g);
        C6170a.m16946b(parcel, m16947a);
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzas createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        zzaq zzaqVar = null;
        String str2 = null;
        char c = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 2) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 3) {
                zzaqVar = (zzaq) SafeParcelReader.m16959o(parcel, m16983C, zzaq.CREATOR);
            } else if (m16952v == 4) {
                str2 = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v != 5) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                c = SafeParcelReader.m16980F(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzas(str, zzaqVar, str2, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzas[] newArray(int i) {
        return new zzas[i];
    }
}
