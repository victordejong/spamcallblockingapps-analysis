package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/barcode/zzd.class */
public final class zzd implements Parcelable.Creator<Barcode.CalendarDateTime> {
    @Override // android.os.Parcelable.Creator
    public final Barcode.CalendarDateTime createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        boolean z = false;
        String str = null;
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
                    i4 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 6:
                    i5 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 7:
                    i6 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\t':
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new Barcode.CalendarDateTime(i, i2, i3, i4, i5, i6, z, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.CalendarDateTime[] newArray(int i) {
        return new Barcode.CalendarDateTime[i];
    }
}
