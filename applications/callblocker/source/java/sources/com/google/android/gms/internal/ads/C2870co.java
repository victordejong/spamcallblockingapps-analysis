package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.C2387p;
import com.google.android.gms.ads.p119b.AbstractC2252c;
import com.google.android.gms.ads.p119b.AbstractC2259g;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.co */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/co.class */
public final class C2870co extends AbstractC2259g {

    /* renamed from: a */
    private final AbstractC2861cj f13426a;

    /* renamed from: c */
    private final C2850bz f13428c;

    /* renamed from: e */
    private final AbstractC2252c.AbstractC2253a f13430e;

    /* renamed from: b */
    private final List<AbstractC2252c.AbstractC2254b> f13427b = new ArrayList();

    /* renamed from: d */
    private final C2387p f13429d = new C2387p();

    public C2870co(AbstractC2861cj abstractC2861cj) {
        C2850bz c2850bz;
        C2847bw c2847bw;
        IBinder iBinder;
        this.f13426a = abstractC2861cj;
        try {
            List mo11133c = this.f13426a.mo11133c();
            if (mo11133c != null) {
                for (Object obj : mo11133c) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        c2847bw = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        c2847bw = queryLocalInterface instanceof AbstractC2844bu ? (AbstractC2844bu) queryLocalInterface : new C2847bw(iBinder);
                    }
                    if (c2847bw != null) {
                        this.f13427b.add(new C2850bz(c2847bw));
                    }
                }
            }
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
        try {
            AbstractC2844bu mo11130e = this.f13426a.mo11130e();
            c2850bz = mo11130e != null ? new C2850bz(mo11130e) : null;
        } catch (RemoteException e2) {
            C3645yb.m6748c("", e2);
            c2850bz = null;
        }
        this.f13428c = c2850bz;
        C2841br c2841br = null;
        try {
            if (this.f13426a.mo11122m() != null) {
                c2841br = new C2841br(this.f13426a.mo11122m());
            }
        } catch (RemoteException e3) {
            C3645yb.m6748c("", e3);
            c2841br = null;
        }
        this.f13430e = c2841br;
    }

    /* renamed from: k */
    public final AbstractC2731a mo10763a() {
        AbstractC2731a abstractC2731a;
        try {
            abstractC2731a = this.f13426a.mo11137a();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            abstractC2731a = null;
        }
        return abstractC2731a;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2259g
    /* renamed from: b */
    public final CharSequence mo10959b() {
        String str;
        try {
            str = this.f13426a.mo11135b();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2259g
    /* renamed from: c */
    public final List<AbstractC2252c.AbstractC2254b> mo10958c() {
        return this.f13427b;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2259g
    /* renamed from: d */
    public final CharSequence mo10957d() {
        String str;
        try {
            str = this.f13426a.mo11131d();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2259g
    /* renamed from: e */
    public final AbstractC2252c.AbstractC2254b mo10956e() {
        return this.f13428c;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2259g
    /* renamed from: f */
    public final CharSequence mo10955f() {
        String str;
        try {
            str = this.f13426a.mo11129f();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2259g
    /* renamed from: g */
    public final Double mo10954g() {
        Double d = null;
        try {
            double mo11128g = this.f13426a.mo11128g();
            if (mo11128g != -1.0d) {
                d = Double.valueOf(mo11128g);
            }
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
        return d;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2259g
    /* renamed from: h */
    public final CharSequence mo10953h() {
        String str;
        try {
            str = this.f13426a.mo11127h();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2259g
    /* renamed from: i */
    public final CharSequence mo10952i() {
        String str;
        try {
            str = this.f13426a.mo11126i();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2259g
    /* renamed from: j */
    public final C2387p mo10951j() {
        try {
            if (this.f13426a.mo11123l() != null) {
                this.f13429d.m14615a(this.f13426a.mo11123l());
            }
        } catch (RemoteException e) {
            C3645yb.m6748c("Exception occurred while getting video controller", e);
        }
        return this.f13429d;
    }
}
