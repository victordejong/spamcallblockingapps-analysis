package p081h.p203i.p204a.p224e.p282l;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8542j;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8882f0;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8886h0;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8890k;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8892m;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8896q;
import p081h.p203i.p204a.p224e.p282l.p284k.C8908c;
import p081h.p203i.p204a.p224e.p282l.p284k.C8909d;
/* renamed from: h.i.a.e.l.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/c.class */
public final class C8856c {

    /* renamed from: a */
    public final AbstractC8873b f20174a;

    /* renamed from: b */
    public C8870i f20175b;

    /* renamed from: h.i.a.e.l.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/l/c$a.class */
    public interface AbstractC8857a {
    }

    /* renamed from: h.i.a.e.l.c$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/l/c$b.class */
    public interface AbstractC8858b {
        /* renamed from: v */
        void mo13189v();
    }

    /* renamed from: h.i.a.e.l.c$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/l/c$c.class */
    public interface AbstractC8859c {
        /* renamed from: a */
        void mo16861a(int i);
    }

    /* renamed from: h.i.a.e.l.c$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/l/c$d.class */
    public interface AbstractC8860d {
    }

    /* renamed from: h.i.a.e.l.c$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/l/c$e.class */
    public interface AbstractC8861e {
        /* renamed from: a */
        void mo16860a(LatLng latLng);
    }

    /* renamed from: h.i.a.e.l.c$f */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/l/c$f.class */
    public interface AbstractC8862f {
        /* renamed from: s */
        void mo16859s();
    }

    /* renamed from: h.i.a.e.l.c$g */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/l/c$g.class */
    public interface AbstractC8863g {
        /* renamed from: a */
        boolean mo13137a(C8908c cVar);
    }

    /* renamed from: h.i.a.e.l.c$h */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/l/c$h.class */
    public interface AbstractC8864h {
    }

    public C8856c(AbstractC8873b bVar) {
        C7021t.m21290a(bVar);
        this.f20174a = bVar;
    }

    /* renamed from: a */
    public final C8908c m16873a(MarkerOptions markerOptions) {
        try {
            AbstractC8542j a = this.f20174a.mo16838a(markerOptions);
            if (a != null) {
                return new C8908c(a);
            }
            return null;
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public final void m16875a() {
        try {
            this.f20174a.clear();
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public final void m16874a(int i, int i2, int i3, int i4) {
        try {
            this.f20174a.mo16839a(i, i2, i3, i4);
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public final void m16872a(C8854a aVar) {
        try {
            this.f20174a.mo16830n(aVar.m16881a());
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public final void m16871a(@Nullable AbstractC8858b bVar) {
        try {
            if (bVar == null) {
                this.f20174a.mo16837a((AbstractC8882f0) null);
            } else {
                this.f20174a.mo16837a(new BinderC8939s(this, bVar));
            }
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public final void m16870a(@Nullable AbstractC8859c cVar) {
        try {
            if (cVar == null) {
                this.f20174a.mo16836a((AbstractC8886h0) null);
            } else {
                this.f20174a.mo16836a(new BinderC8938r(this, cVar));
            }
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public final void m16869a(@Nullable AbstractC8861e eVar) {
        try {
            if (eVar == null) {
                this.f20174a.mo16835a((AbstractC8890k) null);
            } else {
                this.f20174a.mo16835a(new BinderC8940t(this, eVar));
            }
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public final void m16868a(AbstractC8862f fVar) {
        try {
            if (fVar == null) {
                this.f20174a.mo16834a((AbstractC8892m) null);
            } else {
                this.f20174a.mo16834a(new BinderC8937q(this, fVar));
            }
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public final void m16867a(@Nullable AbstractC8863g gVar) {
        try {
            if (gVar == null) {
                this.f20174a.mo16833a((AbstractC8896q) null);
            } else {
                this.f20174a.mo16833a(new BinderC8936p(this, gVar));
            }
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    /* renamed from: a */
    public final void m16866a(boolean z) {
        try {
            this.f20174a.mo16831l(z);
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: b */
    public final CameraPosition m16865b() {
        try {
            return this.f20174a.mo16840P();
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: b */
    public final void m16864b(C8854a aVar) {
        try {
            this.f20174a.mo16829u(aVar.m16881a());
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: c */
    public final C8868g m16863c() {
        try {
            return new C8868g(this.f20174a.mo16832c0());
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: d */
    public final C8870i m16862d() {
        try {
            if (this.f20175b == null) {
                this.f20175b = new C8870i(this.f20174a.mo16828u0());
            }
            return this.f20175b;
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }
}
