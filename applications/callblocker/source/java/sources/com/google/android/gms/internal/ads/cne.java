package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cne.class */
public final class cne extends dkj implements cnf {
    public cne(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    @Override // com.google.android.gms.internal.ads.cnf
    /* renamed from: a */
    public final cnd mo10998a(cnb cnbVar) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, cnbVar);
        Parcel m9329a = m9329a(1, m9326y);
        cnd cndVar = (cnd) dkk.m9323a(m9329a, cnd.CREATOR);
        m9329a.recycle();
        return cndVar;
    }

    @Override // com.google.android.gms.internal.ads.cnf
    /* renamed from: a */
    public final cno mo10997a(cnm cnmVar) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, cnmVar);
        Parcel m9329a = m9329a(3, m9326y);
        cno cnoVar = (cno) dkk.m9323a(m9329a, cno.CREATOR);
        m9329a.recycle();
        return cnoVar;
    }

    @Override // com.google.android.gms.internal.ads.cnf
    /* renamed from: a */
    public final void mo10999a(cmw cmwVar) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, cmwVar);
        m9328b(2, m9326y);
    }
}
