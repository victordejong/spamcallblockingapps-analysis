package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zzc.class */
public final class zzc implements Parcelable.Creator<CircleOptions> {
    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    @Override // android.os.Parcelable.Creator
    public final CircleOptions createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        float f = 0.0f;
        float f2 = 0.0f;
        LatLng latLng = null;
        ArrayList arrayList = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    latLng = (LatLng) SafeParcelReader.m38880i(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    c = SafeParcelReader.m38871r(parcel, readInt);
                    break;
                case 4:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 5:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 6:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 7:
                    f2 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\t':
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\n':
                    arrayList = SafeParcelReader.m38875n(parcel, readInt, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new CircleOptions(latLng, c, f, i, i2, f2, z, z2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CircleOptions[] newArray(int i) {
        return new CircleOptions[i];
    }
}
