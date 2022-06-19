package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bco.class */
public final class bco extends emn {

    /* renamed from: a */
    private final Object f43573a = new Object();

    /* renamed from: b */
    private emk f43574b;

    /* renamed from: c */
    private final AbstractC12769nh f43575c;

    public bco(emk emkVar, AbstractC12769nh abstractC12769nh) {
        this.f43574b = emkVar;
        this.f43575c = abstractC12769nh;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14466a() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14465a(emp empVar) throws RemoteException {
        synchronized (this.f43573a) {
            emk emkVar = this.f43574b;
            if (emkVar != null) {
                emkVar.mo14465a(empVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14464a(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: b */
    public final void mo14463b() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: c */
    public final void mo14462c() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: d */
    public final boolean mo14461d() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: e */
    public final int mo14460e() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: f */
    public final float mo14459f() throws RemoteException {
        AbstractC12769nh abstractC12769nh = this.f43575c;
        return abstractC12769nh != null ? abstractC12769nh.mo14306t() : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: g */
    public final float mo14458g() throws RemoteException {
        AbstractC12769nh abstractC12769nh = this.f43575c;
        return abstractC12769nh != null ? abstractC12769nh.mo14305u() : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: h */
    public final emp mo14457h() throws RemoteException {
        synchronized (this.f43573a) {
            emk emkVar = this.f43574b;
            if (emkVar != null) {
                return emkVar.mo14457h();
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: i */
    public final float mo14456i() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: j */
    public final boolean mo14455j() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: k */
    public final boolean mo14454k() throws RemoteException {
        throw new RemoteException();
    }
}
