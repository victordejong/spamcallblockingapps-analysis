package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzq.class */
public final class zzq implements Parcelable.Creator {
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = true;
        boolean z2 = true;
        boolean z3 = false;
        int i = 0;
        boolean z4 = false;
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        char c4 = 0;
        char c5 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Boolean bool = null;
        ArrayList<String> arrayList = null;
        String str8 = null;
        String str9 = "";
        char c6 = 0;
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
                    c = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 7:
                    c2 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case '\b':
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\t':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\n':
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 11:
                    c6 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case '\f':
                    str6 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\r':
                    c3 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 14:
                    c4 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 15:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 16:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 17:
                case 20:
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
                case 18:
                    z4 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 19:
                    str7 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 21:
                    int m38864y = SafeParcelReader.m38864y(parcel, readInt);
                    if (m38864y != 0) {
                        SafeParcelReader.m38890B(parcel, readInt, m38864y, 4);
                        bool = Boolean.valueOf(parcel.readInt() != 0);
                        break;
                    } else {
                        bool = null;
                        break;
                    }
                case 22:
                    c5 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 23:
                    arrayList = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case 24:
                    str8 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 25:
                    str9 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzp(str, str2, str3, str4, c, c2, str5, z, z3, c6, str6, c3, c4, i, z2, z4, str7, bool, c5, arrayList, str8, str9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzp[i];
    }
}
