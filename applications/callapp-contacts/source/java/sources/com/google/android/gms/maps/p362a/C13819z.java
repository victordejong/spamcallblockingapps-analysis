package com.google.android.gms.maps.p362a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.p359e.C13282a;
import com.google.android.gms.internal.p359e.C13288g;
/* renamed from: com.google.android.gms.maps.a.z */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/z.class */
public final class C13819z extends C13282a implements AbstractC13801h {
    public C13819z(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IUiSettingsDelegate");
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13801h
    /* renamed from: a */
    public final void mo12179a(boolean z) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13488a(m13502N_, false);
        m13500b(1, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13801h
    /* renamed from: b */
    public final void mo12178b(boolean z) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13488a(m13502N_, false);
        m13500b(8, m13502N_);
    }

    @Override // com.google.android.gms.maps.p362a.AbstractC13801h
    /* renamed from: c */
    public final void mo12177c(boolean z) throws RemoteException {
        Parcel m13502N_ = m13502N_();
        C13288g.m13488a(m13502N_, false);
        m13500b(18, m13502N_);
    }
}
