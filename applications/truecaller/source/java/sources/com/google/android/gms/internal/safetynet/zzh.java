package com.google.android.gms.internal.safetynet;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.safetynet.SafeBrowsingData;
import com.google.android.gms.safetynet.zza;
import com.google.android.gms.safetynet.zzd;
import com.google.android.gms.safetynet.zzf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzh.class */
public abstract class zzh extends zzb implements zzg {
    public zzh() {
        super("com.google.android.gms.safetynet.internal.ISafetyNetCallbacks");
    }

    @Override // com.google.android.gms.internal.safetynet.zzb
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zza((Status) zzc.zza(parcel, Status.CREATOR), (zza) zzc.zza(parcel, zza.CREATOR));
            return true;
        } else if (i == 2) {
            zza(parcel.readString());
            return true;
        } else if (i == 3) {
            zza((Status) zzc.zza(parcel, Status.CREATOR), (SafeBrowsingData) zzc.zza(parcel, SafeBrowsingData.CREATOR));
            return true;
        } else if (i == 4) {
            zza((Status) zzc.zza(parcel, Status.CREATOR), zzc.zza(parcel));
            return true;
        } else if (i == 6) {
            zza((Status) zzc.zza(parcel, Status.CREATOR), (zzf) zzc.zza(parcel, zzf.CREATOR));
            return true;
        } else if (i == 8) {
            zza((Status) zzc.zza(parcel, Status.CREATOR), (zzd) zzc.zza(parcel, zzd.CREATOR));
            return true;
        } else if (i == 15) {
            zza((Status) zzc.zza(parcel, Status.CREATOR), (com.google.android.gms.safetynet.zzh) zzc.zza(parcel, com.google.android.gms.safetynet.zzh.CREATOR));
            return true;
        } else if (i == 10) {
            zzb((Status) zzc.zza(parcel, Status.CREATOR), zzc.zza(parcel));
            return true;
        } else if (i != 11) {
            return false;
        } else {
            zza((Status) zzc.zza(parcel, Status.CREATOR));
            return true;
        }
    }
}
