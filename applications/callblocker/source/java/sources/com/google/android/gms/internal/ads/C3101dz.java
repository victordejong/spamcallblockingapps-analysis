package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.C2387p;
import com.google.android.gms.ads.p119b.AbstractC2252c;
import com.google.android.gms.ads.p119b.AbstractC2267k;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.dz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dz.class */
public final class C3101dz extends AbstractC2267k {

    /* renamed from: a */
    private final AbstractC3015du f16164a;

    /* renamed from: c */
    private final C2850bz f16166c;

    /* renamed from: e */
    private final AbstractC2252c.AbstractC2253a f16168e;

    /* renamed from: b */
    private final List<AbstractC2252c.AbstractC2254b> f16165b = new ArrayList();

    /* renamed from: d */
    private final C2387p f16167d = new C2387p();

    /* renamed from: f */
    private final List<Object> f16169f = new ArrayList();

    public C3101dz(AbstractC3015du abstractC3015du) {
        C2850bz c2850bz;
        C2847bw c2847bw;
        IBinder iBinder;
        this.f16164a = abstractC3015du;
        try {
            List mo8476b = this.f16164a.mo8476b();
            if (mo8476b != null) {
                for (Object obj : mo8476b) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        c2847bw = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        c2847bw = queryLocalInterface instanceof AbstractC2844bu ? (AbstractC2844bu) queryLocalInterface : new C2847bw(iBinder);
                    }
                    if (c2847bw != null) {
                        this.f16165b.add(new C2850bz(c2847bw));
                    }
                }
            }
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
        try {
            List mo8458r = this.f16164a.mo8458r();
            if (mo8458r != null) {
                for (Object obj2 : mo8458r) {
                    eal m8100a = obj2 instanceof IBinder ? ean.m8100a((IBinder) obj2) : null;
                    if (m8100a != null) {
                        this.f16169f.add(new eaq(m8100a));
                    }
                }
            }
        } catch (RemoteException e2) {
            C3645yb.m6748c("", e2);
        }
        try {
            AbstractC2844bu mo8472d = this.f16164a.mo8472d();
            c2850bz = mo8472d != null ? new C2850bz(mo8472d) : null;
        } catch (RemoteException e3) {
            C3645yb.m6748c("", e3);
            c2850bz = null;
        }
        this.f16166c = c2850bz;
        C2841br c2841br = null;
        try {
            if (this.f16164a.mo8463m() != null) {
                c2841br = new C2841br(this.f16164a.mo8463m());
            }
        } catch (RemoteException e4) {
            C3645yb.m6748c("", e4);
            c2841br = null;
        }
        this.f16168e = c2841br;
    }

    /* renamed from: m */
    public final AbstractC2731a mo8143k() {
        AbstractC2731a abstractC2731a;
        try {
            abstractC2731a = this.f16164a.mo8462n();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            abstractC2731a = null;
        }
        return abstractC2731a;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2267k
    /* renamed from: a */
    public final String mo8153a() {
        String str;
        try {
            str = this.f16164a.mo8482a();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2267k
    /* renamed from: b */
    public final List<AbstractC2252c.AbstractC2254b> mo8152b() {
        return this.f16165b;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2267k
    /* renamed from: c */
    public final String mo8151c() {
        String str;
        try {
            str = this.f16164a.mo8474c();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2267k
    /* renamed from: d */
    public final AbstractC2252c.AbstractC2254b mo8150d() {
        return this.f16166c;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2267k
    /* renamed from: e */
    public final String mo8149e() {
        String str;
        try {
            str = this.f16164a.mo8471e();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2267k
    /* renamed from: f */
    public final String mo8148f() {
        String str;
        try {
            str = this.f16164a.mo8470f();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2267k
    /* renamed from: g */
    public final Double mo8147g() {
        Double d = null;
        try {
            double mo8469g = this.f16164a.mo8469g();
            if (mo8469g != -1.0d) {
                d = Double.valueOf(mo8469g);
            }
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
        return d;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2267k
    /* renamed from: h */
    public final String mo8146h() {
        String str;
        try {
            str = this.f16164a.mo8468h();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2267k
    /* renamed from: i */
    public final String mo8145i() {
        String str;
        try {
            str = this.f16164a.mo8467i();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2267k
    /* renamed from: j */
    public final C2387p mo8144j() {
        try {
            if (this.f16164a.mo8466j() != null) {
                this.f16167d.m14615a(this.f16164a.mo8466j());
            }
        } catch (RemoteException e) {
            C3645yb.m6748c("Exception occurred while getting video controller", e);
        }
        return this.f16167d;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2267k
    /* renamed from: l */
    public final Object mo8142l() {
        Object obj;
        AbstractC2731a mo8461o;
        try {
            mo8461o = this.f16164a.mo8461o();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
        if (mo8461o != null) {
            obj = BinderC2734b.m13795a(mo8461o);
            return obj;
        }
        obj = null;
        return obj;
    }
}
