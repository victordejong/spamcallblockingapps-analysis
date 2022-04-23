package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bug.class */
public final class bug extends ui implements asy {

    /* renamed from: a  reason: collision with root package name */
    private uf f25121a;

    /* renamed from: b  reason: collision with root package name */
    private asx f25122b;

    /* renamed from: c  reason: collision with root package name */
    private ayv f25123c;

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(Bundle bundle) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.a(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(b bVar) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.a(bVar);
            }
            ayv ayvVar = this.f25123c;
            if (ayvVar != null) {
                ayvVar.a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(b bVar, int i) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.a(bVar, i);
            }
            ayv ayvVar = this.f25123c;
            if (ayvVar != null) {
                ayvVar.b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(b bVar, zzavy zzavyVar) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.a(bVar, zzavyVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.asy
    public final void a(asx asxVar) {
        synchronized (this) {
            this.f25122b = asxVar;
        }
    }

    public final void a(ayv ayvVar) {
        synchronized (this) {
            this.f25123c = ayvVar;
        }
    }

    public final void a(uf ufVar) {
        synchronized (this) {
            this.f25121a = ufVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void b(b bVar) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.b(bVar);
            }
            asx asxVar = this.f25122b;
            if (asxVar != null) {
                asxVar.a();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void b(b bVar, int i) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.b(bVar, i);
            }
            asx asxVar = this.f25122b;
            if (asxVar != null) {
                asxVar.a(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void c(b bVar) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.c(bVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void d(b bVar) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.d(bVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void e(b bVar) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.e(bVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void f(b bVar) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.f(bVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void g(b bVar) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.g(bVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void h(b bVar) throws RemoteException {
        synchronized (this) {
            uf ufVar = this.f25121a;
            if (ufVar != null) {
                ufVar.h(bVar);
            }
        }
    }
}
