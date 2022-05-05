package com.google.android.gms.internal.icing;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.firebase.appindexing.internal.zza;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzac.class */
public final class zzac extends zza implements zzab {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzac(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
    }

    @Override // com.google.android.gms.internal.icing.zzab
    public final void zza(zzad zzadVar, String str, zzx[] zzxVarArr) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, zzadVar);
        obtainAndWriteInterfaceToken.writeString(null);
        obtainAndWriteInterfaceToken.writeTypedArray(zzxVarArr, 0);
        transactAndReadExceptionReturnVoid(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.icing.zzab
    public final void zza(zzad zzadVar, zza[] zzaVarArr) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzc.zza(obtainAndWriteInterfaceToken, zzadVar);
        obtainAndWriteInterfaceToken.writeTypedArray(zzaVarArr, 0);
        transactAndReadExceptionReturnVoid(7, obtainAndWriteInterfaceToken);
    }
}
