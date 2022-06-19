package p193e.p194a.p1406z3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p1451f.p1452a.p1473o.AbstractC22561h;
import p193e.p1451f.p1452a.p1473o.AbstractC22568m;
import p193e.p1451f.p1452a.p1473o.C22569n;
import p193e.p1451f.p1452a.p1476r.C22591h;
/* renamed from: e.a.z3.e */
/* loaded from: classes9-dex2jar.jar:e/a/z3/e.class */
public class C21853e extends ComponentCallbacks2C22236i {
    public C21853e(ComponentCallbacks2C22222c componentCallbacks2C22222c, AbstractC22561h abstractC22561h, AbstractC22568m abstractC22568m, Context context) {
        super(componentCallbacks2C22222c, abstractC22561h, abstractC22568m, new C22569n(), componentCallbacks2C22222c.f61719h, context);
    }

    /* renamed from: A */
    public C21852d<Drawable> m8965A(Integer num) {
        return (C21852d) mo8414k().mo8422T(num);
    }

    /* renamed from: B */
    public C21852d<Drawable> m8964B(String str) {
        C22234h mo8414k = mo8414k();
        mo8414k.mo8420V(str);
        return (C21852d) mo8414k;
    }

    @Override // p193e.p1451f.p1452a.ComponentCallbacks2C22236i
    /* renamed from: a */
    public C22234h mo8416a(Class cls) {
        return new C21852d(this.f61776a, this, cls, this.f61777b);
    }

    @Override // p193e.p1451f.p1452a.ComponentCallbacks2C22236i
    /* renamed from: k */
    public C22234h mo8414k() {
        return (C21852d) super.mo8414k();
    }

    @Override // p193e.p1451f.p1452a.ComponentCallbacks2C22236i
    /* renamed from: l */
    public C22234h mo8413l() {
        return (C21852d) super.mo8413l();
    }

    @Override // p193e.p1451f.p1452a.ComponentCallbacks2C22236i
    /* renamed from: o */
    public C22234h mo8410o(Drawable drawable) {
        return (C21852d) mo8414k().mo8424R(drawable);
    }

    @Override // p193e.p1451f.p1452a.ComponentCallbacks2C22236i
    /* renamed from: p */
    public C22234h mo8409p(Uri uri) {
        C22234h mo8414k = mo8414k();
        mo8414k.mo8423S(uri);
        return (C21852d) mo8414k;
    }

    @Override // p193e.p1451f.p1452a.ComponentCallbacks2C22236i
    /* renamed from: q */
    public C22234h mo8408q(Integer num) {
        return (C21852d) mo8414k().mo8422T(num);
    }

    @Override // p193e.p1451f.p1452a.ComponentCallbacks2C22236i
    /* renamed from: r */
    public C22234h mo8407r(String str) {
        C22234h mo8414k = mo8414k();
        mo8414k.mo8420V(str);
        return (C21852d) mo8414k;
    }

    @Override // p193e.p1451f.p1452a.ComponentCallbacks2C22236i
    /* renamed from: u */
    public void mo8404u(C22591h c22591h) {
        if (c22591h instanceof C21851c) {
            super.mo8404u(c22591h);
        } else {
            super.mo8404u(new C21851c().m8985K(c22591h));
        }
    }

    /* renamed from: w */
    public C21853e m8963w(C22591h c22591h) {
        synchronized (this) {
            synchronized (this) {
                synchronized (this) {
                    this.f61786k = this.f61786k.mo8106a(c22591h);
                }
                return this;
            }
            return this;
        }
        return this;
    }

    /* renamed from: x */
    public C21852d<Bitmap> mo8415f() {
        return (C21852d) super.mo8415f();
    }

    /* renamed from: y */
    public C21852d<Drawable> m8961y(Drawable drawable) {
        return (C21852d) mo8414k().mo8424R(drawable);
    }

    /* renamed from: z */
    public C21852d<Drawable> m8960z(Uri uri) {
        C22234h mo8414k = mo8414k();
        mo8414k.mo8423S(uri);
        return (C21852d) mo8414k;
    }
}
