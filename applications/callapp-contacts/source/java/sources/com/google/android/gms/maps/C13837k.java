package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.p362a.AbstractC13801h;
/* renamed from: com.google.android.gms.maps.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/k.class */
public final class C13837k {

    /* renamed from: a */
    private final AbstractC13801h f51168a;

    public C13837k(AbstractC13801h abstractC13801h) {
        this.f51168a = abstractC13801h;
    }

    /* renamed from: a */
    public final void m12147a() {
        try {
            this.f51168a.mo12179a(false);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: b */
    public final void m12146b() {
        try {
            this.f51168a.mo12178b(false);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: c */
    public final void m12145c() {
        try {
            this.f51168a.mo12177c(false);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
