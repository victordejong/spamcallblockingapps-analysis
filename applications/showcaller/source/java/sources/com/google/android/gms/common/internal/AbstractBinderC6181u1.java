package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import p078c.p084c.p085a.p086a.p088b.p091c.BinderC1848b;
import p078c.p084c.p085a.p086a.p088b.p091c.C1849c;
/* renamed from: com.google.android.gms.common.internal.u1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/u1.class */
public abstract class AbstractBinderC6181u1 extends BinderC1848b implements AbstractC6184v1 {
    public AbstractBinderC6181u1() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    /* renamed from: D0 */
    public static AbstractC6184v1 m16915D0(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return queryLocalInterface instanceof AbstractC6184v1 ? (AbstractC6184v1) queryLocalInterface : new C6174t1(iBinder);
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p091c.BinderC1848b
    /* renamed from: c0 */
    protected final boolean mo16914c0(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            AbstractC6253a mo16835e = mo16835e();
            parcel2.writeNoException();
            C1849c.m28790e(parcel2, mo16835e);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int mo16836a = mo16836a();
            parcel2.writeNoException();
            parcel2.writeInt(mo16836a);
            return true;
        }
    }
}
