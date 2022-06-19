package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/wobs/zzc.class */
public final class zzc implements Parcelable.Creator<CommonWalletObject> {
    @Override // android.os.Parcelable.Creator
    public final CommonWalletObject createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        int i = 0;
        boolean z = false;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        TimeInterval timeInterval = null;
        String str9 = null;
        String str10 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 4:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 7:
                    str6 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\b':
                    str7 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\t':
                    str8 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\n':
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 11:
                    arrayList = SafeParcelReader.m38875n(parcel, readInt, WalletObjectMessage.CREATOR);
                    break;
                case '\f':
                    timeInterval = (TimeInterval) SafeParcelReader.m38880i(parcel, readInt, TimeInterval.CREATOR);
                    break;
                case '\r':
                    arrayList2 = SafeParcelReader.m38875n(parcel, readInt, LatLng.CREATOR);
                    break;
                case 14:
                    str9 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 15:
                    str10 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 16:
                    arrayList3 = SafeParcelReader.m38875n(parcel, readInt, LabelValueRow.CREATOR);
                    break;
                case 17:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 18:
                    arrayList4 = SafeParcelReader.m38875n(parcel, readInt, UriData.CREATOR);
                    break;
                case 19:
                    arrayList5 = SafeParcelReader.m38875n(parcel, readInt, TextModuleData.CREATOR);
                    break;
                case 20:
                    arrayList6 = SafeParcelReader.m38875n(parcel, readInt, UriData.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new CommonWalletObject(str, str2, str3, str4, str5, str6, str7, str8, i, arrayList, timeInterval, arrayList2, str9, str10, arrayList3, z, arrayList4, arrayList5, arrayList6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ CommonWalletObject[] newArray(int i) {
        return new CommonWalletObject[i];
    }
}
