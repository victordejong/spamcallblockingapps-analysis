package com.google.firebase.appindexing.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.internal.icing.zzb;
import com.google.android.gms.internal.icing.zzd;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzu.class */
public final class zzu extends zzb implements zzr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(IBinder iBinder) {
        super(iBinder, "com.google.firebase.appindexing.internal.IAppIndexingService");
    }

    @Override // com.google.firebase.appindexing.internal.zzr
    public final zzg zza(IStatusCallback iStatusCallback, zzy zzyVar) throws RemoteException {
        Parcel zza = zza();
        zzd.m13971b(zza, iStatusCallback);
        zzd.m13970c(zza, zzyVar);
        Parcel zza2 = zza(8, zza);
        zzg zzgVar = (zzg) zzd.m13972a(zza2, zzg.CREATOR);
        zza2.recycle();
        return zzgVar;
    }
}
