package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.vq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vq.class */
public final class C7080vq implements Parcelable.Creator<zzbdg> {
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbdg createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
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
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 3:
                    bundle = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 4:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 5:
                    arrayList = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 6:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 7:
                    i3 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 8:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 9:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 10:
                    zzbioVar = (zzbio) SafeParcelReader.m16959o(parcel, m16983C, zzbio.CREATOR);
                    break;
                case 11:
                    location = (Location) SafeParcelReader.m16959o(parcel, m16983C, Location.CREATOR);
                    break;
                case 12:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 13:
                    bundle2 = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 14:
                    bundle3 = SafeParcelReader.m16968f(parcel, m16983C);
                    break;
                case 15:
                    arrayList2 = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 16:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 17:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 18:
                    z3 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 19:
                    zzbcxVar = (zzbcx) SafeParcelReader.m16959o(parcel, m16983C, zzbcx.CREATOR);
                    break;
                case 20:
                    i4 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 21:
                    str5 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 22:
                    arrayList3 = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 23:
                    i5 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 24:
                    str6 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbdg(i, c, bundle, i2, arrayList, z, i3, z2, str, zzbioVar, location, str2, bundle2, bundle3, arrayList2, str3, str4, z3, zzbcxVar, i4, str5, arrayList3, i5, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbdg[] newArray(int i) {
        return new zzbdg[i];
    }
}
