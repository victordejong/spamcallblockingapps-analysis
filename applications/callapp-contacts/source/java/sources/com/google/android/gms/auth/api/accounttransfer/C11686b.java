package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.api.accounttransfer.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/accounttransfer/b.class */
public final class C11686b implements Parcelable.Creator<zzo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        ArrayList<String> arrayList3 = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    arrayList = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 3:
                    arrayList2 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 4:
                    arrayList3 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 5:
                    arrayList4 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 6:
                    arrayList5 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzo(i, arrayList, arrayList2, arrayList3, arrayList4, arrayList5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo[] newArray(int i) {
        return new zzo[i];
    }
}
