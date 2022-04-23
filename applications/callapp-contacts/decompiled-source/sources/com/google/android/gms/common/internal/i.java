package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.c.b;
import com.google.android.gms.internal.c.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/i.class */
public interface i extends IInterface {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/i$a.class */
    public static abstract class a extends b implements i {
        public a() {
            super("com.google.android.gms.common.internal.IAccountAccessor");
        }

        public static i a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof i ? (i) queryLocalInterface : new bs(iBinder);
        }

        @Override // com.google.android.gms.internal.c.b
        public final boolean a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
            if (i != 2) {
                return false;
            }
            Account a2 = a();
            parcel2.writeNoException();
            c.b(parcel2, a2);
            return true;
        }
    }

    Account a() throws RemoteException;
}
