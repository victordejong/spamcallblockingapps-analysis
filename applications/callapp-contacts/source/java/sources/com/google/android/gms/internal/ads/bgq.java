package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgq.class */
public final class bgq extends AbstractBinderC12531en {

    /* renamed from: a */
    private final String f43883a;

    /* renamed from: b */
    private final bcf f43884b;

    /* renamed from: c */
    private final bcr f43885c;

    public bgq(String str, bcf bcfVar, bcr bcrVar) {
        this.f43883a = str;
        this.f43884b = bcfVar;
        this.f43885c = bcrVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: a */
    public final AbstractC12126b mo14801a() throws RemoteException {
        return BinderC12129d.m18979a(this.f43884b);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: a */
    public final void mo14800a(Bundle bundle) throws RemoteException {
        this.f43884b.m18234a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: b */
    public final String mo14799b() throws RemoteException {
        return this.f43885c.m18167e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: b */
    public final boolean mo14798b(Bundle bundle) throws RemoteException {
        return this.f43884b.m18220b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: c */
    public final List<?> mo14797c() throws RemoteException {
        return this.f43885c.m18166f();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: c */
    public final void mo14796c(Bundle bundle) throws RemoteException {
        this.f43884b.m18216c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: d */
    public final String mo14795d() throws RemoteException {
        return this.f43885c.m18162j();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: e */
    public final AbstractC12394dr mo14794e() throws RemoteException {
        return this.f43885c.m18152t();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: f */
    public final String mo14793f() throws RemoteException {
        return this.f43885c.m18160l();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: g */
    public final String mo14792g() throws RemoteException {
        return this.f43885c.m18153s();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: h */
    public final Bundle mo14791h() throws RemoteException {
        return this.f43885c.m18161k();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: i */
    public final void mo14790i() throws RemoteException {
        this.f43884b.mo18235a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: j */
    public final emk mo14789j() throws RemoteException {
        return this.f43885c.m18178b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: k */
    public final AbstractC12371dj mo14788k() throws RemoteException {
        return this.f43885c.m18170c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: l */
    public final AbstractC12126b mo14787l() throws RemoteException {
        return this.f43885c.m18158n();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: m */
    public final String mo14786m() throws RemoteException {
        return this.f43883a;
    }
}
