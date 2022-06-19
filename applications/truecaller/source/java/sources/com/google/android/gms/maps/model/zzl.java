package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zzl.class */
public final class zzl implements Parcelable.Creator<PolylineOptions> {
    @Override // android.os.Parcelable.Creator
    public final PolylineOptions createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        float f = 0.0f;
        float f2 = 0.0f;
        ArrayList arrayList = null;
        Cap cap = null;
        Cap cap2 = null;
        ArrayList arrayList2 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    arrayList = SafeParcelReader.m38875n(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 4:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 5:
                    f2 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 6:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 7:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\b':
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\t':
                    cap = (Cap) SafeParcelReader.m38880i(parcel, readInt, Cap.CREATOR);
                    break;
                case '\n':
                    cap2 = (Cap) SafeParcelReader.m38880i(parcel, readInt, Cap.CREATOR);
                    break;
                case 11:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\f':
                    arrayList2 = SafeParcelReader.m38875n(parcel, readInt, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new PolylineOptions(arrayList, f, i, f2, z, z2, z3, cap, cap2, i2, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolylineOptions[] newArray(int i) {
        return new PolylineOptions[i];
    }
}
