package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/barcode/zze.class */
public final class zze implements Parcelable.Creator<Barcode.ContactInfo> {
    @Override // android.os.Parcelable.Creator
    public final Barcode.ContactInfo createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        Barcode.PersonName personName = null;
        String str = null;
        String str2 = null;
        Barcode.Phone[] phoneArr = null;
        Barcode.Email[] emailArr = null;
        String[] strArr = null;
        Barcode.Address[] addressArr = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    personName = (Barcode.PersonName) SafeParcelReader.m38880i(parcel, readInt, Barcode.PersonName.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 4:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    phoneArr = (Barcode.Phone[]) SafeParcelReader.m38876m(parcel, readInt, Barcode.Phone.CREATOR);
                    break;
                case 6:
                    emailArr = (Barcode.Email[]) SafeParcelReader.m38876m(parcel, readInt, Barcode.Email.CREATOR);
                    break;
                case 7:
                    strArr = SafeParcelReader.m38878k(parcel, readInt);
                    break;
                case '\b':
                    addressArr = (Barcode.Address[]) SafeParcelReader.m38876m(parcel, readInt, Barcode.Address.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new Barcode.ContactInfo(personName, str, str2, phoneArr, emailArr, strArr, addressArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.ContactInfo[] newArray(int i) {
        return new Barcode.ContactInfo[i];
    }
}
