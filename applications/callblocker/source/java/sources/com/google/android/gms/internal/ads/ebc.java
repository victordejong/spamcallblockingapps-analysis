package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ebc.class */
public final class ebc extends dkj implements eba {
    public ebc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: a */
    public final void mo7658a() {
        m9328b(1, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: a */
    public final void mo7657a(ebb ebbVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, ebbVar);
        m9328b(8, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: a */
    public final void mo7656a(boolean z) {
        Parcel m9326y = m9326y();
        dkk.m9321a(m9326y, z);
        m9328b(3, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: b */
    public final void mo7655b() {
        m9328b(2, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: c */
    public final void mo7654c() {
        m9328b(13, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: d */
    public final boolean mo7653d() {
        Parcel m9329a = m9329a(4, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: e */
    public final int mo7652e() {
        Parcel m9329a = m9329a(5, m9326y());
        int readInt = m9329a.readInt();
        m9329a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: f */
    public final float mo7651f() {
        Parcel m9329a = m9329a(6, m9326y());
        float readFloat = m9329a.readFloat();
        m9329a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: g */
    public final float mo7650g() {
        Parcel m9329a = m9329a(7, m9326y());
        float readFloat = m9329a.readFloat();
        m9329a.recycle();
        return readFloat;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.ebb] */
    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: h */
    public final ebb mo7649h() {
        ebd ebdVar;
        Parcel m9329a = m9329a(11, m9326y());
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            ebdVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            ebdVar = queryLocalInterface instanceof ebb ? (ebb) queryLocalInterface : new ebd(readStrongBinder);
        }
        m9329a.recycle();
        return ebdVar;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: i */
    public final float mo7648i() {
        Parcel m9329a = m9329a(9, m9326y());
        float readFloat = m9329a.readFloat();
        m9329a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: j */
    public final boolean mo7647j() {
        Parcel m9329a = m9329a(10, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: k */
    public final boolean mo7646k() {
        Parcel m9329a = m9329a(12, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }
}
