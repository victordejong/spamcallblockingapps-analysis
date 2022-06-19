package com.google.android.gms.internal.auth_api_phone;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth-api-phone.zzh;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzg.class */
public abstract class zzg extends zza implements zzh {
    public zzg() {
        super("com.google.android.gms.auth.api.phone.internal.IOngoingSmsRequestCallback");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.auth_api_phone.zza
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zza((Status) zzd.zza(parcel, Status.CREATOR), zzd.zza(parcel));
            return true;
        }
        return false;
    }
}
