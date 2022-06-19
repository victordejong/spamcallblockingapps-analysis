package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zzk.class */
public final class zzk implements Parcelable.Creator<PolygonOptions> {
    @Override // android.os.Parcelable.Creator
    public final PolygonOptions createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = null;
        float f = 0.0f;
        ArrayList arrayList3 = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i3 = 0;
        float f2 = 0.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    arrayList2 = SafeParcelReader.m38875n(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    ClassLoader classLoader = zzk.class.getClassLoader();
                    int m38864y = SafeParcelReader.m38864y(parcel, readInt);
                    int dataPosition = parcel.dataPosition();
                    if (m38864y != 0) {
                        parcel.readList(arrayList, classLoader);
                        parcel.setDataPosition(dataPosition + m38864y);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    f2 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 5:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 6:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 7:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\t':
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\n':
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 11:
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\f':
                    arrayList3 = SafeParcelReader.m38875n(parcel, readInt, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new PolygonOptions(arrayList2, arrayList, f2, i, i2, f, z, z2, z3, i3, arrayList3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolygonOptions[] newArray(int i) {
        return new PolygonOptions[i];
    }
}
