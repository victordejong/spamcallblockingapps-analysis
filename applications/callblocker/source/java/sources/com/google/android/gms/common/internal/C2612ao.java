package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.internal.p138e.C3720b;
/* renamed from: com.google.android.gms.common.internal.ao */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ao.class */
public final class C2612ao extends C3720b implements AbstractC2611an {
    public C2612ao(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // com.google.android.gms.common.internal.AbstractC2611an
    /* renamed from: a */
    public final AbstractC2731a mo13901a() {
        Parcel m6521a = m6521a(1, m6519c());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m6521a.readStrongBinder());
        m6521a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2611an
    /* renamed from: b */
    public final int mo13899b() {
        Parcel m6521a = m6521a(2, m6519c());
        int readInt = m6521a.readInt();
        m6521a.recycle();
        return readInt;
    }
}
