package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgo.class */
public final class bgo extends AbstractBinderC12526ej {

    /* renamed from: a */
    private final String f43878a;

    /* renamed from: b */
    private final bcf f43879b;

    /* renamed from: c */
    private final bcr f43880c;

    public bgo(String str, bcf bcfVar, bcr bcrVar) {
        this.f43878a = str;
        this.f43879b = bcfVar;
        this.f43880c = bcrVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: a */
    public final AbstractC12126b mo14886a() throws RemoteException {
        return BinderC12129d.m18979a(this.f43879b);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: a */
    public final void mo14885a(Bundle bundle) throws RemoteException {
        this.f43879b.m18234a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: b */
    public final String mo14884b() throws RemoteException {
        return this.f43880c.m18167e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: b */
    public final boolean mo14883b(Bundle bundle) throws RemoteException {
        return this.f43879b.m18220b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: c */
    public final List<?> mo14882c() throws RemoteException {
        return this.f43880c.m18166f();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: c */
    public final void mo14881c(Bundle bundle) throws RemoteException {
        this.f43879b.m18216c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: d */
    public final String mo14880d() throws RemoteException {
        return this.f43880c.m18162j();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: e */
    public final AbstractC12394dr mo14879e() throws RemoteException {
        return this.f43880c.m18154r();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: f */
    public final String mo14878f() throws RemoteException {
        return this.f43880c.m18160l();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: g */
    public final double mo14877g() throws RemoteException {
        return this.f43880c.m18155q();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: h */
    public final String mo14876h() throws RemoteException {
        return this.f43880c.m18157o();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: i */
    public final String mo14875i() throws RemoteException {
        return this.f43880c.m18156p();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: j */
    public final Bundle mo14874j() throws RemoteException {
        return this.f43880c.m18161k();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: k */
    public final void mo14873k() throws RemoteException {
        this.f43879b.mo18235a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: l */
    public final emk mo14872l() throws RemoteException {
        return this.f43880c.m18178b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: m */
    public final AbstractC12371dj mo14871m() throws RemoteException {
        return this.f43880c.m18170c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: n */
    public final AbstractC12126b mo14870n() throws RemoteException {
        return this.f43880c.m18158n();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: o */
    public final String mo14869o() throws RemoteException {
        return this.f43878a;
    }
}
