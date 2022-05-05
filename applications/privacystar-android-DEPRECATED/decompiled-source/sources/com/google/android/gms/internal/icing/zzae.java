package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzae.class */
public abstract class zzae extends zzb implements zzad {
    public zzae() {
        super("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks");
    }

    @Override // com.google.android.gms.internal.icing.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zza((Status) zzc.zza(parcel, Status.CREATOR));
                return true;
            case 2:
                zza((Status) zzc.zza(parcel, Status.CREATOR), (ParcelFileDescriptor) zzc.zza(parcel, ParcelFileDescriptor.CREATOR));
                return true;
            case 3:
                zza((Status) zzc.zza(parcel, Status.CREATOR), zzc.zza(parcel));
                return true;
            case 4:
                zza((zzp) zzc.zza(parcel, zzp.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
