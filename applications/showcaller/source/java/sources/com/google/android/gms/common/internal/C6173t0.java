package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.zzn;
import com.google.android.gms.common.zzq;
import com.google.android.gms.common.zzs;
import com.google.android.gms.dynamic.AbstractC6253a;
import p078c.p084c.p085a.p086a.p088b.p091c.C1847a;
import p078c.p084c.p085a.p086a.p088b.p091c.C1849c;
/* renamed from: com.google.android.gms.common.internal.t0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/t0.class */
public final class C6173t0 extends C1847a implements AbstractC6183v0 {
    public C6173t0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.AbstractC6183v0
    /* renamed from: F3 */
    public final boolean mo16913F3(zzs zzsVar, AbstractC6253a abstractC6253a) {
        Parcel m28796D0 = m28796D0();
        C1849c.m28791d(m28796D0, zzsVar);
        C1849c.m28790e(m28796D0, abstractC6253a);
        Parcel m28795c0 = m28795c0(5, m28796D0);
        boolean m28794a = C1849c.m28794a(m28795c0);
        m28795c0.recycle();
        return m28794a;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6183v0
    /* renamed from: T2 */
    public final zzq mo16912T2(zzn zznVar) {
        Parcel m28796D0 = m28796D0();
        C1849c.m28791d(m28796D0, zznVar);
        Parcel m28795c0 = m28795c0(6, m28796D0);
        zzq zzqVar = (zzq) C1849c.m28792c(m28795c0, zzq.CREATOR);
        m28795c0.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6183v0
    public final boolean zzg() {
        Parcel m28795c0 = m28795c0(7, m28796D0());
        boolean m28794a = C1849c.m28794a(m28795c0);
        m28795c0.recycle();
        return m28794a;
    }
}
