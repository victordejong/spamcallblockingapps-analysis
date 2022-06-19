package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zzb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/IAccountAccessor.class */
public interface IAccountAccessor extends IInterface {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/IAccountAccessor$Stub.class */
    public static abstract class Stub extends zzb implements IAccountAccessor {
        public Stub() {
            super("com.google.android.gms.common.internal.IAccountAccessor");
        }

        /* renamed from: m1 */
        public static IAccountAccessor m38912m1(IBinder iBinder) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof IAccountAccessor ? (IAccountAccessor) queryLocalInterface : new zzv(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zzb
        public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 2) {
                return false;
            }
            throw null;
        }
    }

    Account zzb() throws RemoteException;
}
