package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.p357c.BinderC13162b;
import com.google.android.gms.internal.p357c.C13163c;
/* renamed from: com.google.android.gms.common.internal.bu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bu.class */
public abstract class AbstractBinderC12022bu extends BinderC13162b implements AbstractC12023bv {
    public AbstractBinderC12022bu() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    /* renamed from: a */
    public static AbstractC12023bv m19192a(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return queryLocalInterface instanceof AbstractC12023bv ? (AbstractC12023bv) queryLocalInterface : new C12021bt(iBinder);
    }

    @Override // com.google.android.gms.internal.p357c.BinderC13162b
    /* renamed from: a */
    public final boolean mo13590a(int i, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (i == 1) {
            AbstractC12126b a = mo19077a();
            parcel2.writeNoException();
            C13163c.m13588a(parcel2, a);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int b = mo19075b();
            parcel2.writeNoException();
            parcel2.writeInt(b);
            return true;
        }
    }
}
