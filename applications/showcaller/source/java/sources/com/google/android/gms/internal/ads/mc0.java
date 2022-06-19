package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mc0.class */
public final class mc0 implements Parcelable.Creator<zzcav> {
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* renamed from: a */
    public static final zzcav m13307a(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        char c = 0;
        char c2 = 0;
        Bundle bundle = null;
        zzbdg zzbdgVar = null;
        zzbdl zzbdlVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        zzcgz zzcgzVar = null;
        Bundle bundle2 = null;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        String str5 = null;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        zzblv zzblvVar = null;
        ArrayList<String> arrayList3 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        Bundle bundle4 = null;
        String str11 = null;
        zzbhg zzbhgVar = null;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        ArrayList<Integer> arrayList4 = null;
        String str15 = null;
        ArrayList<String> arrayList5 = null;
        ArrayList<String> arrayList6 = null;
        String str16 = null;
        zzbrx zzbrxVar = null;
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
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    bundle = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 3:
                    zzbdgVar = (zzbdg) SafeParcelReader.m16959o(parcel, m16983C, zzbdg.CREATOR);
                    break;
                case 4:
                    zzbdlVar = (zzbdl) SafeParcelReader.m16959o(parcel, m16983C, zzbdl.CREATOR);
                    break;
                case 5:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.m16959o(parcel, m16983C, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) SafeParcelReader.m16959o(parcel, m16983C, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 9:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 10:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 11:
                    zzcgzVar = (zzcgz) SafeParcelReader.m16959o(parcel, m16983C, zzcgz.CREATOR);
                    break;
                case 12:
                    bundle2 = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 13:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 14:
                    arrayList = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 15:
                    bundle3 = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 16:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case 32:
                case 38:
                case 62:
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
                case 18:
                    i3 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 19:
                    i4 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 20:
                    f = SafeParcelReader.m16985A(parcel, m16983C);
                    break;
                case 21:
                    str5 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 25:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 26:
                    str6 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 27:
                    arrayList2 = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 28:
                    str7 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 29:
                    zzblvVar = (zzblv) SafeParcelReader.m16959o(parcel, m16983C, zzblv.CREATOR);
                    break;
                case 30:
                    arrayList3 = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 31:
                    c2 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 33:
                    str8 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 34:
                    f2 = SafeParcelReader.m16985A(parcel, m16983C);
                    break;
                case 35:
                    i5 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 36:
                    i6 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 37:
                    z3 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 39:
                    str9 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 40:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 41:
                    str10 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 42:
                    z4 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 43:
                    i7 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 44:
                    bundle4 = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 45:
                    str11 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 46:
                    zzbhgVar = (zzbhg) SafeParcelReader.m16959o(parcel, m16983C, zzbhg.CREATOR);
                    break;
                case 47:
                    z5 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 48:
                    bundle5 = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 49:
                    str12 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 50:
                    str13 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 51:
                    str14 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 52:
                    z6 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 53:
                    arrayList4 = SafeParcelReader.m16963k(parcel, m16983C);
                    break;
                case 54:
                    str15 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 55:
                    arrayList5 = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 56:
                    i8 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 57:
                    z7 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 58:
                    z8 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 59:
                    z9 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 60:
                    arrayList6 = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 61:
                    str16 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 63:
                    zzbrxVar = (zzbrx) SafeParcelReader.m16959o(parcel, m16983C, zzbrx.CREATOR);
                    break;
                case 64:
                    str17 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 65:
                    bundle6 = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzcav(i, bundle, zzbdgVar, zzbdlVar, str, applicationInfo, packageInfo, str2, str3, str4, zzcgzVar, bundle2, i2, arrayList, bundle3, z, i3, i4, f, str5, c, str6, arrayList2, str7, zzblvVar, arrayList3, c2, str8, f2, z2, i5, i6, z3, str9, str10, z4, i7, bundle4, str11, zzbhgVar, z5, bundle5, str12, str13, str14, z6, arrayList4, str15, arrayList5, i8, z7, z8, z9, arrayList6, str16, zzbrxVar, str17, bundle6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcav createFromParcel(Parcel parcel) {
        return m13307a(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcav[] newArray(int i) {
        return new zzcav[i];
    }
}
