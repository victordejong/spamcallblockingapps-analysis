package p193e.p1451f.p1452a.p1476r;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import e.f.a.n.g;
import e.f.a.n.q.d.i;
import e.f.a.n.q.d.j;
import e.f.a.n.q.d.k;
import e.f.a.n.q.d.p;
import e.f.a.n.q.d.r;
import e.f.a.n.q.h.f;
import e.f.a.t.b;
import java.util.Map;
import java.util.Objects;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.AbstractC22271m;
import p193e.p1451f.p1452a.p1457n.C22264h;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22538c;
import p193e.p1451f.p1452a.p1476r.AbstractC22585a;
import p193e.p1451f.p1452a.p1479s.C22609c;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.r.a */
/* loaded from: classes-dex2jar.jar:e/f/a/r/a.class */
public abstract class AbstractC22585a<T extends AbstractC22585a<T>> implements Cloneable {

    /* renamed from: a */
    public int f62525a;

    /* renamed from: e */
    public Drawable f62529e;

    /* renamed from: f */
    public int f62530f;

    /* renamed from: g */
    public Drawable f62531g;

    /* renamed from: h */
    public int f62532h;

    /* renamed from: m */
    public boolean f62537m;

    /* renamed from: o */
    public Drawable f62539o;

    /* renamed from: p */
    public int f62540p;

    /* renamed from: t */
    public boolean f62544t;

    /* renamed from: u */
    public Resources.Theme f62545u;

    /* renamed from: v */
    public boolean f62546v;

    /* renamed from: w */
    public boolean f62547w;

    /* renamed from: x */
    public boolean f62548x;

    /* renamed from: z */
    public boolean f62550z;

    /* renamed from: b */
    public float f62526b = 1.0f;

    /* renamed from: c */
    public AbstractC22364k f62527c = AbstractC22364k.f62127d;

    /* renamed from: d */
    public EnumC22227f f62528d = EnumC22227f.NORMAL;

    /* renamed from: i */
    public boolean f62533i = true;

    /* renamed from: j */
    public int f62534j = -1;

    /* renamed from: k */
    public int f62535k = -1;

    /* renamed from: l */
    public AbstractC22263f f62536l = C22609c.f62623b;

    /* renamed from: n */
    public boolean f62538n = true;

    /* renamed from: q */
    public C22267i f62541q = new C22267i();

    /* renamed from: r */
    public Map<Class<?>, AbstractC22271m<?>> f62542r = new b();

    /* renamed from: s */
    public Class<?> f62543s = Object.class;

    /* renamed from: y */
    public boolean f62549y = true;

    public AbstractC22585a() {
        C22609c c22609c = C22609c.f62623b;
    }

    /* renamed from: n */
    public static boolean m8094n(int i, int i2) {
        return (i & i2) != 0;
    }

    /* renamed from: A */
    public T mo8113A(boolean z) {
        if (this.f62546v) {
            return (T) clone().mo8113A(true);
        }
        this.f62533i = !z;
        this.f62525a |= 256;
        m8084x();
        return this;
    }

    /* renamed from: B */
    public T mo8112B(AbstractC22271m<Bitmap> abstractC22271m) {
        return m8111C(abstractC22271m, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: C */
    public T m8111C(AbstractC22271m<Bitmap> abstractC22271m, boolean z) {
        if (this.f62546v) {
            return (T) clone().m8111C(abstractC22271m, z);
        }
        p pVar = new p(abstractC22271m, z);
        m8109E(Bitmap.class, abstractC22271m, z);
        m8109E(Drawable.class, pVar, z);
        m8109E(BitmapDrawable.class, pVar, z);
        m8109E(C22538c.class, new f(abstractC22271m), z);
        m8084x();
        return this;
    }

    /* renamed from: D */
    public final T m8110D(AbstractC22505m abstractC22505m, AbstractC22271m<Bitmap> abstractC22271m) {
        if (this.f62546v) {
            return (T) clone().m8110D(abstractC22505m, abstractC22271m);
        }
        mo8098j(abstractC22505m);
        return mo8112B(abstractC22271m);
    }

    /* renamed from: E */
    public <Y> T m8109E(Class<Y> cls, AbstractC22271m<Y> abstractC22271m, boolean z) {
        if (this.f62546v) {
            return (T) clone().m8109E(cls, abstractC22271m, z);
        }
        Objects.requireNonNull(cls, "Argument must not be null");
        Objects.requireNonNull(abstractC22271m, "Argument must not be null");
        this.f62542r.put(cls, abstractC22271m);
        int i = this.f62525a | 2048;
        this.f62525a = i;
        this.f62538n = true;
        int i2 = i | 65536;
        this.f62525a = i2;
        this.f62549y = false;
        if (z) {
            this.f62525a = i2 | 131072;
            this.f62537m = true;
        }
        m8084x();
        return this;
    }

    /* renamed from: F */
    public T mo8108F(AbstractC22271m<Bitmap>... abstractC22271mArr) {
        if (abstractC22271mArr.length > 1) {
            return m8111C(new g(abstractC22271mArr), true);
        }
        if (abstractC22271mArr.length == 1) {
            return mo8112B(abstractC22271mArr[0]);
        }
        m8084x();
        return this;
    }

    /* renamed from: G */
    public T mo8107G(boolean z) {
        if (this.f62546v) {
            return (T) clone().mo8107G(z);
        }
        this.f62550z = z;
        this.f62525a |= 1048576;
        m8084x();
        return this;
    }

    /* renamed from: a */
    public T mo8106a(AbstractC22585a<?> abstractC22585a) {
        if (this.f62546v) {
            return (T) clone().mo8106a(abstractC22585a);
        }
        if (m8094n(abstractC22585a.f62525a, 2)) {
            this.f62526b = abstractC22585a.f62526b;
        }
        if (m8094n(abstractC22585a.f62525a, 262144)) {
            this.f62547w = abstractC22585a.f62547w;
        }
        if (m8094n(abstractC22585a.f62525a, 1048576)) {
            this.f62550z = abstractC22585a.f62550z;
        }
        if (m8094n(abstractC22585a.f62525a, 4)) {
            this.f62527c = abstractC22585a.f62527c;
        }
        if (m8094n(abstractC22585a.f62525a, 8)) {
            this.f62528d = abstractC22585a.f62528d;
        }
        if (m8094n(abstractC22585a.f62525a, 16)) {
            this.f62529e = abstractC22585a.f62529e;
            this.f62530f = 0;
            this.f62525a &= -33;
        }
        if (m8094n(abstractC22585a.f62525a, 32)) {
            this.f62530f = abstractC22585a.f62530f;
            this.f62529e = null;
            this.f62525a &= -17;
        }
        if (m8094n(abstractC22585a.f62525a, 64)) {
            this.f62531g = abstractC22585a.f62531g;
            this.f62532h = 0;
            this.f62525a &= -129;
        }
        if (m8094n(abstractC22585a.f62525a, 128)) {
            this.f62532h = abstractC22585a.f62532h;
            this.f62531g = null;
            this.f62525a &= -65;
        }
        if (m8094n(abstractC22585a.f62525a, 256)) {
            this.f62533i = abstractC22585a.f62533i;
        }
        if (m8094n(abstractC22585a.f62525a, 512)) {
            this.f62535k = abstractC22585a.f62535k;
            this.f62534j = abstractC22585a.f62534j;
        }
        if (m8094n(abstractC22585a.f62525a, 1024)) {
            this.f62536l = abstractC22585a.f62536l;
        }
        if (m8094n(abstractC22585a.f62525a, 4096)) {
            this.f62543s = abstractC22585a.f62543s;
        }
        if (m8094n(abstractC22585a.f62525a, 8192)) {
            this.f62539o = abstractC22585a.f62539o;
            this.f62540p = 0;
            this.f62525a &= -16385;
        }
        if (m8094n(abstractC22585a.f62525a, 16384)) {
            this.f62540p = abstractC22585a.f62540p;
            this.f62539o = null;
            this.f62525a &= -8193;
        }
        if (m8094n(abstractC22585a.f62525a, 32768)) {
            this.f62545u = abstractC22585a.f62545u;
        }
        if (m8094n(abstractC22585a.f62525a, 65536)) {
            this.f62538n = abstractC22585a.f62538n;
        }
        if (m8094n(abstractC22585a.f62525a, 131072)) {
            this.f62537m = abstractC22585a.f62537m;
        }
        if (m8094n(abstractC22585a.f62525a, 2048)) {
            this.f62542r.putAll(abstractC22585a.f62542r);
            this.f62549y = abstractC22585a.f62549y;
        }
        if (m8094n(abstractC22585a.f62525a, 524288)) {
            this.f62548x = abstractC22585a.f62548x;
        }
        if (!this.f62538n) {
            this.f62542r.clear();
            int i = this.f62525a & (-2049);
            this.f62525a = i;
            this.f62537m = false;
            this.f62525a = i & (-131073);
            this.f62549y = true;
        }
        this.f62525a |= abstractC22585a.f62525a;
        this.f62541q.m8360d(abstractC22585a.f62541q);
        m8084x();
        return this;
    }

    /* renamed from: b */
    public T mo8105b() {
        if (!this.f62544t || this.f62546v) {
            this.f62546v = true;
            return mo8093o();
        }
        throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }

    /* renamed from: c */
    public T mo8104c() {
        return m8110D(AbstractC22505m.f62378d, new i());
    }

    /* renamed from: e */
    public T mo8103e() {
        T m8110D = m8110D(AbstractC22505m.f62377c, new j());
        m8110D.f62549y = true;
        return m8110D;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof AbstractC22585a) {
            AbstractC22585a abstractC22585a = (AbstractC22585a) obj;
            z = false;
            if (Float.compare(abstractC22585a.f62526b, this.f62526b) == 0) {
                z = false;
                if (this.f62530f == abstractC22585a.f62530f) {
                    z = false;
                    if (C22623j.m8022b(this.f62529e, abstractC22585a.f62529e)) {
                        z = false;
                        if (this.f62532h == abstractC22585a.f62532h) {
                            z = false;
                            if (C22623j.m8022b(this.f62531g, abstractC22585a.f62531g)) {
                                z = false;
                                if (this.f62540p == abstractC22585a.f62540p) {
                                    z = false;
                                    if (C22623j.m8022b(this.f62539o, abstractC22585a.f62539o)) {
                                        z = false;
                                        if (this.f62533i == abstractC22585a.f62533i) {
                                            z = false;
                                            if (this.f62534j == abstractC22585a.f62534j) {
                                                z = false;
                                                if (this.f62535k == abstractC22585a.f62535k) {
                                                    z = false;
                                                    if (this.f62537m == abstractC22585a.f62537m) {
                                                        z = false;
                                                        if (this.f62538n == abstractC22585a.f62538n) {
                                                            z = false;
                                                            if (this.f62547w == abstractC22585a.f62547w) {
                                                                z = false;
                                                                if (this.f62548x == abstractC22585a.f62548x) {
                                                                    z = false;
                                                                    if (this.f62527c.equals(abstractC22585a.f62527c)) {
                                                                        z = false;
                                                                        if (this.f62528d == abstractC22585a.f62528d) {
                                                                            z = false;
                                                                            if (this.f62541q.equals(abstractC22585a.f62541q)) {
                                                                                z = false;
                                                                                if (this.f62542r.equals(abstractC22585a.f62542r)) {
                                                                                    z = false;
                                                                                    if (this.f62543s.equals(abstractC22585a.f62543s)) {
                                                                                        z = false;
                                                                                        if (C22623j.m8022b(this.f62536l, abstractC22585a.f62536l)) {
                                                                                            z = false;
                                                                                            if (C22623j.m8022b(this.f62545u, abstractC22585a.f62545u)) {
                                                                                                z = true;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public T mo8102f() {
        return m8110D(AbstractC22505m.f62377c, new k());
    }

    /* renamed from: g */
    public T clone() {
        try {
            T t = (T) super.clone();
            C22267i c22267i = new C22267i();
            t.f62541q = c22267i;
            c22267i.m8360d(this.f62541q);
            b bVar = new b();
            t.f62542r = bVar;
            bVar.putAll(this.f62542r);
            t.f62544t = false;
            t.f62546v = false;
            return t;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: h */
    public T mo8100h(Class<?> cls) {
        if (this.f62546v) {
            return (T) clone().mo8100h(cls);
        }
        Objects.requireNonNull(cls, "Argument must not be null");
        this.f62543s = cls;
        this.f62525a |= 4096;
        m8084x();
        return this;
    }

    public int hashCode() {
        int m8018f = C22623j.m8018f(this.f62526b, 17);
        int m8017g = C22623j.m8017g(this.f62529e, (m8018f * 31) + this.f62530f);
        int m8017g2 = C22623j.m8017g(this.f62531g, (m8017g * 31) + this.f62532h);
        int m8017g3 = C22623j.m8017g(this.f62539o, (m8017g2 * 31) + this.f62540p);
        boolean z = this.f62533i;
        int i = this.f62534j;
        return C22623j.m8017g(this.f62545u, C22623j.m8017g(this.f62536l, C22623j.m8017g(this.f62543s, C22623j.m8017g(this.f62542r, C22623j.m8017g(this.f62541q, C22623j.m8017g(this.f62528d, C22623j.m8017g(this.f62527c, (((((((((((((m8017g3 * 31) + (z ? 1 : 0)) * 31) + i) * 31) + this.f62535k) * 31) + (this.f62537m ? 1 : 0)) * 31) + (this.f62538n ? 1 : 0)) * 31) + (this.f62547w ? 1 : 0)) * 31) + (this.f62548x ? 1 : 0))))))));
    }

    /* renamed from: i */
    public T mo8099i(AbstractC22364k abstractC22364k) {
        if (this.f62546v) {
            return (T) clone().mo8099i(abstractC22364k);
        }
        Objects.requireNonNull(abstractC22364k, "Argument must not be null");
        this.f62527c = abstractC22364k;
        this.f62525a |= 4;
        m8084x();
        return this;
    }

    /* renamed from: j */
    public T mo8098j(AbstractC22505m abstractC22505m) {
        C22264h c22264h = AbstractC22505m.f62381g;
        Objects.requireNonNull(abstractC22505m, "Argument must not be null");
        return mo8083y(c22264h, abstractC22505m);
    }

    /* renamed from: k */
    public T mo8097k(int i) {
        if (this.f62546v) {
            return (T) clone().mo8097k(i);
        }
        this.f62530f = i;
        int i2 = this.f62525a | 32;
        this.f62525a = i2;
        this.f62529e = null;
        this.f62525a = i2 & (-17);
        m8084x();
        return this;
    }

    /* renamed from: l */
    public T mo8096l(Drawable drawable) {
        if (this.f62546v) {
            return (T) clone().mo8096l(drawable);
        }
        this.f62529e = drawable;
        int i = this.f62525a | 16;
        this.f62525a = i;
        this.f62530f = 0;
        this.f62525a = i & (-33);
        m8084x();
        return this;
    }

    /* renamed from: m */
    public T mo8095m() {
        T m8110D = m8110D(AbstractC22505m.f62376b, new r());
        m8110D.f62549y = true;
        return m8110D;
    }

    /* renamed from: o */
    public T mo8093o() {
        this.f62544t = true;
        return this;
    }

    /* renamed from: p */
    public T mo8092p() {
        return m8089s(AbstractC22505m.f62378d, new i());
    }

    /* renamed from: q */
    public T mo8091q() {
        T m8089s = m8089s(AbstractC22505m.f62377c, new j());
        m8089s.f62549y = true;
        return m8089s;
    }

    /* renamed from: r */
    public T mo8090r() {
        T m8089s = m8089s(AbstractC22505m.f62376b, new r());
        m8089s.f62549y = true;
        return m8089s;
    }

    /* renamed from: s */
    public final T m8089s(AbstractC22505m abstractC22505m, AbstractC22271m<Bitmap> abstractC22271m) {
        if (this.f62546v) {
            return (T) clone().m8089s(abstractC22505m, abstractC22271m);
        }
        mo8098j(abstractC22505m);
        return m8111C(abstractC22271m, false);
    }

    /* renamed from: t */
    public T mo8088t(int i, int i2) {
        if (this.f62546v) {
            return (T) clone().mo8088t(i, i2);
        }
        this.f62535k = i;
        this.f62534j = i2;
        this.f62525a |= 512;
        m8084x();
        return this;
    }

    /* renamed from: u */
    public T mo8087u(int i) {
        if (this.f62546v) {
            return (T) clone().mo8087u(i);
        }
        this.f62532h = i;
        int i2 = this.f62525a | 128;
        this.f62525a = i2;
        this.f62531g = null;
        this.f62525a = i2 & (-65);
        m8084x();
        return this;
    }

    /* renamed from: v */
    public T mo8086v(Drawable drawable) {
        if (this.f62546v) {
            return (T) clone().mo8086v(drawable);
        }
        this.f62531g = drawable;
        int i = this.f62525a | 64;
        this.f62525a = i;
        this.f62532h = 0;
        this.f62525a = i & (-129);
        m8084x();
        return this;
    }

    /* renamed from: w */
    public T mo8085w(EnumC22227f enumC22227f) {
        if (this.f62546v) {
            return (T) clone().mo8085w(enumC22227f);
        }
        Objects.requireNonNull(enumC22227f, "Argument must not be null");
        this.f62528d = enumC22227f;
        this.f62525a |= 8;
        m8084x();
        return this;
    }

    /* renamed from: x */
    public final T m8084x() {
        if (!this.f62544t) {
            return this;
        }
        throw new IllegalStateException("You cannot modify locked T, consider clone()");
    }

    /* renamed from: y */
    public <Y> T mo8083y(C22264h<Y> c22264h, Y y) {
        if (this.f62546v) {
            return (T) clone().mo8083y(c22264h, y);
        }
        Objects.requireNonNull(c22264h, "Argument must not be null");
        Objects.requireNonNull(y, "Argument must not be null");
        this.f62541q.f61901b.put(c22264h, y);
        m8084x();
        return this;
    }

    /* renamed from: z */
    public T mo8082z(AbstractC22263f abstractC22263f) {
        if (this.f62546v) {
            return (T) clone().mo8082z(abstractC22263f);
        }
        Objects.requireNonNull(abstractC22263f, "Argument must not be null");
        this.f62536l = abstractC22263f;
        this.f62525a |= 1024;
        m8084x();
        return this;
    }
}
