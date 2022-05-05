package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.GoogleNowAuthState;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaq.class */
public abstract class zzaq extends zzb implements zzap {
    public zzaq() {
        super("com.google.android.gms.search.internal.ISearchAuthCallbacks");
    }

    @Override // com.google.android.gms.internal.icing.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zza((Status) zzc.zza(parcel, Status.CREATOR), (GoogleNowAuthState) zzc.zza(parcel, GoogleNowAuthState.CREATOR));
                return true;
            case 2:
                zzb((Status) zzc.zza(parcel, Status.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
