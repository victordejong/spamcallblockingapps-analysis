package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bco.class */
public final class bco extends emn {

    /* renamed from: a  reason: collision with root package name */
    private final Object f24178a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private emk f24179b;

    /* renamed from: c  reason: collision with root package name */
    private final nh f24180c;

    public bco(emk emkVar, nh nhVar) {
        this.f24179b = emkVar;
        this.f24180c = nhVar;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void a() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void a(emp empVar) throws RemoteException {
        synchronized (this.f24178a) {
            emk emkVar = this.f24179b;
            if (emkVar != null) {
                emkVar.a(empVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void a(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void b() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void c() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean d() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final int e() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float f() throws RemoteException {
        nh nhVar = this.f24180c;
        return nhVar != null ? nhVar.t() : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float g() throws RemoteException {
        nh nhVar = this.f24180c;
        return nhVar != null ? nhVar.u() : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final emp h() throws RemoteException {
        synchronized (this.f24178a) {
            emk emkVar = this.f24179b;
            if (emkVar == null) {
                return null;
            }
            return emkVar.h();
        }
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float i() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean j() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean k() throws RemoteException {
        throw new RemoteException();
    }
}
