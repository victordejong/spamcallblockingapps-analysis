package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import p078c.p084c.p085a.p086a.p088b.p091c.C1847a;
import p078c.p084c.p085a.p086a.p088b.p091c.C1849c;
/* renamed from: com.google.android.gms.dynamite.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/p.class */
public final class C6273p extends C1847a implements IInterface {
    public C6273p(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    /* renamed from: J0 */
    public final AbstractC6253a m16723J0(AbstractC6253a abstractC6253a, String str, int i, AbstractC6253a abstractC6253a2) {
        Parcel m28796D0 = m28796D0();
        C1849c.m28790e(m28796D0, abstractC6253a);
        m28796D0.writeString(str);
        m28796D0.writeInt(i);
        C1849c.m28790e(m28796D0, abstractC6253a2);
        Parcel m28795c0 = m28795c0(2, m28796D0);
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m28795c0.readStrongBinder());
        m28795c0.recycle();
        return m16746D0;
    }

    /* renamed from: m2 */
    public final AbstractC6253a m16722m2(AbstractC6253a abstractC6253a, String str, int i, AbstractC6253a abstractC6253a2) {
        Parcel m28796D0 = m28796D0();
        C1849c.m28790e(m28796D0, abstractC6253a);
        m28796D0.writeString(str);
        m28796D0.writeInt(i);
        C1849c.m28790e(m28796D0, abstractC6253a2);
        Parcel m28795c0 = m28795c0(3, m28796D0);
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m28795c0.readStrongBinder());
        m28795c0.recycle();
        return m16746D0;
    }
}
