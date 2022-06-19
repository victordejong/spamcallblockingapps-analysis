package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.C2387p;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bdn.class */
public final class bdn extends C2387p.C2388a {

    /* renamed from: a */
    private final ayx f11032a;

    public bdn(ayx ayxVar) {
        this.f11032a = ayxVar;
    }

    /* renamed from: a */
    private static ebb m12070a(ayx ayxVar) {
        ebb ebbVar;
        eba m12263b = ayxVar.m12263b();
        if (m12263b == null) {
            ebbVar = null;
        } else {
            try {
                ebbVar = m12263b.mo7649h();
            } catch (RemoteException e) {
                ebbVar = null;
            }
        }
        return ebbVar;
    }

    @Override // com.google.android.gms.ads.C2387p.C2388a
    /* renamed from: a */
    public final void mo12071a() {
        ebb m12070a = m12070a(this.f11032a);
        if (m12070a == null) {
            return;
        }
        try {
            m12070a.mo7909a();
        } catch (RemoteException e) {
            C3556uu.m6746d("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.C2387p.C2388a
    /* renamed from: c */
    public final void mo12069c() {
        ebb m12070a = m12070a(this.f11032a);
        if (m12070a == null) {
            return;
        }
        try {
            m12070a.mo7906c();
        } catch (RemoteException e) {
            C3556uu.m6746d("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.C2387p.C2388a
    /* renamed from: d */
    public final void mo12068d() {
        ebb m12070a = m12070a(this.f11032a);
        if (m12070a == null) {
            return;
        }
        try {
            m12070a.mo7905d();
        } catch (RemoteException e) {
            C3556uu.m6746d("Unable to call onVideoEnd()", e);
        }
    }
}
