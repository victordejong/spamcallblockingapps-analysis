package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.p138e.C3720b;
import com.google.android.gms.internal.p138e.C3722d;
/* renamed from: com.google.android.gms.common.internal.aq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/aq.class */
public final class C2614aq extends C3720b implements AbstractC2651n {
    public C2614aq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.common.internal.AbstractC2651n
    /* renamed from: a */
    public final void mo13999a(int i, Bundle bundle) {
        Parcel m6519c = m6519c();
        m6519c.writeInt(i);
        C3722d.m6515a(m6519c, bundle);
        m6520b(2, m6519c);
    }

    @Override // com.google.android.gms.common.internal.AbstractC2651n
    /* renamed from: a */
    public final void mo13998a(int i, IBinder iBinder, Bundle bundle) {
        Parcel m6519c = m6519c();
        m6519c.writeInt(i);
        m6519c.writeStrongBinder(iBinder);
        C3722d.m6515a(m6519c, bundle);
        m6520b(1, m6519c);
    }

    @Override // com.google.android.gms.common.internal.AbstractC2651n
    /* renamed from: a */
    public final void mo13997a(int i, IBinder iBinder, C2604ag c2604ag) {
        Parcel m6519c = m6519c();
        m6519c.writeInt(i);
        m6519c.writeStrongBinder(iBinder);
        C3722d.m6515a(m6519c, c2604ag);
        m6520b(3, m6519c);
    }
}
