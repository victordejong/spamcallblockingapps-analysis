package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.internal.p138e.C3720b;
import com.google.android.gms.internal.p138e.C3722d;
/* renamed from: com.google.android.gms.dynamite.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/k.class */
public final class C2750k extends C3720b implements AbstractC2751l {
    public C2750k(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    @Override // com.google.android.gms.dynamite.AbstractC2751l
    /* renamed from: a */
    public final AbstractC2731a mo13771a(AbstractC2731a abstractC2731a, String str, int i, AbstractC2731a abstractC2731a2) {
        Parcel m6519c = m6519c();
        C3722d.m6517a(m6519c, abstractC2731a);
        m6519c.writeString(str);
        m6519c.writeInt(i);
        C3722d.m6517a(m6519c, abstractC2731a2);
        Parcel m6521a = m6521a(2, m6519c);
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m6521a.readStrongBinder());
        m6521a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.dynamite.AbstractC2751l
    /* renamed from: b */
    public final AbstractC2731a mo13770b(AbstractC2731a abstractC2731a, String str, int i, AbstractC2731a abstractC2731a2) {
        Parcel m6519c = m6519c();
        C3722d.m6517a(m6519c, abstractC2731a);
        m6519c.writeString(str);
        m6519c.writeInt(i);
        C3722d.m6517a(m6519c, abstractC2731a2);
        Parcel m6521a = m6521a(3, m6519c);
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m6521a.readStrongBinder());
        m6521a.recycle();
        return m13796a;
    }
}
