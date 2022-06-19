package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.C2387p;
import com.google.android.gms.ads.p119b.AbstractC2252c;
import com.google.android.gms.ads.p119b.AbstractC2261h;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.cs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cs.class */
public final class C2895cs extends AbstractC2261h {

    /* renamed from: a */
    private final AbstractC2869cn f13627a;

    /* renamed from: c */
    private final C2850bz f13629c;

    /* renamed from: e */
    private final AbstractC2252c.AbstractC2253a f13631e;

    /* renamed from: b */
    private final List<AbstractC2252c.AbstractC2254b> f13628b = new ArrayList();

    /* renamed from: d */
    private final C2387p f13630d = new C2387p();

    public C2895cs(AbstractC2869cn abstractC2869cn) {
        C2850bz c2850bz;
        C2847bw c2847bw;
        IBinder iBinder;
        this.f13627a = abstractC2869cn;
        try {
            List mo10912c = this.f13627a.mo10912c();
            if (mo10912c != null) {
                for (Object obj : mo10912c) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        c2847bw = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        c2847bw = queryLocalInterface instanceof AbstractC2844bu ? (AbstractC2844bu) queryLocalInterface : new C2847bw(iBinder);
                    }
                    if (c2847bw != null) {
                        this.f13628b.add(new C2850bz(c2847bw));
                    }
                }
            }
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
        }
        try {
            AbstractC2844bu mo10909e = this.f13627a.mo10909e();
            c2850bz = mo10909e != null ? new C2850bz(mo10909e) : null;
        } catch (RemoteException e2) {
            C3645yb.m6748c("", e2);
            c2850bz = null;
        }
        this.f13629c = c2850bz;
        C2841br c2841br = null;
        try {
            if (this.f13627a.mo10903k() != null) {
                c2841br = new C2841br(this.f13627a.mo10903k());
            }
        } catch (RemoteException e3) {
            C3645yb.m6748c("", e3);
            c2841br = null;
        }
        this.f13631e = c2841br;
    }

    /* renamed from: i */
    public final AbstractC2731a mo10763a() {
        AbstractC2731a abstractC2731a;
        try {
            abstractC2731a = this.f13627a.mo10916a();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            abstractC2731a = null;
        }
        return abstractC2731a;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2261h
    /* renamed from: b */
    public final CharSequence mo10762b() {
        String str;
        try {
            str = this.f13627a.mo10914b();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2261h
    /* renamed from: c */
    public final List<AbstractC2252c.AbstractC2254b> mo10761c() {
        return this.f13628b;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2261h
    /* renamed from: d */
    public final CharSequence mo10760d() {
        String str;
        try {
            str = this.f13627a.mo10910d();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2261h
    /* renamed from: e */
    public final AbstractC2252c.AbstractC2254b mo10759e() {
        return this.f13629c;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2261h
    /* renamed from: f */
    public final CharSequence mo10758f() {
        String str;
        try {
            str = this.f13627a.mo10908f();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2261h
    /* renamed from: g */
    public final CharSequence mo10757g() {
        String str;
        try {
            str = this.f13627a.mo10907g();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            str = null;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.p119b.AbstractC2261h
    /* renamed from: h */
    public final C2387p mo10756h() {
        try {
            if (this.f13627a.mo10904j() != null) {
                this.f13630d.m14615a(this.f13627a.mo10904j());
            }
        } catch (RemoteException e) {
            C3645yb.m6748c("Exception occurred while getting video controller", e);
        }
        return this.f13630d;
    }
}
