package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/barcode/zzf.class */
public final class zzf implements Parcelable.Creator<Barcode.CalendarEvent> {
    @Override // android.os.Parcelable.Creator
    public final Barcode.CalendarEvent createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        Barcode.CalendarDateTime calendarDateTime = null;
        Barcode.CalendarDateTime calendarDateTime2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 4:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 7:
                    calendarDateTime = (Barcode.CalendarDateTime) SafeParcelReader.m38880i(parcel, readInt, Barcode.CalendarDateTime.CREATOR);
                    break;
                case '\b':
                    calendarDateTime2 = (Barcode.CalendarDateTime) SafeParcelReader.m38880i(parcel, readInt, Barcode.CalendarDateTime.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new Barcode.CalendarEvent(str, str2, str3, str4, str5, calendarDateTime, calendarDateTime2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.CalendarEvent[] newArray(int i) {
        return new Barcode.CalendarEvent[i];
    }
}
