package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sv.class */
public final class sv implements Parcelable.Creator<zzauj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzauj createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        Bundle bundle = null;
        zzbar zzbarVar = null;
        ApplicationInfo applicationInfo = null;
        String str = null;
        ArrayList<String> arrayList = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        zzdrc zzdrcVar = null;
        String str4 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    bundle = SafeParcelReader.o(parcel, readInt);
                    break;
                case 2:
                    zzbarVar = (zzbar) SafeParcelReader.a(parcel, readInt, zzbar.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.a(parcel, readInt, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case 5:
                    arrayList = SafeParcelReader.u(parcel, readInt);
                    break;
                case 6:
                    packageInfo = (PackageInfo) SafeParcelReader.a(parcel, readInt, PackageInfo.CREATOR);
                    break;
                case 7:
                    str2 = SafeParcelReader.m(parcel, readInt);
                    break;
                case '\b':
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
                case '\t':
                    str3 = SafeParcelReader.m(parcel, readInt);
                    break;
                case '\n':
                    zzdrcVar = (zzdrc) SafeParcelReader.a(parcel, readInt, zzdrc.CREATOR);
                    break;
                case 11:
                    str4 = SafeParcelReader.m(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzauj(bundle, zzbarVar, applicationInfo, str, arrayList, packageInfo, str2, str3, zzdrcVar, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzauj[] newArray(int i) {
        return new zzauj[i];
    }
}
