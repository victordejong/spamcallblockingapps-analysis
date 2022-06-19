package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import p078c.p084c.p085a.p086a.p088b.p091c.C1847a;
/* renamed from: com.google.android.gms.common.internal.t1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/t1.class */
public final class C6174t1 extends C1847a implements AbstractC6184v1 {
    public C6174t1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.AbstractC6184v1
    /* renamed from: a */
    public final int mo16836a() {
        Parcel m28795c0 = m28795c0(2, m28796D0());
        int readInt = m28795c0.readInt();
        m28795c0.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6184v1
    /* renamed from: e */
    public final AbstractC6253a mo16835e() {
        Parcel m28795c0 = m28795c0(1, m28796D0());
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m28795c0.readStrongBinder());
        m28795c0.recycle();
        return m16746D0;
    }
}
