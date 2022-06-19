package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.pf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pf.class */
public final class C3406pf implements Parcelable.Creator<C3407pg> {
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v150, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3407pg createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        Bundle bundle = null;
        dya dyaVar = null;
        dyd dydVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        C3647yd c3647yd = null;
        Bundle bundle2 = null;
        int i2 = 0;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        String str5 = null;
        char c = 0;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        C2835bl c2835bl = null;
        ArrayList<String> arrayList3 = null;
        char c2 = 0;
        String str8 = null;
        float f2 = 0.0f;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z3 = false;
        boolean z4 = false;
        String str9 = null;
        String str10 = null;
        boolean z5 = false;
        int i7 = 0;
        Bundle bundle4 = null;
        String str11 = null;
        ebg ebgVar = null;
        boolean z6 = false;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        boolean z7 = false;
        ArrayList<Integer> arrayList4 = null;
        String str15 = null;
        ArrayList<String> arrayList5 = null;
        int i8 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        ArrayList<String> arrayList6 = null;
        String str16 = null;
        C3171gn c3171gn = null;
        String str17 = null;
        Bundle bundle6 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 3:
                    dyaVar = (dya) SafeParcelReader.m13965a(parcel, m13969a, dya.CREATOR);
                    break;
                case 4:
                    dydVar = (dyd) SafeParcelReader.m13965a(parcel, m13969a, dyd.CREATOR);
                    break;
                case 5:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.m13965a(parcel, m13969a, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) SafeParcelReader.m13965a(parcel, m13969a, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 9:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 10:
                    str4 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 11:
                    c3647yd = (C3647yd) SafeParcelReader.m13965a(parcel, m13969a, C3647yd.CREATOR);
                    break;
                case 12:
                    bundle2 = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 13:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 14:
                    arrayList = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 15:
                    bundle3 = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 16:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case 32:
                case 62:
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
                case 18:
                    i3 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 19:
                    i4 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 20:
                    f = SafeParcelReader.m13955h(parcel, m13969a);
                    break;
                case 21:
                    str5 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 25:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 26:
                    str6 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 27:
                    arrayList2 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 28:
                    str7 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 29:
                    c2835bl = (C2835bl) SafeParcelReader.m13965a(parcel, m13969a, C2835bl.CREATOR);
                    break;
                case 30:
                    arrayList3 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 31:
                    c2 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 33:
                    str8 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 34:
                    f2 = SafeParcelReader.m13955h(parcel, m13969a);
                    break;
                case 35:
                    i5 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 36:
                    i6 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 37:
                    z3 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 38:
                    z4 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 39:
                    str9 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 40:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 41:
                    str10 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 42:
                    z5 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 43:
                    i7 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 44:
                    bundle4 = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 45:
                    str11 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 46:
                    ebgVar = (ebg) SafeParcelReader.m13965a(parcel, m13969a, ebg.CREATOR);
                    break;
                case 47:
                    z6 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 48:
                    bundle5 = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 49:
                    str12 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 50:
                    str13 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 51:
                    str14 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 52:
                    z7 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 53:
                    arrayList4 = SafeParcelReader.m13947p(parcel, m13969a);
                    break;
                case 54:
                    str15 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 55:
                    arrayList5 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 56:
                    i8 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 57:
                    z8 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 58:
                    z9 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 59:
                    z10 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 60:
                    arrayList6 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 61:
                    str16 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 63:
                    c3171gn = (C3171gn) SafeParcelReader.m13965a(parcel, m13969a, C3171gn.CREATOR);
                    break;
                case 64:
                    str17 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 65:
                    bundle6 = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3407pg(i, bundle, dyaVar, dydVar, str, applicationInfo, packageInfo, str2, str3, str4, c3647yd, bundle2, i2, arrayList, bundle3, z, i3, i4, f, str5, c, str6, arrayList2, str7, c2835bl, arrayList3, c2, str8, f2, z2, i5, i6, z3, z4, str9, str10, z5, i7, bundle4, str11, ebgVar, z6, bundle5, str12, str13, str14, z7, arrayList4, str15, arrayList5, i8, z8, z9, z10, arrayList6, str16, c3171gn, str17, bundle6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3407pg[] newArray(int i) {
        return new C3407pg[i];
    }
}
