package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzp.class */
public final class zzp implements Parcelable.Creator<IsReadyToPayRequest> {
    @Override // android.os.Parcelable.Creator
    public final IsReadyToPayRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        ArrayList<Integer> arrayList = null;
        String str = null;
        String str2 = null;
        ArrayList<Integer> arrayList2 = null;
        String str3 = null;
        boolean z = false;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    arrayList = SafeParcelReader.m38882g(parcel, readInt);
                    break;
                case 3:
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
                case 4:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    arrayList2 = SafeParcelReader.m38882g(parcel, readInt);
                    break;
                case 7:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\b':
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new IsReadyToPayRequest(arrayList, str, str2, arrayList2, z, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ IsReadyToPayRequest[] newArray(int i) {
        return new IsReadyToPayRequest[i];
    }
}
