package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgo.class */
public final class bgo extends ej {

    /* renamed from: a  reason: collision with root package name */
    private final String f24397a;

    /* renamed from: b  reason: collision with root package name */
    private final bcf f24398b;

    /* renamed from: c  reason: collision with root package name */
    private final bcr f24399c;

    public bgo(String str, bcf bcfVar, bcr bcrVar) {
        this.f24397a = str;
        this.f24398b = bcfVar;
        this.f24399c = bcrVar;
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final b a() throws RemoteException {
        return d.a(this.f24398b);
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final void a(Bundle bundle) throws RemoteException {
        this.f24398b.a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final String b() throws RemoteException {
        return this.f24399c.e();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final boolean b(Bundle bundle) throws RemoteException {
        return this.f24398b.b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final List<?> c() throws RemoteException {
        return this.f24399c.f();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final void c(Bundle bundle) throws RemoteException {
        this.f24398b.c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final String d() throws RemoteException {
        return this.f24399c.j();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final dr e() throws RemoteException {
        return this.f24399c.r();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final String f() throws RemoteException {
        return this.f24399c.l();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final double g() throws RemoteException {
        return this.f24399c.q();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final String h() throws RemoteException {
        return this.f24399c.o();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final String i() throws RemoteException {
        return this.f24399c.p();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final Bundle j() throws RemoteException {
        return this.f24399c.k();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final void k() throws RemoteException {
        this.f24398b.a();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final emk l() throws RemoteException {
        return this.f24399c.b();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final dj m() throws RemoteException {
        return this.f24399c.c();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final b n() throws RemoteException {
        return this.f24399c.n();
    }

    @Override // com.google.android.gms.internal.ads.eg
    public final String o() throws RemoteException {
        return this.f24397a;
    }
}
