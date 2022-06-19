package com.google.firebase.iid;

import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzr.class */
public final class zzr implements zzo {
    private final IBinder zza;

    public zzr(IBinder iBinder) {
        this.zza = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.zza;
    }

    @Override // com.google.firebase.iid.zzo
    public final void zza(Message message) {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
        obtain.writeInt(1);
        message.writeToParcel(obtain, 0);
        try {
            this.zza.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
