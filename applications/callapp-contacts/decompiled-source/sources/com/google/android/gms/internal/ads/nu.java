package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nu.class */
public final class nu extends mr {

    /* renamed from: a  reason: collision with root package name */
    private final Adapter f28237a;

    /* renamed from: b  reason: collision with root package name */
    private final uf f28238b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nu(Adapter adapter, uf ufVar) {
        this.f28237a = adapter;
        this.f28238b = ufVar;
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a() throws RemoteException {
        uf ufVar = this.f28238b;
        if (ufVar != null) {
            ufVar.f(d.a(this.f28237a));
        }
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(int i) throws RemoteException {
        uf ufVar = this.f28238b;
        if (ufVar != null) {
            ufVar.b(d.a(this.f28237a), i);
        }
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(int i, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(Bundle bundle) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(eo eoVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(my myVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(ul ulVar) throws RemoteException {
        uf ufVar = this.f28238b;
        if (ufVar != null) {
            ufVar.a(d.a(this.f28237a), new zzavy(ulVar.a(), ulVar.b()));
        }
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(zzavy zzavyVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(zzvh zzvhVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(String str, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void b() throws RemoteException {
        uf ufVar = this.f28238b;
        if (ufVar != null) {
            ufVar.e(d.a(this.f28237a));
        }
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void b(int i) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void b(zzvh zzvhVar) {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void b(String str) {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void c() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void d() throws RemoteException {
        uf ufVar = this.f28238b;
        if (ufVar != null) {
            ufVar.c(d.a(this.f28237a));
        }
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void e() throws RemoteException {
        uf ufVar = this.f28238b;
        if (ufVar != null) {
            ufVar.b(d.a(this.f28237a));
        }
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void f() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void g() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void h() throws RemoteException {
        uf ufVar = this.f28238b;
        if (ufVar != null) {
            ufVar.d(d.a(this.f28237a));
        }
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void i() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void j() throws RemoteException {
        uf ufVar = this.f28238b;
        if (ufVar != null) {
            ufVar.h(d.a(this.f28237a));
        }
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void k() throws RemoteException {
    }
}
