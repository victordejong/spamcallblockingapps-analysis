package com.bumptech.glide.p073f;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.core.p025g.C0523e;
import com.bumptech.glide.C1391e;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.C1751j;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.p083c.p086c.C1632a;
import com.bumptech.glide.p073f.p074a.AbstractC1409g;
import com.bumptech.glide.p073f.p074a.AbstractC1410h;
import com.bumptech.glide.p073f.p075b.AbstractC1419c;
import com.bumptech.glide.p077h.C1452e;
import com.bumptech.glide.p077h.C1457j;
import com.bumptech.glide.p077h.p078a.AbstractC1446c;
import com.bumptech.glide.p077h.p078a.C1437a;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.bumptech.glide.f.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/g.class */
public final class C1424g<R> implements AbstractC1409g, AbstractC1414b, AbstractC1423f, C1437a.AbstractC1443c {

    /* renamed from: a */
    private static final C0523e.AbstractC0524a<C1424g<?>> f4677a = C1437a.m17028a(150, new C1437a.AbstractC1441a<C1424g<?>>() { // from class: com.bumptech.glide.f.g.1
        /* renamed from: a */
        public C1424g<?> mo16349b() {
            return new C1424g<>();
        }
    });

    /* renamed from: c */
    private static final boolean f4678c = Log.isLoggable("Request", 2);

    /* renamed from: A */
    private int f4679A;

    /* renamed from: B */
    private int f4680B;

    /* renamed from: b */
    private boolean f4681b;

    /* renamed from: d */
    private final String f4682d;

    /* renamed from: e */
    private final AbstractC1446c f4683e;

    /* renamed from: f */
    private AbstractC1421d<R> f4684f;

    /* renamed from: g */
    private AbstractC1420c f4685g;

    /* renamed from: h */
    private Context f4686h;

    /* renamed from: i */
    private C1391e f4687i;

    /* renamed from: j */
    private Object f4688j;

    /* renamed from: k */
    private Class<R> f4689k;

    /* renamed from: l */
    private C1422e f4690l;

    /* renamed from: m */
    private int f4691m;

    /* renamed from: n */
    private int f4692n;

    /* renamed from: o */
    private EnumC1428g f4693o;

    /* renamed from: p */
    private AbstractC1410h<R> f4694p;

    /* renamed from: q */
    private List<AbstractC1421d<R>> f4695q;

    /* renamed from: r */
    private C1751j f4696r;

    /* renamed from: s */
    private AbstractC1419c<? super R> f4697s;

    /* renamed from: t */
    private AbstractC1771t<R> f4698t;

    /* renamed from: u */
    private C1751j.C1757d f4699u;

    /* renamed from: v */
    private long f4700v;

    /* renamed from: w */
    private EnumC1426a f4701w;

    /* renamed from: x */
    private Drawable f4702x;

    /* renamed from: y */
    private Drawable f4703y;

    /* renamed from: z */
    private Drawable f4704z;

    /* renamed from: com.bumptech.glide.f.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/g$a.class */
    public enum EnumC1426a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    C1424g() {
        this.f4682d = f4678c ? String.valueOf(super.hashCode()) : null;
        this.f4683e = AbstractC1446c.m17014a();
    }

    /* renamed from: a */
    private static int m17101a(int i, float f) {
        if (i != Integer.MIN_VALUE) {
            i = Math.round(i * f);
        }
        return i;
    }

    /* renamed from: a */
    private Drawable m17102a(int i) {
        return C1632a.m16691a(this.f4687i, i, this.f4690l.m17107v() != null ? this.f4690l.m17107v() : this.f4686h.getTheme());
    }

    /* renamed from: a */
    public static <R> C1424g<R> m17099a(Context context, C1391e c1391e, Object obj, Class<R> cls, C1422e c1422e, int i, int i2, EnumC1428g enumC1428g, AbstractC1410h<R> abstractC1410h, AbstractC1421d<R> abstractC1421d, List<AbstractC1421d<R>> list, AbstractC1420c abstractC1420c, C1751j c1751j, AbstractC1419c<? super R> abstractC1419c) {
        C1424g<?> mo17021a = f4677a.mo17021a();
        C1424g<?> c1424g = mo17021a;
        if (mo17021a == null) {
            c1424g = new C1424g<>();
        }
        c1424g.m17091b(context, c1391e, obj, cls, c1422e, i, i2, enumC1428g, abstractC1410h, abstractC1421d, list, abstractC1420c, c1751j, abstractC1419c);
        return (C1424g<R>) c1424g;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private void m17096a(GlideException glideException, int i) {
        boolean z;
        this.f4683e.mo17012b();
        int m17222d = this.f4687i.m17222d();
        if (m17222d <= i) {
            Log.w("Glide", "Load failed for " + this.f4688j + " with size [" + this.f4679A + "x" + this.f4680B + "]", glideException);
            if (m17222d <= 4) {
                glideException.m16604a("Glide");
            }
        }
        this.f4699u = null;
        this.f4701w = EnumC1426a.FAILED;
        this.f4681b = true;
        try {
            if (this.f4695q != null) {
                Iterator<AbstractC1421d<R>> it = this.f4695q.iterator();
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    z2 |= it.next().m17162a(glideException, this.f4688j, this.f4694p, m17081r());
                }
            } else {
                z = false;
            }
            if (!((this.f4684f != null && this.f4684f.m17162a(glideException, this.f4688j, this.f4694p, m17081r())) | z)) {
                m17085n();
            }
            this.f4681b = false;
            m17079t();
        } catch (Throwable th) {
            this.f4681b = false;
            throw th;
        }
    }

    /* renamed from: a */
    private void m17095a(AbstractC1771t<?> abstractC1771t) {
        this.f4696r.m16400a(abstractC1771t);
        this.f4698t = null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private void m17093a(AbstractC1771t<R> abstractC1771t, R r, EnumC1464a enumC1464a) {
        boolean z;
        boolean m17081r = m17081r();
        this.f4701w = EnumC1426a.COMPLETE;
        this.f4698t = abstractC1771t;
        if (this.f4687i.m17222d() <= 3) {
            Log.d("Glide", "Finished loading " + r.getClass().getSimpleName() + " from " + enumC1464a + " for " + this.f4688j + " with size [" + this.f4679A + "x" + this.f4680B + "] in " + C1452e.m17001a(this.f4700v) + " ms");
        }
        this.f4681b = true;
        try {
            if (this.f4695q != null) {
                Iterator<AbstractC1421d<R>> it = this.f4695q.iterator();
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    z2 |= it.next().m17161a(r, this.f4688j, this.f4694p, enumC1464a, m17081r);
                }
            } else {
                z = false;
            }
            if (!((this.f4684f != null && this.f4684f.m17161a(r, this.f4688j, this.f4694p, enumC1464a, m17081r)) | z)) {
                this.f4694p.mo16627a(r, this.f4697s.mo17163a(enumC1464a, m17081r));
            }
            this.f4681b = false;
            m17080s();
        } catch (Throwable th) {
            this.f4681b = false;
            throw th;
        }
    }

    /* renamed from: a */
    private void m17092a(String str) {
        Log.v("Request", str + " this: " + this.f4682d);
    }

    /* renamed from: a */
    private static boolean m17098a(C1424g<?> c1424g, C1424g<?> c1424g2) {
        boolean z = false;
        if ((((C1424g) c1424g).f4695q == null ? 0 : ((C1424g) c1424g).f4695q.size()) == (((C1424g) c1424g2).f4695q == null ? 0 : ((C1424g) c1424g2).f4695q.size())) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    private void m17091b(Context context, C1391e c1391e, Object obj, Class<R> cls, C1422e c1422e, int i, int i2, EnumC1428g enumC1428g, AbstractC1410h<R> abstractC1410h, AbstractC1421d<R> abstractC1421d, List<AbstractC1421d<R>> list, AbstractC1420c abstractC1420c, C1751j c1751j, AbstractC1419c<? super R> abstractC1419c) {
        this.f4686h = context;
        this.f4687i = c1391e;
        this.f4688j = obj;
        this.f4689k = cls;
        this.f4690l = c1422e;
        this.f4691m = i;
        this.f4692n = i2;
        this.f4693o = enumC1428g;
        this.f4694p = abstractC1410h;
        this.f4684f = abstractC1421d;
        this.f4695q = list;
        this.f4685g = abstractC1420c;
        this.f4696r = c1751j;
        this.f4697s = abstractC1419c;
        this.f4701w = EnumC1426a.PENDING;
    }

    /* renamed from: i */
    private void m17090i() {
        m17089j();
        this.f4683e.mo17012b();
        this.f4694p.mo17179b(this);
        if (this.f4699u != null) {
            this.f4699u.m16389a();
            this.f4699u = null;
        }
    }

    /* renamed from: j */
    private void m17089j() {
        if (this.f4681b) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    /* renamed from: k */
    private Drawable m17088k() {
        if (this.f4702x == null) {
            this.f4702x = this.f4690l.m17113p();
            if (this.f4702x == null && this.f4690l.m17112q() > 0) {
                this.f4702x = m17102a(this.f4690l.m17112q());
            }
        }
        return this.f4702x;
    }

    /* renamed from: l */
    private Drawable m17087l() {
        if (this.f4703y == null) {
            this.f4703y = this.f4690l.m17110s();
            if (this.f4703y == null && this.f4690l.m17111r() > 0) {
                this.f4703y = m17102a(this.f4690l.m17111r());
            }
        }
        return this.f4703y;
    }

    /* renamed from: m */
    private Drawable m17086m() {
        if (this.f4704z == null) {
            this.f4704z = this.f4690l.m17108u();
            if (this.f4704z == null && this.f4690l.m17109t() > 0) {
                this.f4704z = m17102a(this.f4690l.m17109t());
            }
        }
        return this.f4704z;
    }

    /* renamed from: n */
    private void m17085n() {
        if (!m17082q()) {
            return;
        }
        Drawable drawable = null;
        if (this.f4688j == null) {
            drawable = m17086m();
        }
        Drawable drawable2 = drawable;
        if (drawable == null) {
            drawable2 = m17088k();
        }
        Drawable drawable3 = drawable2;
        if (drawable2 == null) {
            drawable3 = m17087l();
        }
        this.f4694p.mo17187c(drawable3);
    }

    /* renamed from: o */
    private boolean m17084o() {
        return this.f4685g == null || this.f4685g.mo17073b(this);
    }

    /* renamed from: p */
    private boolean m17083p() {
        return this.f4685g == null || this.f4685g.mo17069d(this);
    }

    /* renamed from: q */
    private boolean m17082q() {
        return this.f4685g == null || this.f4685g.mo17071c(this);
    }

    /* renamed from: r */
    private boolean m17081r() {
        return this.f4685g == null || !this.f4685g.mo17062i();
    }

    /* renamed from: s */
    private void m17080s() {
        if (this.f4685g != null) {
            this.f4685g.mo17067e(this);
        }
    }

    /* renamed from: t */
    private void m17079t() {
        if (this.f4685g != null) {
            this.f4685g.mo17065f(this);
        }
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: a */
    public void mo17077a() {
        m17089j();
        this.f4683e.mo17012b();
        this.f4700v = C1452e.m17002a();
        if (this.f4688j == null) {
            if (C1457j.m16980a(this.f4691m, this.f4692n)) {
                this.f4679A = this.f4691m;
                this.f4680B = this.f4692n;
            }
            m17096a(new GlideException("Received null model"), m17086m() == null ? 5 : 3);
        } else if (this.f4701w == EnumC1426a.RUNNING) {
            throw new IllegalArgumentException("Cannot restart a running request");
        } else {
            if (this.f4701w == EnumC1426a.COMPLETE) {
                mo17094a((AbstractC1771t<?>) this.f4698t, EnumC1464a.MEMORY_CACHE);
                return;
            }
            this.f4701w = EnumC1426a.WAITING_FOR_SIZE;
            if (C1457j.m16980a(this.f4691m, this.f4692n)) {
                mo17100a(this.f4691m, this.f4692n);
            } else {
                this.f4694p.mo17184a((AbstractC1409g) this);
            }
            if ((this.f4701w == EnumC1426a.RUNNING || this.f4701w == EnumC1426a.WAITING_FOR_SIZE) && m17082q()) {
                this.f4694p.mo17180b(m17087l());
            }
            if (!f4678c) {
                return;
            }
            m17092a("finished run method in " + C1452e.m17001a(this.f4700v));
        }
    }

    @Override // com.bumptech.glide.p073f.p074a.AbstractC1409g
    /* renamed from: a */
    public void mo17100a(int i, int i2) {
        this.f4683e.mo17012b();
        if (f4678c) {
            m17092a("Got onSizeReady in " + C1452e.m17001a(this.f4700v));
        }
        if (this.f4701w != EnumC1426a.WAITING_FOR_SIZE) {
            return;
        }
        this.f4701w = EnumC1426a.RUNNING;
        float m17157D = this.f4690l.m17157D();
        this.f4679A = m17101a(i, m17157D);
        this.f4680B = m17101a(i2, m17157D);
        if (f4678c) {
            m17092a("finished setup for calling load in " + C1452e.m17001a(this.f4700v));
        }
        this.f4699u = this.f4696r.m16401a(this.f4687i, this.f4688j, this.f4690l.m17105x(), this.f4679A, this.f4680B, this.f4690l.m17115n(), this.f4689k, this.f4693o, this.f4690l.m17114o(), this.f4690l.m17118k(), this.f4690l.m17117l(), this.f4690l.m17156E(), this.f4690l.m17116m(), this.f4690l.m17106w(), this.f4690l.m17155F(), this.f4690l.m17154G(), this.f4690l.m17153H(), this);
        if (this.f4701w != EnumC1426a.RUNNING) {
            this.f4699u = null;
        }
        if (!f4678c) {
            return;
        }
        m17092a("finished onSizeReady in " + C1452e.m17001a(this.f4700v));
    }

    @Override // com.bumptech.glide.p073f.AbstractC1423f
    /* renamed from: a */
    public void mo17097a(GlideException glideException) {
        m17096a(glideException, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.p073f.AbstractC1423f
    /* renamed from: a */
    public void mo17094a(AbstractC1771t<?> abstractC1771t, EnumC1464a enumC1464a) {
        this.f4683e.mo17012b();
        this.f4699u = null;
        if (abstractC1771t == null) {
            mo17097a(new GlideException("Expected to receive a Resource<R> with an object of " + this.f4689k + " inside, but instead got null."));
            return;
        }
        Object mo16347d = abstractC1771t.mo16347d();
        if (mo16347d == null || !this.f4689k.isAssignableFrom(mo16347d.getClass())) {
            m17095a(abstractC1771t);
            mo17097a(new GlideException("Expected to receive an object of " + this.f4689k + " but instead got " + (mo16347d != null ? mo16347d.getClass() : "") + "{" + mo16347d + "} inside Resource{" + abstractC1771t + "}." + (mo16347d != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.")));
        } else if (m17084o()) {
            m17093a(abstractC1771t, mo16347d, enumC1464a);
        } else {
            m17095a(abstractC1771t);
            this.f4701w = EnumC1426a.COMPLETE;
        }
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: a */
    public boolean mo17076a(AbstractC1414b abstractC1414b) {
        boolean z = false;
        if (abstractC1414b instanceof C1424g) {
            C1424g c1424g = (C1424g) abstractC1414b;
            z = false;
            if (this.f4691m == c1424g.f4691m) {
                z = false;
                if (this.f4692n == c1424g.f4692n) {
                    z = false;
                    if (C1457j.m16967b(this.f4688j, c1424g.f4688j)) {
                        z = false;
                        if (this.f4689k.equals(c1424g.f4689k)) {
                            z = false;
                            if (this.f4690l.equals(c1424g.f4690l)) {
                                z = false;
                                if (this.f4693o == c1424g.f4693o) {
                                    z = false;
                                    if (m17098a((C1424g<?>) this, (C1424g<?>) c1424g)) {
                                        z = true;
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

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: b */
    public void mo17074b() {
        C1457j.m16984a();
        m17089j();
        this.f4683e.mo17012b();
        if (this.f4701w == EnumC1426a.CLEARED) {
            return;
        }
        m17090i();
        if (this.f4698t != null) {
            m17095a((AbstractC1771t<?>) this.f4698t);
        }
        if (m17083p()) {
            this.f4694p.mo17185a(m17087l());
        }
        this.f4701w = EnumC1426a.CLEARED;
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: c */
    public boolean mo17072c() {
        return this.f4701w == EnumC1426a.RUNNING || this.f4701w == EnumC1426a.WAITING_FOR_SIZE;
    }

    @Override // com.bumptech.glide.p077h.p078a.C1437a.AbstractC1443c
    /* renamed from: c_ */
    public AbstractC1446c mo16351c_() {
        return this.f4683e;
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: d */
    public boolean mo17070d() {
        return this.f4701w == EnumC1426a.COMPLETE;
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: e */
    public boolean mo17068e() {
        return mo17070d();
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: f */
    public boolean mo17066f() {
        return this.f4701w == EnumC1426a.CLEARED;
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: g */
    public boolean mo17064g() {
        return this.f4701w == EnumC1426a.FAILED;
    }

    @Override // com.bumptech.glide.p073f.AbstractC1414b
    /* renamed from: h */
    public void mo17063h() {
        m17089j();
        this.f4686h = null;
        this.f4687i = null;
        this.f4688j = null;
        this.f4689k = null;
        this.f4690l = null;
        this.f4691m = -1;
        this.f4692n = -1;
        this.f4694p = null;
        this.f4695q = null;
        this.f4684f = null;
        this.f4685g = null;
        this.f4697s = null;
        this.f4699u = null;
        this.f4702x = null;
        this.f4703y = null;
        this.f4704z = null;
        this.f4679A = -1;
        this.f4680B = -1;
        f4677a.mo17020a(this);
    }
}
