package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzc.class */
public final class zzc implements Parcelable.Creator<CircleOptions> {
    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CircleOptions createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        LatLng latLng = null;
        ArrayList arrayList = null;
        char c = 0;
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    latLng = (LatLng) SafeParcelReader.m19143a(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    c = SafeParcelReader.m19130k(parcel, readInt);
                    break;
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
                    arrayList = SafeParcelReader.m19138c(parcel, readInt, PatternItem.CREATOR);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new CircleOptions(latLng, c, f, i, i2, f2, z, z2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CircleOptions[] newArray(int i) {
        return new CircleOptions[i];
    }
}
