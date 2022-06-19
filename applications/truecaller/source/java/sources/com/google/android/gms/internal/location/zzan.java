package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzan.class */
public abstract class zzan extends zzb implements zzam {
    public zzan() {
        super("com.google.android.gms.location.internal.IGeofencerCallbacks");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zza(parcel.readInt(), parcel.createStringArray());
            return true;
        } else if (i == 2) {
            zzb(parcel.readInt(), parcel.createStringArray());
            return true;
        } else if (i != 3) {
            return false;
        } else {
            zza(parcel.readInt(), (PendingIntent) zzc.zza(parcel, PendingIntent.CREATOR));
            return true;
        }
    }
}
