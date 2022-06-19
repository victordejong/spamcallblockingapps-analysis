package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.wallet.wobs.LabelValueRow;
import com.google.android.gms.wallet.wobs.LoyaltyPoints;
import com.google.android.gms.wallet.wobs.TextModuleData;
import com.google.android.gms.wallet.wobs.TimeInterval;
import com.google.android.gms.wallet.wobs.UriData;
import com.google.android.gms.wallet.wobs.WalletObjectMessage;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzr.class */
public final class zzr implements Parcelable.Creator<LoyaltyWalletObject> {
    @Override // android.os.Parcelable.Creator
    public final LoyaltyWalletObject createFromParcel(Parcel parcel) {
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
        String str9 = null;
        String str10 = null;
        TimeInterval timeInterval = null;
        String str11 = null;
        String str12 = null;
        LoyaltyPoints loyaltyPoints = null;
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
                    str9 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 11:
                    str10 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\f':
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\r':
                    arrayList = SafeParcelReader.m38875n(parcel, readInt, WalletObjectMessage.CREATOR);
                    break;
                case 14:
                    timeInterval = (TimeInterval) SafeParcelReader.m38880i(parcel, readInt, TimeInterval.CREATOR);
                    break;
                case 15:
                    arrayList2 = SafeParcelReader.m38875n(parcel, readInt, LatLng.CREATOR);
                    break;
                case 16:
                    str11 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 17:
                    str12 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 18:
                    arrayList3 = SafeParcelReader.m38875n(parcel, readInt, LabelValueRow.CREATOR);
                    break;
                case 19:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 20:
                    arrayList4 = SafeParcelReader.m38875n(parcel, readInt, UriData.CREATOR);
                    break;
                case 21:
                    arrayList5 = SafeParcelReader.m38875n(parcel, readInt, TextModuleData.CREATOR);
                    break;
                case 22:
                    arrayList6 = SafeParcelReader.m38875n(parcel, readInt, UriData.CREATOR);
                    break;
                case 23:
                    loyaltyPoints = (LoyaltyPoints) SafeParcelReader.m38880i(parcel, readInt, LoyaltyPoints.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new LoyaltyWalletObject(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, i, arrayList, timeInterval, arrayList2, str11, str12, arrayList3, z, arrayList4, arrayList5, arrayList6, loyaltyPoints);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LoyaltyWalletObject[] newArray(int i) {
        return new LoyaltyWalletObject[i];
    }
}
