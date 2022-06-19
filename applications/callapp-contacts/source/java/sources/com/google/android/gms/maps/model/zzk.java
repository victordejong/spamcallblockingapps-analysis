package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzk.class */
public final class zzk implements Parcelable.Creator<PolygonOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolygonOptions createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i3 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    arrayList2 = SafeParcelReader.m19138c(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    ClassLoader classLoader = getClass().getClassLoader();
                    int m19145a = SafeParcelReader.m19145a(parcel, readInt);
                    int dataPosition = parcel.dataPosition();
                    if (m19145a == 0) {
                        break;
                    } else {
                        parcel.readList(arrayList, classLoader);
                        parcel.setDataPosition(dataPosition + m19145a);
                        break;
                    }
                case 4:
                    f = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 5:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 6:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 7:
                    f2 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\t':
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\n':
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 11:
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '\f':
                    arrayList3 = SafeParcelReader.m19138c(parcel, readInt, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new PolygonOptions(arrayList2, arrayList, f, i, i2, f2, z, z2, z3, i3, arrayList3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolygonOptions[] newArray(int i) {
        return new PolygonOptions[i];
    }
}
