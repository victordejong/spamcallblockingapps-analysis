package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yc0.class */
public final class yc0 implements Parcelable.Creator<zzcbj> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcbj createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        Bundle bundle = null;
        zzcgz zzcgzVar = null;
        ApplicationInfo applicationInfo = null;
        String str = null;
        ArrayList<String> arrayList = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        zzfcj zzfcjVar = null;
        String str4 = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    bundle = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 2:
                    zzcgzVar = (zzcgz) SafeParcelReader.m16959o(parcel, m16983C, zzcgz.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.m16959o(parcel, m16983C, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 5:
                    arrayList = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 6:
                    packageInfo = (PackageInfo) SafeParcelReader.m16959o(parcel, m16983C, PackageInfo.CREATOR);
                    break;
                case 7:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 8:
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
                case 9:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 10:
                    zzfcjVar = (zzfcj) SafeParcelReader.m16959o(parcel, m16983C, zzfcj.CREATOR);
                    break;
                case 11:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzcbj(bundle, zzcgzVar, applicationInfo, str, arrayList, packageInfo, str2, str3, zzfcjVar, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcbj[] newArray(int i) {
        return new zzcbj[i];
    }
}
