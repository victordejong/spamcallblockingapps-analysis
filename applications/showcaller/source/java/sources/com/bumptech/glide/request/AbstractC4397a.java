package com.bumptech.glide.request;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.C4000d;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4054h;
import com.bumptech.glide.load.p214j.p218g.C4255c;
import com.bumptech.glide.load.p214j.p218g.C4259f;
import com.bumptech.glide.load.resource.bitmap.C4301i;
import com.bumptech.glide.load.resource.bitmap.C4302j;
import com.bumptech.glide.load.resource.bitmap.C4303k;
import com.bumptech.glide.load.resource.bitmap.C4309n;
import com.bumptech.glide.load.resource.bitmap.C4311p;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.p222o.C4366c;
import com.bumptech.glide.p223p.C4371b;
import com.bumptech.glide.p223p.C4382j;
import com.bumptech.glide.p223p.C4383k;
import com.bumptech.glide.request.AbstractC4397a;
import java.util.Map;
/* renamed from: com.bumptech.glide.request.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/a.class */
public abstract class AbstractC4397a<T extends AbstractC4397a<T>> implements Cloneable {

    /* renamed from: A */
    private boolean f13443A;

    /* renamed from: C */
    private boolean f13445C;

    /* renamed from: d */
    private int f13446d;

    /* renamed from: h */
    private Drawable f13450h;

    /* renamed from: i */
    private int f13451i;

    /* renamed from: j */
    private Drawable f13452j;

    /* renamed from: k */
    private int f13453k;

    /* renamed from: p */
    private boolean f13458p;

    /* renamed from: r */
    private Drawable f13460r;

    /* renamed from: s */
    private int f13461s;

    /* renamed from: w */
    private boolean f13465w;

    /* renamed from: x */
    private Resources.Theme f13466x;

    /* renamed from: y */
    private boolean f13467y;

    /* renamed from: z */
    private boolean f13468z;

    /* renamed from: e */
    private float f13447e = 1.0f;

    /* renamed from: f */
    private AbstractC4054h f13448f = AbstractC4054h.f12794e;

    /* renamed from: g */
    private Priority f13449g = Priority.NORMAL;

    /* renamed from: l */
    private boolean f13454l = true;

    /* renamed from: m */
    private int f13455m = -1;

    /* renamed from: n */
    private int f13456n = -1;

    /* renamed from: o */
    private AbstractC3999c f13457o = C4366c.m22755c();

    /* renamed from: q */
    private boolean f13459q = true;

    /* renamed from: t */
    private C4032e f13462t = new C4032e();

    /* renamed from: u */
    private Map<Class<?>, AbstractC4148h<?>> f13463u = new C4371b();

    /* renamed from: v */
    private Class<?> f13464v = Object.class;

    /* renamed from: B */
    private boolean f13444B = true;

    /* renamed from: L */
    private boolean m22646L(int i) {
        return m22645M(this.f13446d, i);
    }

    /* renamed from: M */
    private static boolean m22645M(int i, int i2) {
        return (i & i2) != 0;
    }

    /* renamed from: W */
    private T m22636W(DownsampleStrategy downsampleStrategy, AbstractC4148h<Bitmap> abstractC4148h) {
        return m22627c0(downsampleStrategy, abstractC4148h, false);
    }

    /* renamed from: c0 */
    private T m22627c0(DownsampleStrategy downsampleStrategy, AbstractC4148h<Bitmap> abstractC4148h, boolean z) {
        T m22612l0 = z ? m22612l0(downsampleStrategy, abstractC4148h) : m22635X(downsampleStrategy, abstractC4148h);
        m22612l0.f13444B = true;
        return m22612l0;
    }

    /* renamed from: d0 */
    private T m22625d0() {
        return this;
    }

    /* renamed from: A */
    public final Class<?> m22657A() {
        return this.f13464v;
    }

    /* renamed from: B */
    public final AbstractC3999c m22656B() {
        return this.f13457o;
    }

    /* renamed from: C */
    public final float m22655C() {
        return this.f13447e;
    }

    /* renamed from: D */
    public final Resources.Theme m22654D() {
        return this.f13466x;
    }

    /* renamed from: E */
    public final Map<Class<?>, AbstractC4148h<?>> m22653E() {
        return this.f13463u;
    }

    /* renamed from: F */
    public final boolean m22652F() {
        return this.f13445C;
    }

    /* renamed from: G */
    public final boolean m22651G() {
        return this.f13468z;
    }

    /* renamed from: H */
    public final boolean m22650H() {
        return this.f13467y;
    }

    /* renamed from: I */
    public final boolean m22649I() {
        return this.f13454l;
    }

    /* renamed from: J */
    public final boolean m22648J() {
        return m22646L(8);
    }

    /* renamed from: K */
    public boolean m22647K() {
        return this.f13444B;
    }

    /* renamed from: N */
    public final boolean m22644N() {
        return this.f13459q;
    }

    /* renamed from: O */
    public final boolean m22643O() {
        return this.f13458p;
    }

    /* renamed from: Q */
    public final boolean m22642Q() {
        return m22646L(2048);
    }

    /* renamed from: R */
    public final boolean m22641R() {
        return C4383k.m22699s(this.f13456n, this.f13455m);
    }

    /* renamed from: S */
    public T mo22640S() {
        this.f13465w = true;
        return m22625d0();
    }

    /* renamed from: T */
    public T mo22639T() {
        return m22635X(DownsampleStrategy.f13216e, new C4301i());
    }

    /* renamed from: U */
    public T mo22638U() {
        return m22636W(DownsampleStrategy.f13215d, new C4302j());
    }

    /* renamed from: V */
    public T mo22637V() {
        return m22636W(DownsampleStrategy.f13214c, new C4311p());
    }

    /* renamed from: X */
    final T m22635X(DownsampleStrategy downsampleStrategy, AbstractC4148h<Bitmap> abstractC4148h) {
        if (this.f13467y) {
            return (T) clone().m22635X(downsampleStrategy, abstractC4148h);
        }
        mo22616j(downsampleStrategy);
        return m22614k0(abstractC4148h, false);
    }

    /* renamed from: Y */
    public T mo22634Y(int i, int i2) {
        if (this.f13467y) {
            return (T) clone().mo22634Y(i, i2);
        }
        this.f13456n = i;
        this.f13455m = i2;
        this.f13446d |= 512;
        return m22624e0();
    }

    /* renamed from: Z */
    public T mo22633Z(int i) {
        if (this.f13467y) {
            return (T) clone().mo22633Z(i);
        }
        this.f13453k = i;
        int i2 = this.f13446d | 128;
        this.f13446d = i2;
        this.f13452j = null;
        this.f13446d = i2 & (-65);
        return m22624e0();
    }

    /* renamed from: a */
    public T mo22632a(AbstractC4397a<?> abstractC4397a) {
        if (this.f13467y) {
            return (T) clone().mo22632a(abstractC4397a);
        }
        if (m22645M(abstractC4397a.f13446d, 2)) {
            this.f13447e = abstractC4397a.f13447e;
        }
        if (m22645M(abstractC4397a.f13446d, 262144)) {
            this.f13468z = abstractC4397a.f13468z;
        }
        if (m22645M(abstractC4397a.f13446d, 1048576)) {
            this.f13445C = abstractC4397a.f13445C;
        }
        if (m22645M(abstractC4397a.f13446d, 4)) {
            this.f13448f = abstractC4397a.f13448f;
        }
        if (m22645M(abstractC4397a.f13446d, 8)) {
            this.f13449g = abstractC4397a.f13449g;
        }
        if (m22645M(abstractC4397a.f13446d, 16)) {
            this.f13450h = abstractC4397a.f13450h;
            this.f13451i = 0;
            this.f13446d &= -33;
        }
        if (m22645M(abstractC4397a.f13446d, 32)) {
            this.f13451i = abstractC4397a.f13451i;
            this.f13450h = null;
            this.f13446d &= -17;
        }
        if (m22645M(abstractC4397a.f13446d, 64)) {
            this.f13452j = abstractC4397a.f13452j;
            this.f13453k = 0;
            this.f13446d &= -129;
        }
        if (m22645M(abstractC4397a.f13446d, 128)) {
            this.f13453k = abstractC4397a.f13453k;
            this.f13452j = null;
            this.f13446d &= -65;
        }
        if (m22645M(abstractC4397a.f13446d, 256)) {
            this.f13454l = abstractC4397a.f13454l;
        }
        if (m22645M(abstractC4397a.f13446d, 512)) {
            this.f13456n = abstractC4397a.f13456n;
            this.f13455m = abstractC4397a.f13455m;
        }
        if (m22645M(abstractC4397a.f13446d, 1024)) {
            this.f13457o = abstractC4397a.f13457o;
        }
        if (m22645M(abstractC4397a.f13446d, 4096)) {
            this.f13464v = abstractC4397a.f13464v;
        }
        if (m22645M(abstractC4397a.f13446d, 8192)) {
            this.f13460r = abstractC4397a.f13460r;
            this.f13461s = 0;
            this.f13446d &= -16385;
        }
        if (m22645M(abstractC4397a.f13446d, 16384)) {
            this.f13461s = abstractC4397a.f13461s;
            this.f13460r = null;
            this.f13446d &= -8193;
        }
        if (m22645M(abstractC4397a.f13446d, 32768)) {
            this.f13466x = abstractC4397a.f13466x;
        }
        if (m22645M(abstractC4397a.f13446d, 65536)) {
            this.f13459q = abstractC4397a.f13459q;
        }
        if (m22645M(abstractC4397a.f13446d, 131072)) {
            this.f13458p = abstractC4397a.f13458p;
        }
        if (m22645M(abstractC4397a.f13446d, 2048)) {
            this.f13463u.putAll(abstractC4397a.f13463u);
            this.f13444B = abstractC4397a.f13444B;
        }
        if (m22645M(abstractC4397a.f13446d, 524288)) {
            this.f13443A = abstractC4397a.f13443A;
        }
        if (!this.f13459q) {
            this.f13463u.clear();
            int i = this.f13446d & (-2049);
            this.f13446d = i;
            this.f13458p = false;
            this.f13446d = i & (-131073);
            this.f13444B = true;
        }
        this.f13446d |= abstractC4397a.f13446d;
        this.f13462t.m23456d(abstractC4397a.f13462t);
        return m22624e0();
    }

    /* renamed from: a0 */
    public T mo22631a0(Drawable drawable) {
        if (this.f13467y) {
            return (T) clone().mo22631a0(drawable);
        }
        this.f13452j = drawable;
        int i = this.f13446d | 64;
        this.f13446d = i;
        this.f13453k = 0;
        this.f13446d = i & (-129);
        return m22624e0();
    }

    /* renamed from: b */
    public T mo22630b() {
        if (!this.f13465w || this.f13467y) {
            this.f13467y = true;
            return mo22640S();
        }
        throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }

    /* renamed from: b0 */
    public T mo22629b0(Priority priority) {
        if (this.f13467y) {
            return (T) clone().mo22629b0(priority);
        }
        this.f13449g = (Priority) C4382j.m22719d(priority);
        this.f13446d |= 8;
        return m22624e0();
    }

    /* renamed from: c */
    public T mo22628c() {
        return m22612l0(DownsampleStrategy.f13216e, new C4301i());
    }

    /* renamed from: d */
    public T m22626d() {
        return m22612l0(DownsampleStrategy.f13215d, new C4303k());
    }

    /* renamed from: e0 */
    public final T m22624e0() {
        if (!this.f13465w) {
            return m22625d0();
        }
        throw new IllegalStateException("You cannot modify locked T, consider clone()");
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof AbstractC4397a) {
            AbstractC4397a abstractC4397a = (AbstractC4397a) obj;
            z = false;
            if (Float.compare(abstractC4397a.f13447e, this.f13447e) == 0) {
                z = false;
                if (this.f13451i == abstractC4397a.f13451i) {
                    z = false;
                    if (C4383k.m22715c(this.f13450h, abstractC4397a.f13450h)) {
                        z = false;
                        if (this.f13453k == abstractC4397a.f13453k) {
                            z = false;
                            if (C4383k.m22715c(this.f13452j, abstractC4397a.f13452j)) {
                                z = false;
                                if (this.f13461s == abstractC4397a.f13461s) {
                                    z = false;
                                    if (C4383k.m22715c(this.f13460r, abstractC4397a.f13460r)) {
                                        z = false;
                                        if (this.f13454l == abstractC4397a.f13454l) {
                                            z = false;
                                            if (this.f13455m == abstractC4397a.f13455m) {
                                                z = false;
                                                if (this.f13456n == abstractC4397a.f13456n) {
                                                    z = false;
                                                    if (this.f13458p == abstractC4397a.f13458p) {
                                                        z = false;
                                                        if (this.f13459q == abstractC4397a.f13459q) {
                                                            z = false;
                                                            if (this.f13468z == abstractC4397a.f13468z) {
                                                                z = false;
                                                                if (this.f13443A == abstractC4397a.f13443A) {
                                                                    z = false;
                                                                    if (this.f13448f.equals(abstractC4397a.f13448f)) {
                                                                        z = false;
                                                                        if (this.f13449g == abstractC4397a.f13449g) {
                                                                            z = false;
                                                                            if (this.f13462t.equals(abstractC4397a.f13462t)) {
                                                                                z = false;
                                                                                if (this.f13463u.equals(abstractC4397a.f13463u)) {
                                                                                    z = false;
                                                                                    if (this.f13464v.equals(abstractC4397a.f13464v)) {
                                                                                        z = false;
                                                                                        if (C4383k.m22715c(this.f13457o, abstractC4397a.f13457o)) {
                                                                                            z = false;
                                                                                            if (C4383k.m22715c(this.f13466x, abstractC4397a.f13466x)) {
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

    /* renamed from: f0 */
    public <Y> T mo22623f0(C4000d<Y> c4000d, Y y) {
        if (this.f13467y) {
            return (T) clone().mo22623f0(c4000d, y);
        }
        C4382j.m22719d(c4000d);
        C4382j.m22719d(y);
        this.f13462t.m23455e(c4000d, y);
        return m22624e0();
    }

    /* renamed from: g */
    public T clone() {
        try {
            T t = (T) super.clone();
            C4032e c4032e = new C4032e();
            t.f13462t = c4032e;
            c4032e.m23456d(this.f13462t);
            C4371b c4371b = new C4371b();
            t.f13463u = c4371b;
            c4371b.putAll(this.f13463u);
            t.f13465w = false;
            t.f13467y = false;
            return t;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: g0 */
    public T mo22621g0(AbstractC3999c abstractC3999c) {
        if (this.f13467y) {
            return (T) clone().mo22621g0(abstractC3999c);
        }
        this.f13457o = (AbstractC3999c) C4382j.m22719d(abstractC3999c);
        this.f13446d |= 1024;
        return m22624e0();
    }

    /* renamed from: h */
    public T mo22620h(Class<?> cls) {
        if (this.f13467y) {
            return (T) clone().mo22620h(cls);
        }
        this.f13464v = (Class) C4382j.m22719d(cls);
        this.f13446d |= 4096;
        return m22624e0();
    }

    /* renamed from: h0 */
    public T mo22619h0(float f) {
        if (this.f13467y) {
            return (T) clone().mo22619h0(f);
        }
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f13447e = f;
        this.f13446d |= 2;
        return m22624e0();
    }

    public int hashCode() {
        return C4383k.m22704n(this.f13466x, C4383k.m22704n(this.f13457o, C4383k.m22704n(this.f13464v, C4383k.m22704n(this.f13463u, C4383k.m22704n(this.f13462t, C4383k.m22704n(this.f13449g, C4383k.m22704n(this.f13448f, C4383k.m22703o(this.f13443A, C4383k.m22703o(this.f13468z, C4383k.m22703o(this.f13459q, C4383k.m22703o(this.f13458p, C4383k.m22705m(this.f13456n, C4383k.m22705m(this.f13455m, C4383k.m22703o(this.f13454l, C4383k.m22704n(this.f13460r, C4383k.m22705m(this.f13461s, C4383k.m22704n(this.f13452j, C4383k.m22705m(this.f13453k, C4383k.m22704n(this.f13450h, C4383k.m22705m(this.f13451i, C4383k.m22707k(this.f13447e)))))))))))))))))))));
    }

    /* renamed from: i */
    public T mo22618i(AbstractC4054h abstractC4054h) {
        if (this.f13467y) {
            return (T) clone().mo22618i(abstractC4054h);
        }
        this.f13448f = (AbstractC4054h) C4382j.m22719d(abstractC4054h);
        this.f13446d |= 4;
        return m22624e0();
    }

    /* renamed from: i0 */
    public T mo22617i0(boolean z) {
        if (this.f13467y) {
            return (T) clone().mo22617i0(true);
        }
        this.f13454l = !z;
        this.f13446d |= 256;
        return m22624e0();
    }

    /* renamed from: j */
    public T mo22616j(DownsampleStrategy downsampleStrategy) {
        return mo22623f0(DownsampleStrategy.f13219h, C4382j.m22719d(downsampleStrategy));
    }

    /* renamed from: j0 */
    public T mo22615j0(AbstractC4148h<Bitmap> abstractC4148h) {
        return m22614k0(abstractC4148h, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: k0 */
    T m22614k0(AbstractC4148h<Bitmap> abstractC4148h, boolean z) {
        if (this.f13467y) {
            return (T) clone().m22614k0(abstractC4148h, z);
        }
        C4309n c4309n = new C4309n(abstractC4148h, z);
        m22610m0(Bitmap.class, abstractC4148h, z);
        m22610m0(Drawable.class, c4309n, z);
        m22610m0(BitmapDrawable.class, c4309n.m22909c(), z);
        m22610m0(C4255c.class, new C4259f(abstractC4148h), z);
        return m22624e0();
    }

    /* renamed from: l */
    public T mo22613l(int i) {
        if (this.f13467y) {
            return (T) clone().mo22613l(i);
        }
        this.f13451i = i;
        int i2 = this.f13446d | 32;
        this.f13446d = i2;
        this.f13450h = null;
        this.f13446d = i2 & (-17);
        return m22624e0();
    }

    /* renamed from: l0 */
    final T m22612l0(DownsampleStrategy downsampleStrategy, AbstractC4148h<Bitmap> abstractC4148h) {
        if (this.f13467y) {
            return (T) clone().m22612l0(downsampleStrategy, abstractC4148h);
        }
        mo22616j(downsampleStrategy);
        return mo22615j0(abstractC4148h);
    }

    /* renamed from: m */
    public final AbstractC4054h m22611m() {
        return this.f13448f;
    }

    /* renamed from: m0 */
    <Y> T m22610m0(Class<Y> cls, AbstractC4148h<Y> abstractC4148h, boolean z) {
        if (this.f13467y) {
            return (T) clone().m22610m0(cls, abstractC4148h, z);
        }
        C4382j.m22719d(cls);
        C4382j.m22719d(abstractC4148h);
        this.f13463u.put(cls, abstractC4148h);
        int i = this.f13446d | 2048;
        this.f13446d = i;
        this.f13459q = true;
        int i2 = i | 65536;
        this.f13446d = i2;
        this.f13444B = false;
        if (z) {
            this.f13446d = i2 | 131072;
            this.f13458p = true;
        }
        return m22624e0();
    }

    /* renamed from: n */
    public final int m22609n() {
        return this.f13451i;
    }

    /* renamed from: n0 */
    public T mo22608n0(boolean z) {
        if (this.f13467y) {
            return (T) clone().mo22608n0(z);
        }
        this.f13445C = z;
        this.f13446d |= 1048576;
        return m22624e0();
    }

    /* renamed from: o */
    public final Drawable m22607o() {
        return this.f13450h;
    }

    /* renamed from: p */
    public final Drawable m22606p() {
        return this.f13460r;
    }

    /* renamed from: q */
    public final int m22605q() {
        return this.f13461s;
    }

    /* renamed from: r */
    public final boolean m22604r() {
        return this.f13443A;
    }

    /* renamed from: s */
    public final C4032e m22603s() {
        return this.f13462t;
    }

    /* renamed from: t */
    public final int m22602t() {
        return this.f13455m;
    }

    /* renamed from: v */
    public final int m22601v() {
        return this.f13456n;
    }

    /* renamed from: w */
    public final Drawable m22600w() {
        return this.f13452j;
    }

    /* renamed from: x */
    public final int m22599x() {
        return this.f13453k;
    }

    /* renamed from: y */
    public final Priority m22598y() {
        return this.f13449g;
    }
}
