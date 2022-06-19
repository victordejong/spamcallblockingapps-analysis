package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzl.class */
public final class zzl implements Parcelable.Creator<PolylineOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolylineOptions createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        ArrayList arrayList = null;
        Cap cap = null;
        Cap cap2 = null;
        ArrayList arrayList2 = null;
        float f = 0.0f;
        int i = 0;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    arrayList = SafeParcelReader.m19138c(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    f = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 4:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 5:
                    f2 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 6:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 7:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\b':
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\t':
                    cap = (Cap) SafeParcelReader.m19143a(parcel, readInt, Cap.CREATOR);
                    break;
                case '\n':
                    cap2 = (Cap) SafeParcelReader.m19143a(parcel, readInt, Cap.CREATOR);
                    break;
                case 11:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '\f':
                    arrayList2 = SafeParcelReader.m19138c(parcel, readInt, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new PolylineOptions(arrayList, f, i, f2, z, z2, z3, cap, cap2, i2, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PolylineOptions[] newArray(int i) {
        return new PolylineOptions[i];
    }
}
