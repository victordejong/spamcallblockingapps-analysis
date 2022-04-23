package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcib.class */
public final class zzcib extends zzaer {

    /* renamed from: a */
    public final String f26047a;

    /* renamed from: b */
    public final zzcdx f26048b;

    /* renamed from: c */
    public final zzcei f26049c;

    public zzcib(String str, zzcdx zzcdxVar, zzcei zzceiVar) {
        this.f26047a = str;
        this.f26048b = zzcdxVar;
        this.f26049c = zzceiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: D */
    public final String mo14253D() throws RemoteException {
        return this.f26049c.m14684m();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: a */
    public final String mo14252a() throws RemoteException {
        return this.f26047a;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: a */
    public final void mo14251a(Bundle bundle) throws RemoteException {
        this.f26048b.m14763a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: b */
    public final boolean mo14250b(Bundle bundle) throws RemoteException {
        return this.f26048b.m14745c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: d */
    public final zzadw mo14249d() throws RemoteException {
        return this.f26049c.m14726A();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    public final void destroy() throws RemoteException {
        this.f26048b.mo14764a();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: e */
    public final String mo14248e() throws RemoteException {
        return this.f26049c.m14690g();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: e */
    public final void mo14247e(Bundle bundle) throws RemoteException {
        this.f26048b.m14748b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: f */
    public final String mo14246f() throws RemoteException {
        return this.f26049c.m14693d();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: g */
    public final String mo14245g() throws RemoteException {
        return this.f26049c.m14695c();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    public final Bundle getExtras() throws RemoteException {
        return this.f26049c.m14691f();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    public final double getStarRating() throws RemoteException {
        return this.f26049c.m14685l();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    public final zzyo getVideoController() throws RemoteException {
        return this.f26049c.m14683n();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: h */
    public final IObjectWrapper mo14244h() throws RemoteException {
        return this.f26049c.m14725B();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: i */
    public final List<?> mo14243i() throws RemoteException {
        return this.f26049c.m14689h();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: q */
    public final zzaee mo14242q() throws RemoteException {
        return this.f26049c.m14671z();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: s */
    public final String mo14241s() throws RemoteException {
        return this.f26049c.m14686k();
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: v */
    public final IObjectWrapper mo14240v() throws RemoteException {
        return ObjectWrapper.m17020a(this.f26048b);
    }
}
