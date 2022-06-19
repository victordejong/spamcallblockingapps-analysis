package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.y */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/y.class */
public final class C13776y implements Parcelable.Creator<LocationRequest> {
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 61056;
        char c2 = 10176;
        char c3 = 65535;
        char c4 = 0;
        int i = 102;
        boolean z = false;
        int i2 = Integer.MAX_VALUE;
        float f = 0.0f;
        boolean z2 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 3:
                    c2 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 4:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 5:
                    c3 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 6:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 7:
                    f = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case '\b':
                    c4 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '\t':
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new LocationRequest(i, c, c2, z, c3, i2, f, c4, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationRequest[] newArray(int i) {
        return new LocationRequest[i];
    }
}
