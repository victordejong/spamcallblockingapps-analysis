package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/face/internal/client/zze.class */
public final class zze implements Parcelable.Creator<zzf> {
    @Override // android.os.Parcelable.Creator
    public final zzf createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        boolean z2 = false;
        float f = -1.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 3:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 4:
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 5:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 6:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 7:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzf(i, i2, i3, z, z2, f);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzf[] newArray(int i) {
        return new zzf[i];
    }
}
