package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.location.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/s.class */
public final class C13344s implements Parcelable.Creator<zzbc> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbc createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        zzba zzbaVar = null;
        IBinder iBinder = null;
        PendingIntent pendingIntent = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        int i = 1;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    zzbaVar = (zzba) SafeParcelReader.m19143a(parcel, readInt, zzba.CREATOR);
                    break;
                case 3:
                    iBinder = SafeParcelReader.m19127n(parcel, readInt);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) SafeParcelReader.m19143a(parcel, readInt, PendingIntent.CREATOR);
                    break;
                case 5:
                    iBinder2 = SafeParcelReader.m19127n(parcel, readInt);
                    break;
                case 6:
                    iBinder3 = SafeParcelReader.m19127n(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzbc(i, zzbaVar, iBinder, pendingIntent, iBinder2, iBinder3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbc[] newArray(int i) {
        return new zzbc[i];
    }
}
