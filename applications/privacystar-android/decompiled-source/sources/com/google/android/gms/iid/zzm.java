package com.google.android.gms.iid;

import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.gcm.zzd;
import com.google.android.gms.internal.gcm.zze;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzm.class */
public final class zzm extends zzd implements zzl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.iid.IMessengerCompat");
    }

    @Override // com.google.android.gms.iid.zzl
    public final void send(Message message) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zze.zzd(obtainAndWriteInterfaceToken, message);
        transactOneway(1, obtainAndWriteInterfaceToken);
    }
}
