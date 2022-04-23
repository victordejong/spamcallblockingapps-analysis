package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgx.class */
public final class bgx extends fw {

    /* renamed from: a  reason: collision with root package name */
    private final String f24423a;

    /* renamed from: b  reason: collision with root package name */
    private final bcf f24424b;

    /* renamed from: c  reason: collision with root package name */
    private final bcr f24425c;

    public bgx(String str, bcf bcfVar, bcr bcrVar) {
        this.f24423a = str;
        this.f24424b = bcfVar;
        this.f24425c = bcrVar;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String a() throws RemoteException {
        return this.f24425c.e();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void a(Bundle bundle) throws RemoteException {
        this.f24424b.a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void a(elu eluVar) throws RemoteException {
        this.f24424b.a(eluVar);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void a(ely elyVar) throws RemoteException {
        this.f24424b.a(elyVar);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void a(emd emdVar) throws RemoteException {
        this.f24424b.a(emdVar);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void a(fs fsVar) throws RemoteException {
        this.f24424b.a(fsVar);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final List<?> b() throws RemoteException {
        return this.f24425c.f();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final boolean b(Bundle bundle) throws RemoteException {
        return this.f24424b.b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String c() throws RemoteException {
        return this.f24425c.j();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void c(Bundle bundle) throws RemoteException {
        this.f24424b.c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final dr d() throws RemoteException {
        return this.f24425c.r();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String e() throws RemoteException {
        return this.f24425c.l();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String f() throws RemoteException {
        return this.f24425c.s();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final double g() throws RemoteException {
        return this.f24425c.q();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String h() throws RemoteException {
        return this.f24425c.o();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String i() throws RemoteException {
        return this.f24425c.p();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final emk j() throws RemoteException {
        return this.f24425c.b();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final String k() throws RemoteException {
        return this.f24423a;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void l() throws RemoteException {
        this.f24424b.a();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final dj m() throws RemoteException {
        return this.f24425c.c();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final b n() throws RemoteException {
        return d.a(this.f24424b);
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final b o() throws RemoteException {
        return this.f24425c.n();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final Bundle p() throws RemoteException {
        return this.f24425c.k();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void q() throws RemoteException {
        this.f24424b.c();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final List<?> r() throws RemoteException {
        return s() ? this.f24425c.h() : Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final boolean s() throws RemoteException {
        return !this.f24425c.h().isEmpty() && this.f24425c.i() != null;
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void t() {
        this.f24424b.d();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final void u() {
        this.f24424b.e();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final dq v() throws RemoteException {
        return this.f24424b.q.a();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final boolean w() {
        return this.f24424b.f();
    }

    @Override // com.google.android.gms.internal.ads.ft
    public final emj x() throws RemoteException {
        if (!((Boolean) ekb.e().a(aq.em)).booleanValue()) {
            return null;
        }
        return this.f24424b.l;
    }
}
