package com.google.android.gms.auth.account;

import android.accounts.Account;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.auth.zzc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/account/zzb.class */
public abstract class zzb extends com.google.android.gms.internal.auth.zzb implements zza {
    public zzb() {
        super("com.google.android.gms.auth.account.IWorkAccountCallback");
    }

    @Override // com.google.android.gms.internal.auth.zzb
    public final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzc((Account) zzc.zza(parcel, Account.CREATOR));
            return true;
        } else if (i != 2) {
            return false;
        } else {
            zza(zzc.zza(parcel));
            return true;
        }
    }
}
