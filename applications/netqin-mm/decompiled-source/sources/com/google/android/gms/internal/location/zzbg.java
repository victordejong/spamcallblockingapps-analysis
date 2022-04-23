package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzbg.class */
public final class zzbg implements Parcelable.Creator<zzbf> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbf createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        zzbd zzbdVar = null;
        IBinder iBinder = null;
        PendingIntent pendingIntent = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        int i = 1;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 2:
                    zzbdVar = (zzbd) SafeParcelReader.m17264a(parcel, a, zzbd.CREATOR);
                    break;
                case 3:
                    iBinder = SafeParcelReader.m17236z(parcel, a);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) SafeParcelReader.m17264a(parcel, a, PendingIntent.CREATOR);
                    break;
                case 5:
                    iBinder2 = SafeParcelReader.m17236z(parcel, a);
                    break;
                case 6:
                    iBinder3 = SafeParcelReader.m17236z(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzbf(i, zzbdVar, iBinder, pendingIntent, iBinder2, iBinder3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbf[] newArray(int i) {
        return new zzbf[i];
    }
}
