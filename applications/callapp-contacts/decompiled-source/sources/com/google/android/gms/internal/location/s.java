package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/s.class */
public final class s implements Parcelable.Creator<zzbc> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbc createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        zzba zzbaVar = null;
        IBinder iBinder = null;
        PendingIntent pendingIntent = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        int i = 1;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 2:
                    zzbaVar = (zzba) SafeParcelReader.a(parcel, readInt, zzba.CREATOR);
                    break;
                case 3:
                    iBinder = SafeParcelReader.n(parcel, readInt);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) SafeParcelReader.a(parcel, readInt, PendingIntent.CREATOR);
                    break;
                case 5:
                    iBinder2 = SafeParcelReader.n(parcel, readInt);
                    break;
                case 6:
                    iBinder3 = SafeParcelReader.n(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzbc(i, zzbaVar, iBinder, pendingIntent, iBinder2, iBinder3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbc[] newArray(int i) {
        return new zzbc[i];
    }
}
