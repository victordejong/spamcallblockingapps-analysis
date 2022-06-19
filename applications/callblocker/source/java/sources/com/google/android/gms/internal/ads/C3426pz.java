package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.pz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pz.class */
public final class C3426pz implements Parcelable.Creator<C3423pw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3423pw createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        boolean z = false;
        String str = null;
        ciu ciuVar = null;
        String str2 = null;
        String str3 = null;
        PackageInfo packageInfo = null;
        ArrayList<String> arrayList = null;
        String str4 = null;
        ApplicationInfo applicationInfo = null;
        C3647yd c3647yd = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 2:
                    c3647yd = (C3647yd) SafeParcelReader.m13965a(parcel, m13969a, C3647yd.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.m13965a(parcel, m13969a, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    str4 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                    arrayList = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 6:
                    packageInfo = (PackageInfo) SafeParcelReader.m13965a(parcel, m13969a, PackageInfo.CREATOR);
                    break;
                case 7:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 8:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 9:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 10:
                    ciuVar = (ciu) SafeParcelReader.m13965a(parcel, m13969a, ciu.CREATOR);
                    break;
                case 11:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3423pw(bundle, c3647yd, applicationInfo, str4, arrayList, packageInfo, str3, z, str2, ciuVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3423pw[] newArray(int i) {
        return new C3423pw[i];
    }
}
