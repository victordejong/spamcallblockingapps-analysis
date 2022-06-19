package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.yi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yi.class */
public final class C2051yi implements Parcelable.Creator<zzavo> {
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* renamed from: a */
    public static final zzavo m4758a(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        char c = 0;
        char c2 = 0;
        Bundle bundle = null;
        zzys zzysVar = null;
        zzyx zzyxVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        zzbbq zzbbqVar = null;
        Bundle bundle2 = null;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        String str5 = null;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        zzagy zzagyVar = null;
        ArrayList<String> arrayList3 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        Bundle bundle4 = null;
        String str11 = null;
        zzacn zzacnVar = null;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        ArrayList<Integer> arrayList4 = null;
        String str15 = null;
        ArrayList<String> arrayList5 = null;
        ArrayList<String> arrayList6 = null;
        String str16 = null;
        zzamv zzamvVar = null;
        String str17 = null;
        Bundle bundle6 = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z3 = false;
        boolean z4 = false;
        int i7 = 0;
        boolean z5 = false;
        boolean z6 = false;
        int i8 = 0;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(m8312q)) {
                case 1:
                    i = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 2:
                    bundle = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
                case 3:
                    zzysVar = (zzys) SafeParcelReader.m8324e(parcel, m8312q, zzys.CREATOR);
                    break;
                case 4:
                    zzyxVar = (zzyx) SafeParcelReader.m8324e(parcel, m8312q, zzyx.CREATOR);
                    break;
                case 5:
                    str = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.m8324e(parcel, m8312q, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) SafeParcelReader.m8324e(parcel, m8312q, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 9:
                    str3 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 10:
                    str4 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 11:
                    zzbbqVar = (zzbbq) SafeParcelReader.m8324e(parcel, m8312q, zzbbq.CREATOR);
                    break;
                case 12:
                    bundle2 = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
                case 13:
                    i2 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 14:
                    arrayList = SafeParcelReader.m8321h(parcel, m8312q);
                    break;
                case 15:
                    bundle3 = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
                case 16:
                    z = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case 32:
                case 38:
                case 62:
                default:
                    SafeParcelReader.m8306w(parcel, m8312q);
                    break;
                case 18:
                    i3 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 19:
                    i4 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 20:
                    f = SafeParcelReader.m8314o(parcel, m8312q);
                    break;
                case 21:
                    str5 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 25:
                    c = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 26:
                    str6 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 27:
                    arrayList2 = SafeParcelReader.m8321h(parcel, m8312q);
                    break;
                case 28:
                    str7 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 29:
                    zzagyVar = (zzagy) SafeParcelReader.m8324e(parcel, m8312q, zzagy.CREATOR);
                    break;
                case 30:
                    arrayList3 = SafeParcelReader.m8321h(parcel, m8312q);
                    break;
                case 31:
                    c2 = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 33:
                    str8 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 34:
                    f2 = SafeParcelReader.m8314o(parcel, m8312q);
                    break;
                case 35:
                    i5 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 36:
                    i6 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 37:
                    z3 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 39:
                    str9 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 40:
                    z2 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 41:
                    str10 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 42:
                    z4 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 43:
                    i7 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 44:
                    bundle4 = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
                case 45:
                    str11 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 46:
                    zzacnVar = (zzacn) SafeParcelReader.m8324e(parcel, m8312q, zzacn.CREATOR);
                    break;
                case 47:
                    z5 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 48:
                    bundle5 = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
                case 49:
                    str12 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 50:
                    str13 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 51:
                    str14 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 52:
                    z6 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 53:
                    arrayList4 = SafeParcelReader.m8325d(parcel, m8312q);
                    break;
                case 54:
                    str15 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 55:
                    arrayList5 = SafeParcelReader.m8321h(parcel, m8312q);
                    break;
                case 56:
                    i8 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 57:
                    z7 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 58:
                    z8 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 59:
                    z9 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 60:
                    arrayList6 = SafeParcelReader.m8321h(parcel, m8312q);
                    break;
                case 61:
                    str16 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 63:
                    zzamvVar = (zzamv) SafeParcelReader.m8324e(parcel, m8312q, zzamv.CREATOR);
                    break;
                case 64:
                    str17 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 65:
                    bundle6 = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzavo(i, bundle, zzysVar, zzyxVar, str, applicationInfo, packageInfo, str2, str3, str4, zzbbqVar, bundle2, i2, arrayList, bundle3, z, i3, i4, f, str5, c, str6, arrayList2, str7, zzagyVar, arrayList3, c2, str8, f2, z2, i5, i6, z3, str9, str10, z4, i7, bundle4, str11, zzacnVar, z5, bundle5, str12, str13, str14, z6, arrayList4, str15, arrayList5, i8, z7, z8, z9, arrayList6, str16, zzamvVar, str17, bundle6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzavo createFromParcel(Parcel parcel) {
        return m4758a(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzavo[] newArray(int i) {
        return new zzavo[i];
    }
}
