package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzaa.class */
public final class zzaa implements Parcelable.Creator<GoogleMapOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        CameraPosition cameraPosition = null;
        Float f = null;
        Float f2 = null;
        LatLngBounds latLngBounds = null;
        int i = 0;
        byte b = -1;
        byte b2 = -1;
        byte b3 = -1;
        byte b4 = -1;
        byte b5 = -1;
        byte b6 = -1;
        byte b7 = -1;
        byte b8 = -1;
        byte b9 = -1;
        byte b10 = -1;
        byte b11 = -1;
        byte b12 = -1;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 2:
                    b12 = SafeParcelReader.readByte(parcel, readHeader);
                    break;
                case 3:
                    b11 = SafeParcelReader.readByte(parcel, readHeader);
                    break;
                case 4:
                    i = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 5:
                    cameraPosition = (CameraPosition) SafeParcelReader.createParcelable(parcel, readHeader, CameraPosition.CREATOR);
                    break;
                case 6:
                    b10 = SafeParcelReader.readByte(parcel, readHeader);
                    break;
                case 7:
                    b9 = SafeParcelReader.readByte(parcel, readHeader);
                    break;
                case 8:
                    b8 = SafeParcelReader.readByte(parcel, readHeader);
                    break;
                case 9:
                    b7 = SafeParcelReader.readByte(parcel, readHeader);
                    break;
                case 10:
                    b6 = SafeParcelReader.readByte(parcel, readHeader);
                    break;
                case 11:
                    b5 = SafeParcelReader.readByte(parcel, readHeader);
                    break;
                case 12:
                    b4 = SafeParcelReader.readByte(parcel, readHeader);
                    break;
                case 13:
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
                case 14:
                    b3 = SafeParcelReader.readByte(parcel, readHeader);
                    break;
                case 15:
                    b2 = SafeParcelReader.readByte(parcel, readHeader);
                    break;
                case 16:
                    f = SafeParcelReader.readFloatObject(parcel, readHeader);
                    break;
                case 17:
                    f2 = SafeParcelReader.readFloatObject(parcel, readHeader);
                    break;
                case 18:
                    latLngBounds = (LatLngBounds) SafeParcelReader.createParcelable(parcel, readHeader, LatLngBounds.CREATOR);
                    break;
                case 19:
                    b = SafeParcelReader.readByte(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new GoogleMapOptions(b12, b11, i, cameraPosition, b10, b9, b8, b7, b6, b5, b4, b3, b2, f, f2, latLngBounds, b);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions[] newArray(int i) {
        return new GoogleMapOptions[i];
    }
}
