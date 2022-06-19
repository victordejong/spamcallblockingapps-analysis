package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.r9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/r9.class */
public final class C7852r9 implements Parcelable.Creator<zzkl> {
    /* renamed from: a */
    public static void m6050a(zzkl zzklVar, Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, zzklVar.f35876d);
        C6170a.m16930r(parcel, 2, zzklVar.f35877e, false);
        C6170a.m16934n(parcel, 3, zzklVar.f35878f);
        C6170a.m16933o(parcel, 4, zzklVar.f35879g, false);
        C6170a.m16939i(parcel, 5, null, false);
        C6170a.m16930r(parcel, 6, zzklVar.f35880h, false);
        C6170a.m16930r(parcel, 7, zzklVar.f35881i, false);
        C6170a.m16941g(parcel, 8, zzklVar.f35882j, false);
        C6170a.m16946b(parcel, m16947a);
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzkl createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        char c = 0;
        int i = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 3:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 4:
                    l = SafeParcelReader.m16979G(parcel, m16983C);
                    break;
                case 5:
                    f = SafeParcelReader.m16984B(parcel, m16983C);
                    break;
                case 6:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 7:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 8:
                    d = SafeParcelReader.m16948z(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzkl(i, str, c, l, f, str2, str3, d);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzkl[] newArray(int i) {
        return new zzkl[i];
    }
}
