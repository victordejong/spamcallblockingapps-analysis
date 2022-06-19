package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.p357c.C13161a;
/* renamed from: com.google.android.gms.common.internal.bt */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bt.class */
public final class C12021bt extends C13161a implements AbstractC12023bv {
    public C12021bt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.AbstractC12023bv
    /* renamed from: a */
    public final AbstractC12126b mo19077a() throws RemoteException {
        Parcel m13592a = m13592a(1, m13591c());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(m13592a.readStrongBinder());
        m13592a.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12023bv
    /* renamed from: b */
    public final int mo19075b() throws RemoteException {
        Parcel m13592a = m13592a(2, m13591c());
        int readInt = m13592a.readInt();
        m13592a.recycle();
        return readInt;
    }
}
