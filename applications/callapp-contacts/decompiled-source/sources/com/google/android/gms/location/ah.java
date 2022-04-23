package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ah.class */
public final class ah implements Parcelable.Creator<SleepClassifyEvent> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SleepClassifyEvent createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        boolean z = false;
        int i8 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 2:
                    i2 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 3:
                    i3 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 4:
                    i4 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 5:
                    i5 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 6:
                    i6 = SafeParcelReader.e(parcel, readInt);
                    break;
                case 7:
                    i7 = SafeParcelReader.e(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\t':
                    i8 = SafeParcelReader.e(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new SleepClassifyEvent(i, i2, i3, i4, i5, i6, i7, z, i8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SleepClassifyEvent[] newArray(int i) {
        return new SleepClassifyEvent[i];
    }
}
