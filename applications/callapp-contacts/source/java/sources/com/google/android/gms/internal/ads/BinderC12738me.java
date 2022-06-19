package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.measurement.C13363ak;
import com.google.android.gms.internal.measurement.C13541h;
import com.google.android.gms.measurement.p363a.C13849a;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.me */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/me.class */
public final class BinderC12738me extends afj {

    /* renamed from: a */
    private final C13849a f49509a;

    public BinderC12738me(C13849a c13849a) {
        this.f49509a = c13849a;
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: a */
    public final int mo14507a(String str) throws RemoteException {
        return this.f49509a.m12133a(str);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: a */
    public final String mo14510a() throws RemoteException {
        return this.f49509a.f51184a.m13295b();
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: a */
    public final List mo14506a(String str, String str2) throws RemoteException {
        return this.f49509a.m12132a(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: a */
    public final Map mo14503a(String str, String str2, boolean z) throws RemoteException {
        return this.f49509a.m12129a(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: a */
    public final void mo14509a(Bundle bundle) throws RemoteException {
        this.f49509a.f51184a.m13312a(bundle, false);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: a */
    public final void mo14508a(AbstractC12126b abstractC12126b, String str, String str2) throws RemoteException {
        this.f49509a.f51184a.m13316a(abstractC12126b != null ? (Activity) BinderC12129d.m18980a(abstractC12126b) : null, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: a */
    public final void mo14505a(String str, String str2, Bundle bundle) throws RemoteException {
        this.f49509a.m12131a(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: a */
    public final void mo14504a(String str, String str2, AbstractC12126b abstractC12126b) throws RemoteException {
        this.f49509a.m12130a(str, str2, abstractC12126b != null ? BinderC12129d.m18980a(abstractC12126b) : null);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: b */
    public final Bundle mo14501b(Bundle bundle) throws RemoteException {
        return this.f49509a.f51184a.m13312a(bundle, true);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: b */
    public final String mo14502b() throws RemoteException {
        return this.f49509a.f51184a.m13317a();
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: b */
    public final void mo14500b(String str) throws RemoteException {
        this.f49509a.f51184a.m13293b(str);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: b */
    public final void mo14499b(String str, String str2, Bundle bundle) throws RemoteException {
        this.f49509a.m12128b(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: c */
    public final long mo14498c() throws RemoteException {
        return this.f49509a.f51184a.m13290c();
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: c */
    public final void mo14497c(Bundle bundle) throws RemoteException {
        this.f49509a.m12135a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: c */
    public final void mo14496c(String str) throws RemoteException {
        this.f49509a.f51184a.m13288c(str);
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: d */
    public final String mo14495d() throws RemoteException {
        return this.f49509a.f51184a.m13286d();
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: d */
    public final void mo14494d(Bundle bundle) throws RemoteException {
        C13363ak c13363ak = this.f49509a.f51184a;
        c13363ak.m13311a(new C13541h(c13363ak, bundle));
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: e */
    public final String mo14493e() throws RemoteException {
        return this.f49509a.f51184a.m13284e();
    }

    @Override // com.google.android.gms.internal.ads.afl
    /* renamed from: f */
    public final String mo14492f() throws RemoteException {
        return this.f49509a.f51184a.f50600d;
    }
}
