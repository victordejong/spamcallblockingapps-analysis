package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgq.class */
public final class bgq extends en {

    /* renamed from: a  reason: collision with root package name */
    private final String f24402a;

    /* renamed from: b  reason: collision with root package name */
    private final bcf f24403b;

    /* renamed from: c  reason: collision with root package name */
    private final bcr f24404c;

    public bgq(String str, bcf bcfVar, bcr bcrVar) {
        this.f24402a = str;
        this.f24403b = bcfVar;
        this.f24404c = bcrVar;
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final b a() throws RemoteException {
        return d.a(this.f24403b);
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final void a(Bundle bundle) throws RemoteException {
        this.f24403b.a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final String b() throws RemoteException {
        return this.f24404c.e();
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final boolean b(Bundle bundle) throws RemoteException {
        return this.f24403b.b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final List<?> c() throws RemoteException {
        return this.f24404c.f();
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final void c(Bundle bundle) throws RemoteException {
        this.f24403b.c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final String d() throws RemoteException {
        return this.f24404c.j();
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final dr e() throws RemoteException {
        return this.f24404c.t();
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final String f() throws RemoteException {
        return this.f24404c.l();
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final String g() throws RemoteException {
        return this.f24404c.s();
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final Bundle h() throws RemoteException {
        return this.f24404c.k();
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final void i() throws RemoteException {
        this.f24403b.a();
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final emk j() throws RemoteException {
        return this.f24404c.b();
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final dj k() throws RemoteException {
        return this.f24404c.c();
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final b l() throws RemoteException {
        return this.f24404c.n();
    }

    @Override // com.google.android.gms.internal.ads.ek
    public final String m() throws RemoteException {
        return this.f24402a;
    }
}
