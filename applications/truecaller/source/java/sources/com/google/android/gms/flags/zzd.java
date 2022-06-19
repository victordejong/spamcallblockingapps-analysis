package com.google.android.gms.flags;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.flags.zzb;
import com.google.android.gms.internal.flags.zzc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/flags/zzd.class */
public abstract class zzd extends zzb implements zzc {
    public zzd() {
        super("com.google.android.gms.flags.IFlagProvider");
    }

    public static zzc asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.flags.IFlagProvider");
        return queryLocalInterface instanceof zzc ? (zzc) queryLocalInterface : new zze(iBinder);
    }

    @Override // com.google.android.gms.internal.flags.zzb
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            init(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            boolean booleanFlagValue = getBooleanFlagValue(parcel.readString(), zzc.zza(parcel), parcel.readInt());
            parcel2.writeNoException();
            zzc.writeBoolean(parcel2, booleanFlagValue);
            return true;
        } else if (i == 3) {
            int intFlagValue = getIntFlagValue(parcel.readString(), parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(intFlagValue);
            return true;
        } else if (i == 4) {
            long longFlagValue = getLongFlagValue(parcel.readString(), parcel.readLong(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeLong(longFlagValue);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            String stringFlagValue = getStringFlagValue(parcel.readString(), parcel.readString(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeString(stringFlagValue);
            return true;
        }
    }
}
