package com.google.android.gms.vision.barcode;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/barcode/zzb.class */
public final class zzb implements Parcelable.Creator<Barcode> {
    @Override // android.os.Parcelable.Creator
    public final Barcode createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        String str = null;
        String str2 = null;
        Point[] pointArr = null;
        Barcode.Email email = null;
        Barcode.Phone phone = null;
        Barcode.Sms sms = null;
        Barcode.WiFi wiFi = null;
        Barcode.UrlBookmark urlBookmark = null;
        Barcode.GeoPoint geoPoint = null;
        Barcode.CalendarEvent calendarEvent = null;
        Barcode.ContactInfo contactInfo = null;
        Barcode.DriverLicense driverLicense = null;
        byte[] bArr = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 3:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 4:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 6:
                    pointArr = (Point[]) SafeParcelReader.m38876m(parcel, readInt, Point.CREATOR);
                    break;
                case 7:
                    email = (Barcode.Email) SafeParcelReader.m38880i(parcel, readInt, Barcode.Email.CREATOR);
                    break;
                case '\b':
                    phone = (Barcode.Phone) SafeParcelReader.m38880i(parcel, readInt, Barcode.Phone.CREATOR);
                    break;
                case '\t':
                    sms = (Barcode.Sms) SafeParcelReader.m38880i(parcel, readInt, Barcode.Sms.CREATOR);
                    break;
                case '\n':
                    wiFi = (Barcode.WiFi) SafeParcelReader.m38880i(parcel, readInt, Barcode.WiFi.CREATOR);
                    break;
                case 11:
                    urlBookmark = (Barcode.UrlBookmark) SafeParcelReader.m38880i(parcel, readInt, Barcode.UrlBookmark.CREATOR);
                    break;
                case '\f':
                    geoPoint = (Barcode.GeoPoint) SafeParcelReader.m38880i(parcel, readInt, Barcode.GeoPoint.CREATOR);
                    break;
                case '\r':
                    calendarEvent = (Barcode.CalendarEvent) SafeParcelReader.m38880i(parcel, readInt, Barcode.CalendarEvent.CREATOR);
                    break;
                case 14:
                    contactInfo = (Barcode.ContactInfo) SafeParcelReader.m38880i(parcel, readInt, Barcode.ContactInfo.CREATOR);
                    break;
                case 15:
                    driverLicense = (Barcode.DriverLicense) SafeParcelReader.m38880i(parcel, readInt, Barcode.DriverLicense.CREATOR);
                    break;
                case 16:
                    bArr = SafeParcelReader.m38885d(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new Barcode(i, str, str2, i2, pointArr, email, phone, sms, wiFi, urlBookmark, geoPoint, calendarEvent, contactInfo, driverLicense, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode[] newArray(int i) {
        return new Barcode[i];
    }
}
