package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.C2700u;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.internal.p138e.C3720b;
import com.google.android.gms.internal.p138e.C3722d;
/* renamed from: com.google.android.gms.common.internal.at */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/at.class */
public final class C2617at extends C3720b implements AbstractC2616as {
    public C2617at(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.AbstractC2616as
    /* renamed from: a */
    public final boolean mo14115a(C2700u c2700u, AbstractC2731a abstractC2731a) {
        Parcel m6519c = m6519c();
        C3722d.m6515a(m6519c, c2700u);
        C3722d.m6517a(m6519c, abstractC2731a);
        Parcel m6521a = m6521a(5, m6519c);
        boolean m6518a = C3722d.m6518a(m6521a);
        m6521a.recycle();
        return m6518a;
    }
}
