package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.internal.p138e.C3720b;
import com.google.android.gms.internal.p138e.C3722d;
/* renamed from: com.google.android.gms.dynamite.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/i.class */
public final class C2748i extends C3720b implements AbstractC2749j {
    public C2748i(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    @Override // com.google.android.gms.dynamite.AbstractC2749j
    /* renamed from: a */
    public final int mo13776a() {
        Parcel m6521a = m6521a(6, m6519c());
        int readInt = m6521a.readInt();
        m6521a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.AbstractC2749j
    /* renamed from: a */
    public final int mo13774a(AbstractC2731a abstractC2731a, String str, boolean z) {
        Parcel m6519c = m6519c();
        C3722d.m6517a(m6519c, abstractC2731a);
        m6519c.writeString(str);
        C3722d.m6514a(m6519c, z);
        Parcel m6521a = m6521a(3, m6519c);
        int readInt = m6521a.readInt();
        m6521a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.AbstractC2749j
    /* renamed from: a */
    public final AbstractC2731a mo13775a(AbstractC2731a abstractC2731a, String str, int i) {
        Parcel m6519c = m6519c();
        C3722d.m6517a(m6519c, abstractC2731a);
        m6519c.writeString(str);
        m6519c.writeInt(i);
        Parcel m6521a = m6521a(2, m6519c);
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m6521a.readStrongBinder());
        m6521a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.dynamite.AbstractC2749j
    /* renamed from: b */
    public final int mo13772b(AbstractC2731a abstractC2731a, String str, boolean z) {
        Parcel m6519c = m6519c();
        C3722d.m6517a(m6519c, abstractC2731a);
        m6519c.writeString(str);
        C3722d.m6514a(m6519c, z);
        Parcel m6521a = m6521a(5, m6519c);
        int readInt = m6521a.readInt();
        m6521a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.AbstractC2749j
    /* renamed from: b */
    public final AbstractC2731a mo13773b(AbstractC2731a abstractC2731a, String str, int i) {
        Parcel m6519c = m6519c();
        C3722d.m6517a(m6519c, abstractC2731a);
        m6519c.writeString(str);
        m6519c.writeInt(i);
        Parcel m6521a = m6521a(4, m6519c);
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m6521a.readStrongBinder());
        m6521a.recycle();
        return m13796a;
    }
}
