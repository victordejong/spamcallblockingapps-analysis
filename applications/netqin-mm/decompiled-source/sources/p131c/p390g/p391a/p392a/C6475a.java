package p131c.p390g.p391a.p392a;

import android.animation.TimeInterpolator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.animation.LinearInterpolator;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import p012b.p035f.C0780a;
import p012b.p042i.p053o.C0947g;
/* renamed from: c.g.a.a.a */
/* loaded from: classes2-dex2jar.jar:c/g/a/a/a.class */
public class C6475a {

    /* renamed from: s */
    public static final C0780a<Class, C0947g<C6475a>> f20166s = new C0780a<>();

    /* renamed from: c */
    public final Class<? extends AbstractC6476a> f20169c;

    /* renamed from: e */
    public int f20171e;

    /* renamed from: f */
    public int f20172f;

    /* renamed from: h */
    public boolean f20174h;

    /* renamed from: k */
    public AbstractC6477b f20177k;

    /* renamed from: m */
    public long f20179m;

    /* renamed from: n */
    public long f20180n;

    /* renamed from: o */
    public long f20181o;

    /* renamed from: a */
    public final ArrayList<AbstractC6476a> f20167a = new ArrayList<>();

    /* renamed from: b */
    public final Set<AbstractC6476a> f20168b = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: d */
    public final Paint f20170d = new Paint();

    /* renamed from: g */
    public boolean f20173g = true;

    /* renamed from: i */
    public long f20175i = -1;

    /* renamed from: j */
    public long f20176j = 300;

    /* renamed from: l */
    public final Rect f20178l = new Rect();

    /* renamed from: p */
    public boolean f20182p = false;

    /* renamed from: q */
    public boolean f20183q = false;

    /* renamed from: r */
    public boolean f20184r = false;

    /* renamed from: c.g.a.a.a$a */
    /* loaded from: classes2-dex2jar.jar:c/g/a/a/a$a.class */
    public static abstract class AbstractC6476a {

        /* renamed from: i */
        public static final TimeInterpolator f20185i = new LinearInterpolator();

        /* renamed from: c */
        public int f20188c;

        /* renamed from: d */
        public int f20189d;

        /* renamed from: e */
        public int f20190e;

        /* renamed from: f */
        public long f20191f;

        /* renamed from: a */
        public final Rect f20186a = new Rect();

        /* renamed from: b */
        public final RectF f20187b = new RectF();

        /* renamed from: g */
        public long f20192g = 1000;

        /* renamed from: h */
        public TimeInterpolator f20193h = f20185i;

        /* renamed from: a */
        public float m20746a() {
            return Math.min(1.0f, (((float) (System.currentTimeMillis() - this.f20191f)) * 1.0f) / ((float) this.f20192g));
        }

        /* renamed from: a */
        public void m20745a(long j) {
            this.f20192g = j;
        }

        /* renamed from: a */
        public void m20744a(TimeInterpolator timeInterpolator) {
            if (timeInterpolator != null) {
                this.f20193h = timeInterpolator;
            }
        }

        /* renamed from: a */
        public abstract void mo19988a(Canvas canvas, Paint paint);

        /* renamed from: b */
        public float m20741b() {
            return this.f20193h.getInterpolation(m20746a());
        }

        /* renamed from: c */
        public boolean m20739c() {
            return m20746a() >= 1.0f;
        }

        /* renamed from: d */
        public void mo19984d() {
        }
    }

    /* renamed from: c.g.a.a.a$b */
    /* loaded from: classes2-dex2jar.jar:c/g/a/a/a$b.class */
    public static abstract class AbstractC6477b {
        /* renamed from: a */
        public void mo20011a() {
        }

        /* renamed from: b */
        public void mo3645b() {
        }

        /* renamed from: c */
        public void mo20007c() {
        }

        /* renamed from: d */
        public void mo20006d() {
        }
    }

    public C6475a(Class<? extends AbstractC6476a> cls) {
        this.f20169c = cls;
        m20754g();
    }

    /* renamed from: a */
    public static C6475a m20763a(Class<? extends AbstractC6476a> cls) {
        C0947g<C6475a> gVar = f20166s.get(cls);
        C0947g<C6475a> gVar2 = gVar;
        if (gVar == null) {
            gVar2 = new C0947g<>(10);
            f20166s.put(cls, gVar2);
        }
        C6475a b = gVar2.mo35444b();
        if (b == null || !b.f20169c.equals(cls)) {
            return new C6475a(cls);
        }
        b.m20748m();
        return b;
    }

    /* renamed from: a */
    public C6475a m20768a(long j) {
        this.f20176j = j;
        return this;
    }

    /* renamed from: a */
    public C6475a m20764a(AbstractC6477b bVar) {
        this.f20177k = bVar;
        return this;
    }

    /* renamed from: a */
    public C6475a m20762a(boolean z) {
        this.f20174h = z;
        return this;
    }

    /* renamed from: a */
    public final void m20770a() {
        AbstractC6476a k = m20750k();
        if (k != null) {
            long currentTimeMillis = System.currentTimeMillis();
            k.f20191f = currentTimeMillis;
            k.f20186a.set(this.f20178l);
            k.f20189d = this.f20171e;
            k.f20190e = this.f20172f;
            k.f20188c = this.f20167a.size();
            k.mo19984d();
            this.f20167a.add(k);
            this.f20181o = currentTimeMillis;
            m20765a(k);
        }
    }

    /* renamed from: a */
    public void m20769a(int i, int i2) {
        this.f20171e = i;
        this.f20172f = i2;
    }

    /* renamed from: a */
    public final void m20766a(Canvas canvas) {
        m20747n();
        if (!m20758c() && !m20761b()) {
            if (m20767a(this.f20179m, this.f20181o, this.f20175i, this.f20180n)) {
                m20770a();
            }
            if (!m20757d()) {
                m20759b(canvas);
            }
        }
    }

    /* renamed from: a */
    public void m20765a(AbstractC6476a aVar) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0074, code lost:
        if ((((r6 + r10) + r12) - r0.f20191f) > r0.f20192g) goto L_0x008d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007a, code lost:
        r20 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x008a, code lost:
        if (((r0 - r6) - r12) < r10) goto L_0x008d;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0099  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m20767a(long r6, long r8, long r10, long r12) {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f20176j
            r14 = r0
            r0 = 0
            r16 = r0
            r0 = 0
            r17 = r0
            r0 = r14
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001f
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001c
            r0 = 1
            r17 = r0
        L_0x001c:
            r0 = r17
            return r0
        L_0x001f:
            long r0 = java.lang.System.currentTimeMillis()
            r14 = r0
            r0 = r14
            r1 = r8
            long r0 = r0 - r1
            r1 = r5
            long r1 = r1.f20176j
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0036
            r0 = 1
            r18 = r0
            goto L_0x0039
        L_0x0036:
            r0 = 0
            r18 = r0
        L_0x0039:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x008d
            r0 = r5
            java.util.ArrayList<c.g.a.a.a$a> r0 = r0.f20167a
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0080
            r0 = r5
            java.util.ArrayList<c.g.a.a.a$a> r0 = r0.f20167a
            r19 = r0
            r0 = r19
            r1 = r19
            int r1 = r1.size()
            r2 = 1
            int r1 = r1 - r2
            java.lang.Object r0 = r0.get(r1)
            c.g.a.a.a$a r0 = (p131c.p390g.p391a.p392a.C6475a.AbstractC6476a) r0
            r19 = r0
            r0 = r6
            r1 = r10
            long r0 = r0 + r1
            r1 = r12
            long r0 = r0 + r1
            r1 = r19
            long r1 = p131c.p390g.p391a.p392a.C6475a.AbstractC6476a.m20743a(r1)
            long r0 = r0 - r1
            r1 = r19
            long r1 = p131c.p390g.p391a.p392a.C6475a.AbstractC6476a.m20740b(r1)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x007a
            goto L_0x008d
        L_0x007a:
            r0 = 0
            r20 = r0
            goto L_0x0090
        L_0x0080:
            r0 = r14
            r1 = r6
            long r0 = r0 - r1
            r1 = r12
            long r0 = r0 - r1
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x007a
        L_0x008d:
            r0 = 1
            r20 = r0
        L_0x0090:
            r0 = r16
            r17 = r0
            r0 = r18
            if (r0 == 0) goto L_0x00a5
            r0 = r16
            r17 = r0
            r0 = r20
            if (r0 == 0) goto L_0x00a5
            r0 = 1
            r17 = r0
        L_0x00a5:
            r0 = r17
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p390g.p391a.p392a.C6475a.m20767a(long, long, long, long):boolean");
    }

    /* renamed from: b */
    public C6475a m20760b(long j) {
        this.f20180n = j;
        return this;
    }

    /* renamed from: b */
    public final void m20759b(Canvas canvas) {
        Iterator it = ((ArrayList) this.f20167a.clone()).iterator();
        while (it.hasNext()) {
            AbstractC6476a aVar = (AbstractC6476a) it.next();
            if (!aVar.m20739c()) {
                aVar.mo19988a(canvas, this.f20170d);
            } else if (this.f20176j != 0 || !this.f20174h) {
                this.f20167a.remove(aVar);
                if (this.f20173g) {
                    this.f20168b.add(aVar);
                }
            } else {
                AbstractC6477b bVar = this.f20177k;
                if (bVar != null && !this.f20184r) {
                    this.f20184r = true;
                    bVar.mo3645b();
                }
                aVar.mo19988a(canvas, this.f20170d);
            }
        }
    }

    /* renamed from: b */
    public final boolean m20761b() {
        if (!this.f20183q) {
            return false;
        }
        AbstractC6477b bVar = this.f20177k;
        if (bVar != null) {
            bVar.mo20011a();
        }
        m20749l();
        return true;
    }

    /* renamed from: c */
    public final boolean m20758c() {
        return System.currentTimeMillis() - this.f20179m < this.f20180n;
    }

    /* renamed from: d */
    public final boolean m20757d() {
        if (this.f20182p || !this.f20167a.isEmpty() || this.f20175i <= 0) {
            return false;
        }
        this.f20182p = true;
        AbstractC6477b bVar = this.f20177k;
        if (bVar != null) {
            bVar.mo20007c();
        }
        m20749l();
        return true;
    }

    /* renamed from: e */
    public void m20756e() {
        this.f20183q = true;
    }

    /* renamed from: f */
    public AbstractC6476a m20755f() {
        try {
            Constructor<? extends AbstractC6476a> declaredConstructor = this.f20169c.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return (AbstractC6476a) declaredConstructor.newInstance(new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: g */
    public final void m20754g() {
        this.f20170d.setAntiAlias(true);
        this.f20170d.setDither(true);
    }

    /* renamed from: h */
    public boolean m20753h() {
        return this.f20183q;
    }

    /* renamed from: i */
    public boolean m20752i() {
        return this.f20182p;
    }

    /* renamed from: j */
    public final AbstractC6476a m20751j() {
        if (this.f20168b.isEmpty()) {
            return null;
        }
        Iterator<AbstractC6476a> it = this.f20168b.iterator();
        if (!it.hasNext()) {
            return null;
        }
        AbstractC6476a next = it.next();
        if (!next.m20739c()) {
            return null;
        }
        it.remove();
        return next;
    }

    /* renamed from: k */
    public final AbstractC6476a m20750k() {
        AbstractC6476a j = this.f20173g ? m20751j() : null;
        AbstractC6476a aVar = j;
        if (j == null) {
            aVar = m20755f();
        }
        return aVar;
    }

    /* renamed from: l */
    public void m20749l() {
        f20166s.get(this.f20169c).mo35445a(this);
    }

    /* renamed from: m */
    public void m20748m() {
        this.f20179m = 0L;
        this.f20181o = 0L;
        this.f20177k = null;
        this.f20182p = false;
        this.f20183q = false;
    }

    /* renamed from: n */
    public final void m20747n() {
        if (this.f20179m == 0) {
            this.f20179m = System.currentTimeMillis();
            AbstractC6477b bVar = this.f20177k;
            if (bVar != null) {
                bVar.mo20006d();
            }
        }
    }
}
