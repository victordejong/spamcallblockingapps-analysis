package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.api.accounttransfer.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/b.class */
public final class C5876b implements Parcelable.Creator<zzo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        ArrayList<String> arrayList3 = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        int i = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    arrayList = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 3:
                    arrayList2 = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 4:
                    arrayList3 = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 5:
                    arrayList4 = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 6:
                    arrayList5 = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzo(i, arrayList, arrayList2, arrayList3, arrayList4, arrayList5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo[] newArray(int i) {
        return new zzo[i];
    }
}
