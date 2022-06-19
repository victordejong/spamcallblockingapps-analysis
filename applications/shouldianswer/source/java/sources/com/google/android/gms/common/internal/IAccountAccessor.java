package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IAccountAccessor.class */
public interface IAccountAccessor extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IAccountAccessor$Stub.class */
    public static abstract class Stub extends zzb implements IAccountAccessor {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IAccountAccessor$Stub$zza.class */
        public static final class zza extends com.google.android.gms.internal.common.zza implements IAccountAccessor {
            zza(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            @Override // com.google.android.gms.common.internal.IAccountAccessor
            public final Account getAccount() {
                Parcel zza = zza(2, zza());
                Account account = (Account) zzc.zza(zza, Account.CREATOR);
                zza.recycle();
                return account;
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.IAccountAccessor");
        }

        public static IAccountAccessor asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof IAccountAccessor ? (IAccountAccessor) queryLocalInterface : new zza(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zzb
        protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 2) {
                Account account = getAccount();
                parcel2.writeNoException();
                zzc.zzb(parcel2, account);
                return true;
            }
            return false;
        }
    }

    Account getAccount();
}
