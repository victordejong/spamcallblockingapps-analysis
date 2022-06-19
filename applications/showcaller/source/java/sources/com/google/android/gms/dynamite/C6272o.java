package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import p078c.p084c.p085a.p086a.p088b.p091c.C1847a;
import p078c.p084c.p085a.p086a.p088b.p091c.C1849c;
/* renamed from: com.google.android.gms.dynamite.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/o.class */
public final class C6272o extends C1847a implements IInterface {
    public C6272o(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    /* renamed from: A4 */
    public final AbstractC6253a m16729A4(AbstractC6253a abstractC6253a, String str, boolean z, long j) {
        Parcel m28796D0 = m28796D0();
        C1849c.m28790e(m28796D0, abstractC6253a);
        m28796D0.writeString(str);
        C1849c.m28793b(m28796D0, z);
        m28796D0.writeLong(j);
        Parcel m28795c0 = m28795c0(7, m28796D0);
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m28795c0.readStrongBinder());
        m28795c0.recycle();
        return m16746D0;
    }

    /* renamed from: J0 */
    public final AbstractC6253a m16728J0(AbstractC6253a abstractC6253a, String str, int i) {
        Parcel m28796D0 = m28796D0();
        C1849c.m28790e(m28796D0, abstractC6253a);
        m28796D0.writeString(str);
        m28796D0.writeInt(i);
        Parcel m28795c0 = m28795c0(2, m28796D0);
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m28795c0.readStrongBinder());
        m28795c0.recycle();
        return m16746D0;
    }

    /* renamed from: V4 */
    public final AbstractC6253a m16727V4(AbstractC6253a abstractC6253a, String str, int i, AbstractC6253a abstractC6253a2) {
        Parcel m28796D0 = m28796D0();
        C1849c.m28790e(m28796D0, abstractC6253a);
        m28796D0.writeString(str);
        m28796D0.writeInt(i);
        C1849c.m28790e(m28796D0, abstractC6253a2);
        Parcel m28795c0 = m28795c0(8, m28796D0);
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m28795c0.readStrongBinder());
        m28795c0.recycle();
        return m16746D0;
    }

    /* renamed from: a3 */
    public final AbstractC6253a m16726a3(AbstractC6253a abstractC6253a, String str, int i) {
        Parcel m28796D0 = m28796D0();
        C1849c.m28790e(m28796D0, abstractC6253a);
        m28796D0.writeString(str);
        m28796D0.writeInt(i);
        Parcel m28795c0 = m28795c0(4, m28796D0);
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m28795c0.readStrongBinder());
        m28795c0.recycle();
        return m16746D0;
    }

    /* renamed from: m2 */
    public final int m16725m2(AbstractC6253a abstractC6253a, String str, boolean z) {
        Parcel m28796D0 = m28796D0();
        C1849c.m28790e(m28796D0, abstractC6253a);
        m28796D0.writeString(str);
        C1849c.m28793b(m28796D0, z);
        Parcel m28795c0 = m28795c0(3, m28796D0);
        int readInt = m28795c0.readInt();
        m28795c0.recycle();
        return readInt;
    }

    /* renamed from: y4 */
    public final int m16724y4(AbstractC6253a abstractC6253a, String str, boolean z) {
        Parcel m28796D0 = m28796D0();
        C1849c.m28790e(m28796D0, abstractC6253a);
        m28796D0.writeString(str);
        C1849c.m28793b(m28796D0, z);
        Parcel m28795c0 = m28795c0(5, m28796D0);
        int readInt = m28795c0.readInt();
        m28795c0.recycle();
        return readInt;
    }

    public final int zzi() {
        Parcel m28795c0 = m28795c0(6, m28796D0());
        int readInt = m28795c0.readInt();
        m28795c0.recycle();
        return readInt;
    }
}
