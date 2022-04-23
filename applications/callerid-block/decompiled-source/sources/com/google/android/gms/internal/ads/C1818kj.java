package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.kj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kj.class */
public final class C1818kj implements Parcelable.Creator<zzawc> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzawc createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        Bundle bundle = null;
        zzbbq zzbbqVar = null;
        ApplicationInfo applicationInfo = null;
        String str = null;
        ArrayList<String> arrayList = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        zzdsy zzdsyVar = null;
        String str4 = null;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(q)) {
                case 1:
                    bundle = SafeParcelReader.m8328a(parcel, q);
                    break;
                case 2:
                    zzbbqVar = (zzbbq) SafeParcelReader.m8324e(parcel, q, zzbbq.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.m8324e(parcel, q, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    str = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 5:
                    arrayList = SafeParcelReader.m8321h(parcel, q);
                    break;
                case 6:
                    packageInfo = (PackageInfo) SafeParcelReader.m8324e(parcel, q, PackageInfo.CREATOR);
                    break;
                case 7:
                    str2 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 8:
                default:
                    SafeParcelReader.m8306w(parcel, q);
                    break;
                case 9:
                    str3 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 10:
                    zzdsyVar = (zzdsy) SafeParcelReader.m8324e(parcel, q, zzdsy.CREATOR);
                    break;
                case 11:
                    str4 = SafeParcelReader.m8323f(parcel, q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzawc(bundle, zzbbqVar, applicationInfo, str, arrayList, packageInfo, str2, str3, zzdsyVar, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzawc[] newArray(int i) {
        return new zzawc[i];
    }
}
