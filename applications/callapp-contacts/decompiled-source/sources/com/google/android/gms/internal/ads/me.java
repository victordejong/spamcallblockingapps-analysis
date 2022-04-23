package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.measurement.ak;
import com.google.android.gms.internal.measurement.h;
import com.google.android.gms.measurement.a.a;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/me.class */
public final class me extends afj {

    /* renamed from: a  reason: collision with root package name */
    private final a f28192a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public me(a aVar) {
        this.f28192a = aVar;
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final int a(String str) throws RemoteException {
        return this.f28192a.a(str);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final String a() throws RemoteException {
        return this.f28192a.f29391a.b();
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final List a(String str, String str2) throws RemoteException {
        return this.f28192a.a(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final Map a(String str, String str2, boolean z) throws RemoteException {
        return this.f28192a.a(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final void a(Bundle bundle) throws RemoteException {
        this.f28192a.f29391a.a(bundle, false);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final void a(b bVar, String str, String str2) throws RemoteException {
        this.f28192a.f29391a.a(bVar != null ? (Activity) d.a(bVar) : null, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final void a(String str, String str2, Bundle bundle) throws RemoteException {
        this.f28192a.a(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final void a(String str, String str2, b bVar) throws RemoteException {
        this.f28192a.a(str, str2, bVar != null ? d.a(bVar) : null);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final Bundle b(Bundle bundle) throws RemoteException {
        return this.f28192a.f29391a.a(bundle, true);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final String b() throws RemoteException {
        return this.f28192a.f29391a.a();
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final void b(String str) throws RemoteException {
        this.f28192a.f29391a.b(str);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final void b(String str, String str2, Bundle bundle) throws RemoteException {
        this.f28192a.b(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final long c() throws RemoteException {
        return this.f28192a.f29391a.c();
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final void c(Bundle bundle) throws RemoteException {
        this.f28192a.a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final void c(String str) throws RemoteException {
        this.f28192a.f29391a.c(str);
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final String d() throws RemoteException {
        return this.f28192a.f29391a.d();
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final void d(Bundle bundle) throws RemoteException {
        ak akVar = this.f28192a.f29391a;
        akVar.a(new h(akVar, bundle));
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final String e() throws RemoteException {
        return this.f28192a.f29391a.e();
    }

    @Override // com.google.android.gms.internal.ads.afl
    public final String f() throws RemoteException {
        return this.f28192a.f29391a.f28933d;
    }
}
