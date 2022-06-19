package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbk.class */
public final class zzcbk implements Parcelable.Creator<zzcbj> {
    @Override // android.os.Parcelable.Creator
    public final zzcbj createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
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
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    bundle = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case 2:
                    zzcgzVar = (zzcgz) SafeParcelReader.m38880i(parcel, readInt, zzcgz.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.m38880i(parcel, readInt, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    arrayList = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case 6:
                    packageInfo = (PackageInfo) SafeParcelReader.m38880i(parcel, readInt, PackageInfo.CREATOR);
                    break;
                case 7:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\b':
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
                case '\t':
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\n':
                    zzfcjVar = (zzfcj) SafeParcelReader.m38880i(parcel, readInt, zzfcj.CREATOR);
                    break;
                case 11:
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzcbj(bundle, zzcgzVar, applicationInfo, str, arrayList, packageInfo, str2, str3, zzfcjVar, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcbj[] newArray(int i) {
        return new zzcbj[i];
    }
}
