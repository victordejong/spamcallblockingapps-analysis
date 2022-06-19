package com.bumptech.glide.p073f;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.AbstractC1784k;
import com.bumptech.glide.load.C1778g;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.AbstractC1745i;
import com.bumptech.glide.load.p083c.p084a.AbstractC1594k;
import com.bumptech.glide.load.p083c.p084a.C1586g;
import com.bumptech.glide.load.p083c.p084a.C1587h;
import com.bumptech.glide.load.p083c.p084a.C1588i;
import com.bumptech.glide.load.p083c.p084a.C1607n;
import com.bumptech.glide.load.p083c.p084a.C1609p;
import com.bumptech.glide.load.p083c.p088e.C1643c;
import com.bumptech.glide.load.p083c.p088e.C1647f;
import com.bumptech.glide.p076g.C1430b;
import com.bumptech.glide.p077h.C1449b;
import com.bumptech.glide.p077h.C1456i;
import com.bumptech.glide.p077h.C1457j;
import java.util.Map;
/* renamed from: com.bumptech.glide.f.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/e.class */
public class C1422e implements Cloneable {

    /* renamed from: a */
    private static C1422e f4650a;

    /* renamed from: A */
    private boolean f4651A;

    /* renamed from: b */
    private int f4652b;

    /* renamed from: f */
    private Drawable f4656f;

    /* renamed from: g */
    private int f4657g;

    /* renamed from: h */
    private Drawable f4658h;

    /* renamed from: i */
    private int f4659i;

    /* renamed from: n */
    private boolean f4664n;

    /* renamed from: p */
    private Drawable f4666p;

    /* renamed from: q */
    private int f4667q;

    /* renamed from: u */
    private boolean f4671u;

    /* renamed from: v */
    private Resources.Theme f4672v;

    /* renamed from: w */
    private boolean f4673w;

    /* renamed from: x */
    private boolean f4674x;

    /* renamed from: y */
    private boolean f4675y;

    /* renamed from: c */
    private float f4653c = 1.0f;

    /* renamed from: d */
    private AbstractC1745i f4654d = AbstractC1745i.f5305e;

    /* renamed from: e */
    private EnumC1428g f4655e = EnumC1428g.NORMAL;

    /* renamed from: j */
    private boolean f4660j = true;

    /* renamed from: k */
    private int f4661k = -1;

    /* renamed from: l */
    private int f4662l = -1;

    /* renamed from: m */
    private AbstractC1777f f4663m = C1430b.m17053a();

    /* renamed from: o */
    private boolean f4665o = true;

    /* renamed from: r */
    private C1781h f4668r = new C1781h();

    /* renamed from: s */
    private Map<Class<?>, AbstractC1784k<?>> f4669s = new C1449b();

    /* renamed from: t */
    private Class<?> f4670t = Object.class;

    /* renamed from: z */
    private boolean f4676z = true;

    /* renamed from: I */
    private C1422e m17152I() {
        if (this.f4671u) {
            throw new IllegalStateException("You cannot modify locked RequestOptions, consider clone()");
        }
        return this;
    }

    /* renamed from: a */
    public static C1422e m17151a() {
        if (f4650a == null) {
            f4650a = new C1422e().m17121h().m17119j();
        }
        return f4650a;
    }

    /* renamed from: a */
    private C1422e m17143a(AbstractC1594k abstractC1594k, AbstractC1784k<Bitmap> abstractC1784k, boolean z) {
        C1422e m17132b = z ? m17132b(abstractC1594k, abstractC1784k) : m17144a(abstractC1594k, abstractC1784k);
        m17132b.f4676z = true;
        return m17132b;
    }

    /* renamed from: a */
    public static C1422e m17142a(AbstractC1745i abstractC1745i) {
        return new C1422e().m17131b(abstractC1745i);
    }

    /* renamed from: a */
    public static C1422e m17141a(AbstractC1777f abstractC1777f) {
        return new C1422e().m17130b(abstractC1777f);
    }

    /* renamed from: a */
    private C1422e m17138a(AbstractC1784k<Bitmap> abstractC1784k, boolean z) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17138a(abstractC1784k, z);
        } else {
            C1607n c1607n = new C1607n(abstractC1784k, z);
            m17136a(Bitmap.class, abstractC1784k, z);
            m17136a(Drawable.class, c1607n, z);
            m17136a(BitmapDrawable.class, c1607n.m16749a(), z);
            m17136a(C1643c.class, new C1647f(abstractC1784k), z);
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: a */
    public static C1422e m17137a(Class<?> cls) {
        return new C1422e().m17129b(cls);
    }

    /* renamed from: a */
    private <T> C1422e m17136a(Class<T> cls, AbstractC1784k<T> abstractC1784k, boolean z) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17136a(cls, abstractC1784k, z);
        } else {
            C1456i.m16989a(cls);
            C1456i.m16989a(abstractC1784k);
            this.f4669s.put(cls, abstractC1784k);
            this.f4652b |= 2048;
            this.f4665o = true;
            this.f4652b |= 65536;
            this.f4676z = false;
            if (z) {
                this.f4652b |= 131072;
                this.f4664n = true;
            }
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: a */
    private boolean m17149a(int i) {
        return m17133b(this.f4652b, i);
    }

    /* renamed from: b */
    private static boolean m17133b(int i, int i2) {
        return (i & i2) != 0;
    }

    /* renamed from: c */
    private C1422e m17126c(AbstractC1594k abstractC1594k, AbstractC1784k<Bitmap> abstractC1784k) {
        return m17143a(abstractC1594k, abstractC1784k, false);
    }

    /* renamed from: A */
    public final int m17160A() {
        return this.f4662l;
    }

    /* renamed from: B */
    public final boolean m17159B() {
        return C1457j.m16980a(this.f4662l, this.f4661k);
    }

    /* renamed from: C */
    public final int m17158C() {
        return this.f4661k;
    }

    /* renamed from: D */
    public final float m17157D() {
        return this.f4653c;
    }

    /* renamed from: E */
    public boolean m17156E() {
        return this.f4676z;
    }

    /* renamed from: F */
    public final boolean m17155F() {
        return this.f4674x;
    }

    /* renamed from: G */
    public final boolean m17154G() {
        return this.f4651A;
    }

    /* renamed from: H */
    public final boolean m17153H() {
        return this.f4675y;
    }

    /* renamed from: a */
    public C1422e m17150a(float f) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17150a(f);
        } else if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        } else {
            this.f4653c = f;
            this.f4652b |= 2;
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: a */
    public C1422e m17148a(int i, int i2) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17148a(i, i2);
        } else {
            this.f4662l = i;
            this.f4661k = i2;
            this.f4652b |= 512;
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: a */
    public C1422e m17147a(C1422e c1422e) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17147a(c1422e);
        } else {
            if (m17133b(c1422e.f4652b, 2)) {
                this.f4653c = c1422e.f4653c;
            }
            if (m17133b(c1422e.f4652b, 262144)) {
                this.f4674x = c1422e.f4674x;
            }
            if (m17133b(c1422e.f4652b, 1048576)) {
                this.f4651A = c1422e.f4651A;
            }
            if (m17133b(c1422e.f4652b, 4)) {
                this.f4654d = c1422e.f4654d;
            }
            if (m17133b(c1422e.f4652b, 8)) {
                this.f4655e = c1422e.f4655e;
            }
            if (m17133b(c1422e.f4652b, 16)) {
                this.f4656f = c1422e.f4656f;
                this.f4657g = 0;
                this.f4652b &= -33;
            }
            if (m17133b(c1422e.f4652b, 32)) {
                this.f4657g = c1422e.f4657g;
                this.f4656f = null;
                this.f4652b &= -17;
            }
            if (m17133b(c1422e.f4652b, 64)) {
                this.f4658h = c1422e.f4658h;
                this.f4659i = 0;
                this.f4652b &= -129;
            }
            if (m17133b(c1422e.f4652b, 128)) {
                this.f4659i = c1422e.f4659i;
                this.f4658h = null;
                this.f4652b &= -65;
            }
            if (m17133b(c1422e.f4652b, 256)) {
                this.f4660j = c1422e.f4660j;
            }
            if (m17133b(c1422e.f4652b, 512)) {
                this.f4662l = c1422e.f4662l;
                this.f4661k = c1422e.f4661k;
            }
            if (m17133b(c1422e.f4652b, 1024)) {
                this.f4663m = c1422e.f4663m;
            }
            if (m17133b(c1422e.f4652b, 4096)) {
                this.f4670t = c1422e.f4670t;
            }
            if (m17133b(c1422e.f4652b, 8192)) {
                this.f4666p = c1422e.f4666p;
                this.f4667q = 0;
                this.f4652b &= -16385;
            }
            if (m17133b(c1422e.f4652b, 16384)) {
                this.f4667q = c1422e.f4667q;
                this.f4666p = null;
                this.f4652b &= -8193;
            }
            if (m17133b(c1422e.f4652b, 32768)) {
                this.f4672v = c1422e.f4672v;
            }
            if (m17133b(c1422e.f4652b, 65536)) {
                this.f4665o = c1422e.f4665o;
            }
            if (m17133b(c1422e.f4652b, 131072)) {
                this.f4664n = c1422e.f4664n;
            }
            if (m17133b(c1422e.f4652b, 2048)) {
                this.f4669s.putAll(c1422e.f4669s);
                this.f4676z = c1422e.f4676z;
            }
            if (m17133b(c1422e.f4652b, 524288)) {
                this.f4675y = c1422e.f4675y;
            }
            if (!this.f4665o) {
                this.f4669s.clear();
                this.f4652b &= -2049;
                this.f4664n = false;
                this.f4652b &= -131073;
                this.f4676z = true;
            }
            this.f4652b |= c1422e.f4652b;
            this.f4668r.m16321a(c1422e.f4668r);
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: a */
    public C1422e m17146a(EnumC1428g enumC1428g) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17146a(enumC1428g);
        } else {
            this.f4655e = (EnumC1428g) C1456i.m16989a(enumC1428g);
            this.f4652b |= 8;
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: a */
    public C1422e m17145a(AbstractC1594k abstractC1594k) {
        return m17140a((C1778g<C1778g<AbstractC1594k>>) AbstractC1594k.f4975h, (C1778g<AbstractC1594k>) C1456i.m16989a(abstractC1594k));
    }

    /* renamed from: a */
    final C1422e m17144a(AbstractC1594k abstractC1594k, AbstractC1784k<Bitmap> abstractC1784k) {
        C1422e m17138a;
        if (this.f4673w) {
            m17138a = clone().m17144a(abstractC1594k, abstractC1784k);
        } else {
            m17145a(abstractC1594k);
            m17138a = m17138a(abstractC1784k, false);
        }
        return m17138a;
    }

    /* renamed from: a */
    public <T> C1422e m17140a(C1778g<T> c1778g, T t) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17140a((C1778g<C1778g<T>>) c1778g, (C1778g<T>) t);
        } else {
            C1456i.m16989a(c1778g);
            C1456i.m16989a(t);
            this.f4668r.m16323a(c1778g, t);
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: a */
    public C1422e m17139a(AbstractC1784k<Bitmap> abstractC1784k) {
        return m17138a(abstractC1784k, true);
    }

    /* renamed from: a */
    public C1422e m17135a(boolean z) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17135a(z);
        } else {
            this.f4651A = z;
            this.f4652b |= 1048576;
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: b */
    public C1422e clone() {
        try {
            C1422e c1422e = (C1422e) super.clone();
            c1422e.f4668r = new C1781h();
            c1422e.f4668r.m16321a(this.f4668r);
            c1422e.f4669s = new C1449b();
            c1422e.f4669s.putAll(this.f4669s);
            c1422e.f4671u = false;
            c1422e.f4673w = false;
            return c1422e;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    final C1422e m17132b(AbstractC1594k abstractC1594k, AbstractC1784k<Bitmap> abstractC1784k) {
        C1422e m17139a;
        if (this.f4673w) {
            m17139a = clone().m17132b(abstractC1594k, abstractC1784k);
        } else {
            m17145a(abstractC1594k);
            m17139a = m17139a(abstractC1784k);
        }
        return m17139a;
    }

    /* renamed from: b */
    public C1422e m17131b(AbstractC1745i abstractC1745i) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17131b(abstractC1745i);
        } else {
            this.f4654d = (AbstractC1745i) C1456i.m16989a(abstractC1745i);
            this.f4652b |= 4;
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: b */
    public C1422e m17130b(AbstractC1777f abstractC1777f) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17130b(abstractC1777f);
        } else {
            this.f4663m = (AbstractC1777f) C1456i.m16989a(abstractC1777f);
            this.f4652b |= 1024;
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: b */
    public C1422e m17129b(Class<?> cls) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17129b(cls);
        } else {
            this.f4670t = (Class) C1456i.m16989a(cls);
            this.f4652b |= 4096;
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: b */
    public C1422e m17128b(boolean z) {
        C1422e m17152I;
        if (this.f4673w) {
            m17152I = clone().m17128b(true);
        } else {
            this.f4660j = !z;
            this.f4652b |= 256;
            m17152I = m17152I();
        }
        return m17152I;
    }

    /* renamed from: c */
    public final boolean m17127c() {
        return this.f4665o;
    }

    /* renamed from: d */
    public final boolean m17125d() {
        return m17149a(2048);
    }

    /* renamed from: e */
    public C1422e m17124e() {
        return m17144a(AbstractC1594k.f4969b, new C1586g());
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C1422e) {
            C1422e c1422e = (C1422e) obj;
            z = false;
            if (Float.compare(c1422e.f4653c, this.f4653c) == 0) {
                z = false;
                if (this.f4657g == c1422e.f4657g) {
                    z = false;
                    if (C1457j.m16975a(this.f4656f, c1422e.f4656f)) {
                        z = false;
                        if (this.f4659i == c1422e.f4659i) {
                            z = false;
                            if (C1457j.m16975a(this.f4658h, c1422e.f4658h)) {
                                z = false;
                                if (this.f4667q == c1422e.f4667q) {
                                    z = false;
                                    if (C1457j.m16975a(this.f4666p, c1422e.f4666p)) {
                                        z = false;
                                        if (this.f4660j == c1422e.f4660j) {
                                            z = false;
                                            if (this.f4661k == c1422e.f4661k) {
                                                z = false;
                                                if (this.f4662l == c1422e.f4662l) {
                                                    z = false;
                                                    if (this.f4664n == c1422e.f4664n) {
                                                        z = false;
                                                        if (this.f4665o == c1422e.f4665o) {
                                                            z = false;
                                                            if (this.f4674x == c1422e.f4674x) {
                                                                z = false;
                                                                if (this.f4675y == c1422e.f4675y) {
                                                                    z = false;
                                                                    if (this.f4654d.equals(c1422e.f4654d)) {
                                                                        z = false;
                                                                        if (this.f4655e == c1422e.f4655e) {
                                                                            z = false;
                                                                            if (this.f4668r.equals(c1422e.f4668r)) {
                                                                                z = false;
                                                                                if (this.f4669s.equals(c1422e.f4669s)) {
                                                                                    z = false;
                                                                                    if (this.f4670t.equals(c1422e.f4670t)) {
                                                                                        z = false;
                                                                                        if (C1457j.m16975a(this.f4663m, c1422e.f4663m)) {
                                                                                            z = false;
                                                                                            if (C1457j.m16975a(this.f4672v, c1422e.f4672v)) {
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
    public C1422e m17123f() {
        return m17126c(AbstractC1594k.f4968a, new C1609p());
    }

    /* renamed from: g */
    public C1422e m17122g() {
        return m17126c(AbstractC1594k.f4972e, new C1587h());
    }

    /* renamed from: h */
    public C1422e m17121h() {
        return m17132b(AbstractC1594k.f4972e, new C1588i());
    }

    public int hashCode() {
        return C1457j.m16976a(this.f4672v, C1457j.m16976a(this.f4663m, C1457j.m16976a(this.f4670t, C1457j.m16976a(this.f4669s, C1457j.m16976a(this.f4668r, C1457j.m16976a(this.f4655e, C1457j.m16976a(this.f4654d, C1457j.m16973a(this.f4675y, C1457j.m16973a(this.f4674x, C1457j.m16973a(this.f4665o, C1457j.m16973a(this.f4664n, C1457j.m16968b(this.f4662l, C1457j.m16968b(this.f4661k, C1457j.m16973a(this.f4660j, C1457j.m16976a(this.f4666p, C1457j.m16968b(this.f4667q, C1457j.m16976a(this.f4658h, C1457j.m16968b(this.f4659i, C1457j.m16976a(this.f4656f, C1457j.m16968b(this.f4657g, C1457j.m16983a(this.f4653c)))))))))))))))))))));
    }

    /* renamed from: i */
    public C1422e m17120i() {
        this.f4671u = true;
        return this;
    }

    /* renamed from: j */
    public C1422e m17119j() {
        if (!this.f4671u || this.f4673w) {
            this.f4673w = true;
            return m17120i();
        }
        throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }

    /* renamed from: k */
    public final Map<Class<?>, AbstractC1784k<?>> m17118k() {
        return this.f4669s;
    }

    /* renamed from: l */
    public final boolean m17117l() {
        return this.f4664n;
    }

    /* renamed from: m */
    public final C1781h m17116m() {
        return this.f4668r;
    }

    /* renamed from: n */
    public final Class<?> m17115n() {
        return this.f4670t;
    }

    /* renamed from: o */
    public final AbstractC1745i m17114o() {
        return this.f4654d;
    }

    /* renamed from: p */
    public final Drawable m17113p() {
        return this.f4656f;
    }

    /* renamed from: q */
    public final int m17112q() {
        return this.f4657g;
    }

    /* renamed from: r */
    public final int m17111r() {
        return this.f4659i;
    }

    /* renamed from: s */
    public final Drawable m17110s() {
        return this.f4658h;
    }

    /* renamed from: t */
    public final int m17109t() {
        return this.f4667q;
    }

    /* renamed from: u */
    public final Drawable m17108u() {
        return this.f4666p;
    }

    /* renamed from: v */
    public final Resources.Theme m17107v() {
        return this.f4672v;
    }

    /* renamed from: w */
    public final boolean m17106w() {
        return this.f4660j;
    }

    /* renamed from: x */
    public final AbstractC1777f m17105x() {
        return this.f4663m;
    }

    /* renamed from: y */
    public final boolean m17104y() {
        return m17149a(8);
    }

    /* renamed from: z */
    public final EnumC1428g m17103z() {
        return this.f4655e;
    }
}
