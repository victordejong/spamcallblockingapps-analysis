package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.p357c.BinderC13162b;
import com.google.android.gms.internal.p357c.C13163c;
/* renamed from: com.google.android.gms.common.internal.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/i.class */
public interface AbstractC12036i extends IInterface {

    /* renamed from: com.google.android.gms.common.internal.i$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/i$a.class */
    public static abstract class AbstractBinderC12037a extends BinderC13162b implements AbstractC12036i {
        public AbstractBinderC12037a() {
            super("com.google.android.gms.common.internal.IAccountAccessor");
        }

        /* renamed from: a */
        public static AbstractC12036i m19174a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof AbstractC12036i ? (AbstractC12036i) queryLocalInterface : new C12020bs(iBinder);
        }

        @Override // com.google.android.gms.internal.p357c.BinderC13162b
        /* renamed from: a */
        public final boolean mo13590a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
            if (i == 2) {
                Account a = mo19175a();
                parcel2.writeNoException();
                C13163c.m13584b(parcel2, a);
                return true;
            }
            return false;
        }
    }

    /* renamed from: a */
    Account mo19175a() throws RemoteException;
}
