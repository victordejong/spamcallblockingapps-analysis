package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzc;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzab.class */
public abstract class zzab extends zzb implements IGmsCallbacks {
    public zzab() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.internal.common.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            int readInt = parcel.readInt();
            IBinder readStrongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
            zzd zzdVar = (zzd) this;
            Preconditions.m38897k(zzdVar.f6048a, "onPostInitComplete can be called only once per call to getRemoteService");
            zzdVar.f6048a.onPostInitHandler(readInt, readStrongBinder, bundle, zzdVar.f6049b);
            zzdVar.f6048a = null;
        } else if (i == 2) {
            parcel.readInt();
            Bundle bundle2 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        } else if (i != 3) {
            return false;
        } else {
            int readInt2 = parcel.readInt();
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            zzj zzjVar = (zzj) zzc.zza(parcel, zzj.CREATOR);
            zzd zzdVar2 = (zzd) this;
            BaseGmsClient baseGmsClient = zzdVar2.f6048a;
            Preconditions.m38897k(baseGmsClient, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            Objects.requireNonNull(zzjVar, "null reference");
            BaseGmsClient.zzj(baseGmsClient, zzjVar);
            Bundle bundle3 = zzjVar.f6055a;
            Preconditions.m38897k(zzdVar2.f6048a, "onPostInitComplete can be called only once per call to getRemoteService");
            zzdVar2.f6048a.onPostInitHandler(readInt2, readStrongBinder2, bundle3, zzdVar2.f6049b);
            zzdVar2.f6048a = null;
        }
        parcel2.writeNoException();
        return true;
    }
}
