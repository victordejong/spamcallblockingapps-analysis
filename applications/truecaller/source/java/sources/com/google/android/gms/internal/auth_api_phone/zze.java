package com.google.android.gms.internal.auth_api_phone;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth-api-phone.zzf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zze.class */
public abstract class zze extends zza implements zzf {
    public zze() {
        super("com.google.android.gms.auth.api.phone.internal.IAutofillPermissionStateCallback");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.auth_api_phone.zza
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zza((Status) zzd.zza(parcel, Status.CREATOR), parcel.readInt());
            return true;
        }
        return false;
    }
}
