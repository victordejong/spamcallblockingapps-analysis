package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C1592a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.r9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/r9.class */
public final class C2333r9 implements Parcelable.Creator<zzkl> {
    /* renamed from: a */
    static void m3833a(zzkl zzklVar, Parcel parcel, int i) {
        int a = C1592a.m8302a(parcel);
        C1592a.m8292k(parcel, 1, zzklVar.b);
        C1592a.m8286q(parcel, 2, zzklVar.c, false);
        C1592a.m8289n(parcel, 3, zzklVar.d);
        C1592a.m8288o(parcel, 4, zzklVar.e, false);
        C1592a.m8294i(parcel, 5, null, false);
        C1592a.m8286q(parcel, 6, zzklVar.f, false);
        C1592a.m8286q(parcel, 7, zzklVar.g, false);
        C1592a.m8296g(parcel, 8, zzklVar.h, false);
        C1592a.m8301b(parcel, a);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzkl createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(q)) {
                case 1:
                    i = SafeParcelReader.m8310s(parcel, q);
                    break;
                case 2:
                    str = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 3:
                    j = SafeParcelReader.m8309t(parcel, q);
                    break;
                case 4:
                    l = SafeParcelReader.m8308u(parcel, q);
                    break;
                case 5:
                    f = SafeParcelReader.m8313p(parcel, q);
                    break;
                case 6:
                    str2 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 7:
                    str3 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 8:
                    d = SafeParcelReader.m8315n(parcel, q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzkl(i, str, j, l, f, str2, str3, d);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzkl[] newArray(int i) {
        return new zzkl[i];
    }
}
