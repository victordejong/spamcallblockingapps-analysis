package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qz2.class */
public final class qz2 implements Parcelable.Creator<zzys> {
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzys createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        Bundle bundle = null;
        ArrayList<String> arrayList = null;
        String str = null;
        zzadu zzaduVar = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        String str4 = null;
        zzyk zzykVar = null;
        String str5 = null;
        ArrayList<String> arrayList3 = null;
        char c = 0;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(m8312q)) {
                case 1:
                    i = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 2:
                    c = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 3:
                    bundle = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
                case 4:
                    i2 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 5:
                    arrayList = SafeParcelReader.m8321h(parcel, m8312q);
                    break;
                case 6:
                    z = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 7:
                    i3 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 8:
                    z2 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 9:
                    str = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 10:
                    zzaduVar = (zzadu) SafeParcelReader.m8324e(parcel, m8312q, zzadu.CREATOR);
                    break;
                case 11:
                    location = (Location) SafeParcelReader.m8324e(parcel, m8312q, Location.CREATOR);
                    break;
                case 12:
                    str2 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 13:
                    bundle2 = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
                case 14:
                    bundle3 = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
                case 15:
                    arrayList2 = SafeParcelReader.m8321h(parcel, m8312q);
                    break;
                case 16:
                    str3 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 17:
                    str4 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 18:
                    z3 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 19:
                    zzykVar = (zzyk) SafeParcelReader.m8324e(parcel, m8312q, zzyk.CREATOR);
                    break;
                case 20:
                    i4 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 21:
                    str5 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 22:
                    arrayList3 = SafeParcelReader.m8321h(parcel, m8312q);
                    break;
                case 23:
                    i5 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, m8312q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzys(i, c, bundle, i2, arrayList, z, i3, z2, str, zzaduVar, location, str2, bundle2, bundle3, arrayList2, str3, str4, z3, zzykVar, i4, str5, arrayList3, i5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzys[] newArray(int i) {
        return new zzys[i];
    }
}
