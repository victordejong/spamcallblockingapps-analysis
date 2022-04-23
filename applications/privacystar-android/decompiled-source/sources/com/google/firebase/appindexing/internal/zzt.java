package com.google.firebase.appindexing.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.internal.icing.zza;
import com.google.android.gms.internal.icing.zzc;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzt.class */
public final class zzt extends zza implements zzs {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzt(IBinder iBinder) {
        super(iBinder, "com.google.firebase.appindexing.internal.IAppIndexingService");
    }

    @Override // com.google.firebase.appindexing.internal.zzs
    public final zzf zza(IStatusCallback iStatusCallback, zzx zzxVar) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, iStatusCallback);
        zzc.zza(obtainAndWriteInterfaceToken, zzxVar);
        Parcel transactAndReadException = transactAndReadException(8, obtainAndWriteInterfaceToken);
        zzf zzfVar = (zzf) zzc.zza(transactAndReadException, zzf.CREATOR);
        transactAndReadException.recycle();
        return zzfVar;
    }
}
