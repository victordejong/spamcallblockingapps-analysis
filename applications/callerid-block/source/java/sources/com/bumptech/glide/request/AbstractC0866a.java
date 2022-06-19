package com.bumptech.glide.request;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.AbstractC0732c;
import com.bumptech.glide.load.C0733d;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.AbstractC0758h;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j.g.c;
import com.bumptech.glide.load.j.g.f;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.i;
import com.bumptech.glide.load.resource.bitmap.j;
import com.bumptech.glide.load.resource.bitmap.k;
import com.bumptech.glide.load.resource.bitmap.n;
import com.bumptech.glide.load.resource.bitmap.p;
import com.bumptech.glide.n.a;
import com.bumptech.glide.o.b;
import com.bumptech.glide.p029o.C0856j;
import com.bumptech.glide.p029o.C0857k;
import com.bumptech.glide.request.AbstractC0866a;
import java.util.Map;
/* renamed from: com.bumptech.glide.request.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/a.class */
public abstract class AbstractC0866a<T extends AbstractC0866a<T>> implements Cloneable {

    /* renamed from: A */
    private boolean f3846A;

    /* renamed from: b */
    private int f3847b;

    /* renamed from: f */
    private Drawable f3851f;

    /* renamed from: g */
    private int f3852g;

    /* renamed from: h */
    private Drawable f3853h;

    /* renamed from: i */
    private int f3854i;

    /* renamed from: n */
    private boolean f3859n;

    /* renamed from: p */
    private Drawable f3861p;

    /* renamed from: q */
    private int f3862q;

    /* renamed from: u */
    private boolean f3866u;

    /* renamed from: v */
    private Resources.Theme f3867v;

    /* renamed from: w */
    private boolean f3868w;

    /* renamed from: x */
    private boolean f3869x;

    /* renamed from: y */
    private boolean f3870y;

    /* renamed from: c */
    private float f3848c = 1.0f;

    /* renamed from: d */
    private AbstractC0758h f3849d = AbstractC0758h.f3589c;

    /* renamed from: e */
    private Priority f3850e = Priority.NORMAL;

    /* renamed from: j */
    private boolean f3855j = true;

    /* renamed from: k */
    private int f3856k = -1;

    /* renamed from: l */
    private int f3857l = -1;

    /* renamed from: m */
    private AbstractC0732c f3858m = a.c();

    /* renamed from: o */
    private boolean f3860o = true;

    /* renamed from: r */
    private e f3863r = new e();

    /* renamed from: s */
    private Map<Class<?>, h<?>> f3864s = new b();

    /* renamed from: t */
    private Class<?> f3865t = Object.class;

    /* renamed from: z */
    private boolean f3871z = true;

    /* renamed from: M */
    private boolean m10704M(int i) {
        return m10703N(this.f3847b, i);
    }

    /* renamed from: N */
    private static boolean m10703N(int i, int i2) {
        return (i & i2) != 0;
    }

    /* renamed from: Y */
    private T m10694Y(DownsampleStrategy downsampleStrategy, h<Bitmap> hVar) {
        return m10686d0(downsampleStrategy, hVar, false);
    }

    /* renamed from: d0 */
    private T m10686d0(DownsampleStrategy downsampleStrategy, h<Bitmap> hVar, boolean z) {
        T m10668m0 = z ? m10668m0(downsampleStrategy, hVar) : m10693Z(downsampleStrategy, hVar);
        m10668m0.f3871z = true;
        return m10668m0;
    }

    /* renamed from: e0 */
    private T m10684e0() {
        return this;
    }

    /* renamed from: A */
    public final Resources.Theme m10712A() {
        return this.f3867v;
    }

    /* renamed from: D */
    public final Map<Class<?>, h<?>> m10711D() {
        return this.f3864s;
    }

    /* renamed from: E */
    public final boolean m10710E() {
        return this.f3846A;
    }

    /* renamed from: G */
    public final boolean m10709G() {
        return this.f3869x;
    }

    /* renamed from: H */
    protected final boolean m10708H() {
        return this.f3868w;
    }

    /* renamed from: I */
    public final boolean m10707I() {
        return this.f3855j;
    }

    /* renamed from: J */
    public final boolean m10706J() {
        return m10704M(8);
    }

    /* renamed from: L */
    boolean m10705L() {
        return this.f3871z;
    }

    /* renamed from: P */
    public final boolean m10702P() {
        return this.f3860o;
    }

    /* renamed from: Q */
    public final boolean m10701Q() {
        return this.f3859n;
    }

    /* renamed from: R */
    public final boolean m10700R() {
        return m10704M(2048);
    }

    /* renamed from: S */
    public final boolean m10699S() {
        return C0857k.m10739s(this.f3857l, this.f3856k);
    }

    /* renamed from: T */
    public T m10698T() {
        this.f3866u = true;
        m10684e0();
        return this;
    }

    /* renamed from: V */
    public T m10697V() {
        return m10693Z(DownsampleStrategy.f3726c, new i());
    }

    /* renamed from: W */
    public T m10696W() {
        return m10694Y(DownsampleStrategy.f3725b, new j());
    }

    /* renamed from: X */
    public T m10695X() {
        return m10694Y(DownsampleStrategy.f3724a, new p());
    }

    /* renamed from: Z */
    final T m10693Z(DownsampleStrategy downsampleStrategy, h<Bitmap> hVar) {
        if (this.f3868w) {
            return (T) clone().m10693Z(downsampleStrategy, hVar);
        }
        m10679h(downsampleStrategy);
        return m10670l0(hVar, false);
    }

    /* renamed from: a0 */
    public T m10692a0(int i, int i2) {
        if (this.f3868w) {
            return (T) clone().m10692a0(i, i2);
        }
        this.f3857l = i;
        this.f3856k = i2;
        this.f3847b |= 512;
        m10682f0();
        return this;
    }

    /* renamed from: b */
    public T m10691b(AbstractC0866a<?> abstractC0866a) {
        if (this.f3868w) {
            return (T) clone().m10691b(abstractC0866a);
        }
        if (m10703N(abstractC0866a.f3847b, 2)) {
            this.f3848c = abstractC0866a.f3848c;
        }
        if (m10703N(abstractC0866a.f3847b, 262144)) {
            this.f3869x = abstractC0866a.f3869x;
        }
        if (m10703N(abstractC0866a.f3847b, 1048576)) {
            this.f3846A = abstractC0866a.f3846A;
        }
        if (m10703N(abstractC0866a.f3847b, 4)) {
            this.f3849d = abstractC0866a.f3849d;
        }
        if (m10703N(abstractC0866a.f3847b, 8)) {
            this.f3850e = abstractC0866a.f3850e;
        }
        if (m10703N(abstractC0866a.f3847b, 16)) {
            this.f3851f = abstractC0866a.f3851f;
            this.f3852g = 0;
            this.f3847b &= -33;
        }
        if (m10703N(abstractC0866a.f3847b, 32)) {
            this.f3852g = abstractC0866a.f3852g;
            this.f3851f = null;
            this.f3847b &= -17;
        }
        if (m10703N(abstractC0866a.f3847b, 64)) {
            this.f3853h = abstractC0866a.f3853h;
            this.f3854i = 0;
            this.f3847b &= -129;
        }
        if (m10703N(abstractC0866a.f3847b, 128)) {
            this.f3854i = abstractC0866a.f3854i;
            this.f3853h = null;
            this.f3847b &= -65;
        }
        if (m10703N(abstractC0866a.f3847b, 256)) {
            this.f3855j = abstractC0866a.f3855j;
        }
        if (m10703N(abstractC0866a.f3847b, 512)) {
            this.f3857l = abstractC0866a.f3857l;
            this.f3856k = abstractC0866a.f3856k;
        }
        if (m10703N(abstractC0866a.f3847b, 1024)) {
            this.f3858m = abstractC0866a.f3858m;
        }
        if (m10703N(abstractC0866a.f3847b, 4096)) {
            this.f3865t = abstractC0866a.f3865t;
        }
        if (m10703N(abstractC0866a.f3847b, 8192)) {
            this.f3861p = abstractC0866a.f3861p;
            this.f3862q = 0;
            this.f3847b &= -16385;
        }
        if (m10703N(abstractC0866a.f3847b, 16384)) {
            this.f3862q = abstractC0866a.f3862q;
            this.f3861p = null;
            this.f3847b &= -8193;
        }
        if (m10703N(abstractC0866a.f3847b, 32768)) {
            this.f3867v = abstractC0866a.f3867v;
        }
        if (m10703N(abstractC0866a.f3847b, 65536)) {
            this.f3860o = abstractC0866a.f3860o;
        }
        if (m10703N(abstractC0866a.f3847b, 131072)) {
            this.f3859n = abstractC0866a.f3859n;
        }
        if (m10703N(abstractC0866a.f3847b, 2048)) {
            this.f3864s.putAll(abstractC0866a.f3864s);
            this.f3871z = abstractC0866a.f3871z;
        }
        if (m10703N(abstractC0866a.f3847b, 524288)) {
            this.f3870y = abstractC0866a.f3870y;
        }
        if (!this.f3860o) {
            this.f3864s.clear();
            int i = this.f3847b & (-2049);
            this.f3847b = i;
            this.f3859n = false;
            this.f3847b = i & (-131073);
            this.f3871z = true;
        }
        this.f3847b |= abstractC0866a.f3847b;
        this.f3863r.d(abstractC0866a.f3863r);
        m10682f0();
        return this;
    }

    /* renamed from: b0 */
    public T m10690b0(int i) {
        if (this.f3868w) {
            return (T) clone().m10690b0(i);
        }
        this.f3854i = i;
        int i2 = this.f3847b | 128;
        this.f3847b = i2;
        this.f3853h = null;
        this.f3847b = i2 & (-65);
        m10682f0();
        return this;
    }

    /* renamed from: c */
    public T m10689c() {
        if (!this.f3866u || this.f3868w) {
            this.f3868w = true;
            m10698T();
            return this;
        }
        throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }

    /* renamed from: c0 */
    public T m10688c0(Priority priority) {
        if (this.f3868w) {
            return (T) clone().m10688c0(priority);
        }
        C0856j.m10759d(priority);
        this.f3850e = priority;
        this.f3847b |= 8;
        m10682f0();
        return this;
    }

    /* renamed from: d */
    public T m10687d() {
        return m10668m0(DownsampleStrategy.f3725b, new k());
    }

    /* renamed from: e */
    public T clone() {
        try {
            T t = (T) super.clone();
            e eVar = new e();
            t.f3863r = eVar;
            eVar.d(this.f3863r);
            b bVar = new b();
            t.f3864s = bVar;
            bVar.putAll(this.f3864s);
            t.f3866u = false;
            t.f3868w = false;
            return t;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof AbstractC0866a) {
            AbstractC0866a abstractC0866a = (AbstractC0866a) obj;
            z = false;
            if (Float.compare(abstractC0866a.f3848c, this.f3848c) == 0) {
                z = false;
                if (this.f3852g == abstractC0866a.f3852g) {
                    z = false;
                    if (C0857k.m10755c(this.f3851f, abstractC0866a.f3851f)) {
                        z = false;
                        if (this.f3854i == abstractC0866a.f3854i) {
                            z = false;
                            if (C0857k.m10755c(this.f3853h, abstractC0866a.f3853h)) {
                                z = false;
                                if (this.f3862q == abstractC0866a.f3862q) {
                                    z = false;
                                    if (C0857k.m10755c(this.f3861p, abstractC0866a.f3861p)) {
                                        z = false;
                                        if (this.f3855j == abstractC0866a.f3855j) {
                                            z = false;
                                            if (this.f3856k == abstractC0866a.f3856k) {
                                                z = false;
                                                if (this.f3857l == abstractC0866a.f3857l) {
                                                    z = false;
                                                    if (this.f3859n == abstractC0866a.f3859n) {
                                                        z = false;
                                                        if (this.f3860o == abstractC0866a.f3860o) {
                                                            z = false;
                                                            if (this.f3869x == abstractC0866a.f3869x) {
                                                                z = false;
                                                                if (this.f3870y == abstractC0866a.f3870y) {
                                                                    z = false;
                                                                    if (this.f3849d.equals(abstractC0866a.f3849d)) {
                                                                        z = false;
                                                                        if (this.f3850e == abstractC0866a.f3850e) {
                                                                            z = false;
                                                                            if (this.f3863r.equals(abstractC0866a.f3863r)) {
                                                                                z = false;
                                                                                if (this.f3864s.equals(abstractC0866a.f3864s)) {
                                                                                    z = false;
                                                                                    if (this.f3865t.equals(abstractC0866a.f3865t)) {
                                                                                        z = false;
                                                                                        if (C0857k.m10755c(this.f3858m, abstractC0866a.f3858m)) {
                                                                                            z = false;
                                                                                            if (C0857k.m10755c(this.f3867v, abstractC0866a.f3867v)) {
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
    public T m10683f(Class<?> cls) {
        if (this.f3868w) {
            return (T) clone().m10683f(cls);
        }
        C0856j.m10759d(cls);
        this.f3865t = cls;
        this.f3847b |= 4096;
        m10682f0();
        return this;
    }

    /* renamed from: f0 */
    protected final T m10682f0() {
        if (!this.f3866u) {
            m10684e0();
            return this;
        }
        throw new IllegalStateException("You cannot modify locked T, consider clone()");
    }

    /* renamed from: g */
    public T m10681g(AbstractC0758h abstractC0758h) {
        if (this.f3868w) {
            return (T) clone().m10681g(abstractC0758h);
        }
        C0856j.m10759d(abstractC0758h);
        this.f3849d = abstractC0758h;
        this.f3847b |= 4;
        m10682f0();
        return this;
    }

    /* renamed from: g0 */
    public <Y> T m10680g0(C0733d<Y> c0733d, Y y) {
        if (this.f3868w) {
            return (T) clone().m10680g0(c0733d, y);
        }
        C0856j.m10759d(c0733d);
        C0856j.m10759d(y);
        this.f3863r.e(c0733d, y);
        m10682f0();
        return this;
    }

    /* renamed from: h */
    public T m10679h(DownsampleStrategy downsampleStrategy) {
        C0733d c0733d = DownsampleStrategy.f3729f;
        C0856j.m10759d(downsampleStrategy);
        return m10680g0(c0733d, downsampleStrategy);
    }

    /* renamed from: h0 */
    public T m10678h0(AbstractC0732c abstractC0732c) {
        if (this.f3868w) {
            return (T) clone().m10678h0(abstractC0732c);
        }
        C0856j.m10759d(abstractC0732c);
        this.f3858m = abstractC0732c;
        this.f3847b |= 1024;
        m10682f0();
        return this;
    }

    public int hashCode() {
        return C0857k.m10744n(this.f3867v, C0857k.m10744n(this.f3858m, C0857k.m10744n(this.f3865t, C0857k.m10744n(this.f3864s, C0857k.m10744n(this.f3863r, C0857k.m10744n(this.f3850e, C0857k.m10744n(this.f3849d, C0857k.m10743o(this.f3870y, C0857k.m10743o(this.f3869x, C0857k.m10743o(this.f3860o, C0857k.m10743o(this.f3859n, C0857k.m10745m(this.f3857l, C0857k.m10745m(this.f3856k, C0857k.m10743o(this.f3855j, C0857k.m10744n(this.f3861p, C0857k.m10745m(this.f3862q, C0857k.m10744n(this.f3853h, C0857k.m10745m(this.f3854i, C0857k.m10744n(this.f3851f, C0857k.m10745m(this.f3852g, C0857k.m10747k(this.f3848c)))))))))))))))))))));
    }

    /* renamed from: i */
    public T m10677i(int i) {
        if (this.f3868w) {
            return (T) clone().m10677i(i);
        }
        this.f3852g = i;
        int i2 = this.f3847b | 32;
        this.f3847b = i2;
        this.f3851f = null;
        this.f3847b = i2 & (-17);
        m10682f0();
        return this;
    }

    /* renamed from: i0 */
    public T m10676i0(float f) {
        if (this.f3868w) {
            return (T) clone().m10676i0(f);
        }
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f3848c = f;
        this.f3847b |= 2;
        m10682f0();
        return this;
    }

    /* renamed from: j */
    public final AbstractC0758h m10675j() {
        return this.f3849d;
    }

    /* renamed from: j0 */
    public T m10674j0(boolean z) {
        if (this.f3868w) {
            return (T) clone().m10674j0(true);
        }
        this.f3855j = !z;
        this.f3847b |= 256;
        m10682f0();
        return this;
    }

    /* renamed from: k */
    public final int m10673k() {
        return this.f3852g;
    }

    /* renamed from: k0 */
    public T m10672k0(h<Bitmap> hVar) {
        return m10670l0(hVar, true);
    }

    /* renamed from: l */
    public final Drawable m10671l() {
        return this.f3851f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: l0 */
    T m10670l0(h<Bitmap> hVar, boolean z) {
        if (this.f3868w) {
            return (T) clone().m10670l0(hVar, z);
        }
        n nVar = new n(hVar, z);
        m10666n0(Bitmap.class, hVar, z);
        m10666n0(Drawable.class, nVar, z);
        nVar.c();
        m10666n0(BitmapDrawable.class, nVar, z);
        m10666n0(c.class, new f(hVar), z);
        m10682f0();
        return this;
    }

    /* renamed from: m */
    public final Drawable m10669m() {
        return this.f3861p;
    }

    /* renamed from: m0 */
    final T m10668m0(DownsampleStrategy downsampleStrategy, h<Bitmap> hVar) {
        if (this.f3868w) {
            return (T) clone().m10668m0(downsampleStrategy, hVar);
        }
        m10679h(downsampleStrategy);
        return m10672k0(hVar);
    }

    /* renamed from: n */
    public final int m10667n() {
        return this.f3862q;
    }

    /* renamed from: n0 */
    <Y> T m10666n0(Class<Y> cls, h<Y> hVar, boolean z) {
        if (this.f3868w) {
            return (T) clone().m10666n0(cls, hVar, z);
        }
        C0856j.m10759d(cls);
        C0856j.m10759d(hVar);
        this.f3864s.put(cls, hVar);
        int i = this.f3847b | 2048;
        this.f3847b = i;
        this.f3860o = true;
        int i2 = i | 65536;
        this.f3847b = i2;
        this.f3871z = false;
        if (z) {
            this.f3847b = i2 | 131072;
            this.f3859n = true;
        }
        m10682f0();
        return this;
    }

    /* renamed from: o */
    public final boolean m10665o() {
        return this.f3870y;
    }

    /* renamed from: o0 */
    public T m10664o0(boolean z) {
        if (this.f3868w) {
            return (T) clone().m10664o0(z);
        }
        this.f3846A = z;
        this.f3847b |= 1048576;
        m10682f0();
        return this;
    }

    /* renamed from: q */
    public final e m10663q() {
        return this.f3863r;
    }

    /* renamed from: r */
    public final int m10662r() {
        return this.f3856k;
    }

    /* renamed from: s */
    public final int m10661s() {
        return this.f3857l;
    }

    /* renamed from: t */
    public final Drawable m10660t() {
        return this.f3853h;
    }

    /* renamed from: u */
    public final int m10659u() {
        return this.f3854i;
    }

    /* renamed from: v */
    public final Priority m10658v() {
        return this.f3850e;
    }

    /* renamed from: w */
    public final Class<?> m10657w() {
        return this.f3865t;
    }

    /* renamed from: y */
    public final AbstractC0732c m10656y() {
        return this.f3858m;
    }

    /* renamed from: z */
    public final float m10655z() {
        return this.f3848c;
    }
}
