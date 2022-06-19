package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdi.class */
public final class zzbdi implements Parcelable.Creator<zzbdg> {
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final zzbdg createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i4 = 0;
        int i5 = 0;
        Bundle bundle = null;
        ArrayList<String> arrayList = null;
        String str = null;
        zzbio zzbioVar = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        String str4 = null;
        zzbcx zzbcxVar = null;
        String str5 = null;
        ArrayList<String> arrayList3 = null;
        String str6 = null;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    c = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 3:
                    bundle = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case 4:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 5:
                    arrayList = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case 6:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 7:
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\b':
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\t':
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\n':
                    zzbioVar = (zzbio) SafeParcelReader.m38880i(parcel, readInt, zzbio.CREATOR);
                    break;
                case 11:
                    location = (Location) SafeParcelReader.m38880i(parcel, readInt, Location.CREATOR);
                    break;
                case '\f':
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\r':
                    bundle2 = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case 14:
                    bundle3 = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case 15:
                    arrayList2 = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case 16:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 17:
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 18:
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 19:
                    zzbcxVar = (zzbcx) SafeParcelReader.m38880i(parcel, readInt, zzbcx.CREATOR);
                    break;
                case 20:
                    i4 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 21:
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 22:
                    arrayList3 = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case 23:
                    i5 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 24:
                    str6 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzbdg(i, c, bundle, i2, arrayList, z, i3, z2, str, zzbioVar, location, str2, bundle2, bundle3, arrayList2, str3, str4, z3, zzbcxVar, i4, str5, arrayList3, i5, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbdg[] newArray(int i) {
        return new zzbdg[i];
    }
}
