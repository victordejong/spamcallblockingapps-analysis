package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdw.class */
public final class zzcdw implements Parcelable.Creator<zzcdv> {
    @Override // android.os.Parcelable.Creator
    public final zzcdv createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
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
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 5:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case 7:
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\b':
                    z4 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\t':
                    arrayList2 = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzcdv(str, str2, z, z2, arrayList, z3, z4, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcdv[] newArray(int i) {
        return new zzcdv[i];
    }
}
