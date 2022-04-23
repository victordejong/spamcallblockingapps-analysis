package com.google.android.gms.gcm;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.gcm.zzd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/zzh.class */
public final class zzh extends zzd implements zzg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gcm.INetworkTaskCallback");
    }

    @Override // com.google.android.gms.gcm.zzg
    /* renamed from: H */
    public final void mo14165H(int i) throws RemoteException {
        Parcel a = m14071a();
        a.writeInt(i);
        m14070b(2, a);
    }
}
