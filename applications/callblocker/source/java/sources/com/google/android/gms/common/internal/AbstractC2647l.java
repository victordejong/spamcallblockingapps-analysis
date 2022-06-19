package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.p138e.BinderC3719a;
import com.google.android.gms.internal.p138e.C3720b;
import com.google.android.gms.internal.p138e.C3722d;
/* renamed from: com.google.android.gms.common.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/l.class */
public interface AbstractC2647l extends IInterface {

    /* renamed from: com.google.android.gms.common.internal.l$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/l$a.class */
    public static abstract class AbstractBinderC2648a extends BinderC3719a implements AbstractC2647l {

        /* renamed from: com.google.android.gms.common.internal.l$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/l$a$a.class */
        public static final class C2649a extends C3720b implements AbstractC2647l {
            C2649a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            @Override // com.google.android.gms.common.internal.AbstractC2647l
            /* renamed from: a */
            public final Account mo14000a() {
                Parcel m6521a = m6521a(2, m6519c());
                Account account = (Account) C3722d.m6516a(m6521a, Account.CREATOR);
                m6521a.recycle();
                return account;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.common.internal.l] */
        /* renamed from: a */
        public static AbstractC2647l m14001a(IBinder iBinder) {
            C2649a c2649a;
            if (iBinder == null) {
                c2649a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                c2649a = queryLocalInterface instanceof AbstractC2647l ? (AbstractC2647l) queryLocalInterface : new C2649a(iBinder);
            }
            return c2649a;
        }

        @Override // com.google.android.gms.internal.p138e.BinderC3719a
        /* renamed from: a */
        protected final boolean mo6522a(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            if (i == 2) {
                Account a = mo14000a();
                parcel2.writeNoException();
                C3722d.m6513b(parcel2, a);
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: a */
    Account mo14000a();
}
