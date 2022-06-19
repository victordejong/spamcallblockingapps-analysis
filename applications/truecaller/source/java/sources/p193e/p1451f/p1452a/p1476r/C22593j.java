package p193e.p1451f.p1452a.p1476r;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22226e;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1460o.C22369l;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22432l;
import p193e.p1451f.p1452a.p1457n.p1466q.p1469f.C22528a;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22597j;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22606e;
import p193e.p1451f.p1452a.p1480t.C22619f;
import p193e.p1451f.p1452a.p1480t.C22623j;
import p193e.p1451f.p1452a.p1480t.p1481k.AbstractC22633d;
/* renamed from: e.f.a.r.j */
/* loaded from: classes-dex2jar.jar:e/f/a/r/j.class */
public final class C22593j<R> implements AbstractC22587d, AbstractC22597j, AbstractC22592i {

    /* renamed from: D */
    public static final boolean f62566D = Log.isLoggable("Request", 2);

    /* renamed from: A */
    public int f62567A;

    /* renamed from: B */
    public boolean f62568B;

    /* renamed from: C */
    public RuntimeException f62569C;

    /* renamed from: a */
    public final String f62570a;

    /* renamed from: b */
    public final AbstractC22633d f62571b;

    /* renamed from: c */
    public final Object f62572c;

    /* renamed from: d */
    public final AbstractC22590g<R> f62573d;

    /* renamed from: e */
    public final AbstractC22588e f62574e;

    /* renamed from: f */
    public final Context f62575f;

    /* renamed from: g */
    public final C22226e f62576g;

    /* renamed from: h */
    public final Object f62577h;

    /* renamed from: i */
    public final Class<R> f62578i;

    /* renamed from: j */
    public final AbstractC22585a<?> f62579j;

    /* renamed from: k */
    public final int f62580k;

    /* renamed from: l */
    public final int f62581l;

    /* renamed from: m */
    public final EnumC22227f f62582m;

    /* renamed from: n */
    public final AbstractC22598k<R> f62583n;

    /* renamed from: o */
    public final List<AbstractC22590g<R>> f62584o;

    /* renamed from: p */
    public final AbstractC22606e<? super R> f62585p;

    /* renamed from: q */
    public final Executor f62586q;

    /* renamed from: r */
    public AbstractC22394w<R> f62587r;

    /* renamed from: s */
    public C22369l.C22375d f62588s;

    /* renamed from: t */
    public long f62589t;

    /* renamed from: u */
    public volatile C22369l f62590u;

    /* renamed from: v */
    public EnumC22594a f62591v;

    /* renamed from: w */
    public Drawable f62592w;

    /* renamed from: x */
    public Drawable f62593x;

    /* renamed from: y */
    public Drawable f62594y;

    /* renamed from: z */
    public int f62595z;

    /* renamed from: e.f.a.r.j$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/r/j$a.class */
    public enum EnumC22594a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    public C22593j(Context context, C22226e c22226e, Object obj, Object obj2, Class<R> cls, AbstractC22585a<?> abstractC22585a, int i, int i2, EnumC22227f enumC22227f, AbstractC22598k<R> abstractC22598k, AbstractC22590g<R> abstractC22590g, List<AbstractC22590g<R>> list, AbstractC22588e abstractC22588e, C22369l c22369l, AbstractC22606e<? super R> abstractC22606e, Executor executor) {
        this.f62570a = f62566D ? String.valueOf(hashCode()) : null;
        this.f62571b = new AbstractC22633d.C22635b();
        this.f62572c = obj;
        this.f62575f = context;
        this.f62576g = c22226e;
        this.f62577h = obj2;
        this.f62578i = cls;
        this.f62579j = abstractC22585a;
        this.f62580k = i;
        this.f62581l = i2;
        this.f62582m = enumC22227f;
        this.f62583n = abstractC22598k;
        this.f62573d = abstractC22590g;
        this.f62584o = list;
        this.f62574e = abstractC22588e;
        this.f62590u = c22369l;
        this.f62585p = abstractC22606e;
        this.f62586q = executor;
        this.f62591v = EnumC22594a.PENDING;
        if (this.f62569C != null || !c22226e.f61744h) {
            return;
        }
        this.f62569C = new RuntimeException("Glide request origin trace");
    }

    @Override // p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22597j
    /* renamed from: a */
    public void mo8054a(int i, int i2) {
        Throwable th;
        this.f62571b.mo8010a();
        synchronized (this.f62572c) {
            try {
                boolean z = f62566D;
                if (z) {
                    C22619f.m8031a(this.f62589t);
                }
                if (this.f62591v != EnumC22594a.WAITING_FOR_SIZE) {
                    return;
                }
                EnumC22594a enumC22594a = EnumC22594a.RUNNING;
                this.f62591v = enumC22594a;
                float f = this.f62579j.f62526b;
                if (i != Integer.MIN_VALUE) {
                    i = Math.round(i * f);
                }
                this.f62595z = i;
                this.f62567A = i2 == Integer.MIN_VALUE ? i2 : Math.round(f * i2);
                if (z) {
                    C22619f.m8031a(this.f62589t);
                }
                C22369l c22369l = this.f62590u;
                C22226e c22226e = this.f62576g;
                Object obj = this.f62577h;
                AbstractC22585a<?> abstractC22585a = this.f62579j;
                try {
                    try {
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
                try {
                    this.f62588s = c22369l.m8274b(c22226e, obj, abstractC22585a.f62536l, this.f62595z, this.f62567A, abstractC22585a.f62543s, this.f62578i, this.f62582m, abstractC22585a.f62527c, abstractC22585a.f62542r, abstractC22585a.f62537m, abstractC22585a.f62549y, abstractC22585a.f62541q, abstractC22585a.f62533i, abstractC22585a.f62547w, abstractC22585a.f62550z, abstractC22585a.f62548x, this, this.f62586q);
                    if (this.f62591v != enumC22594a) {
                        this.f62588s = null;
                    }
                    if (z) {
                        C22619f.m8031a(this.f62589t);
                    }
                } catch (Throwable th4) {
                    th = th4;
                    while (true) {
                        try {
                            break;
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        }
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    /* renamed from: b */
    public boolean mo8072b() {
        boolean z;
        synchronized (this.f62572c) {
            z = this.f62591v == EnumC22594a.CLEARED;
        }
        return z;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    /* renamed from: c */
    public boolean mo8071c(AbstractC22587d abstractC22587d) {
        int i;
        int i2;
        Object obj;
        Class<R> cls;
        AbstractC22585a<?> abstractC22585a;
        EnumC22227f enumC22227f;
        int size;
        int i3;
        int i4;
        Object obj2;
        Class<R> cls2;
        AbstractC22585a<?> abstractC22585a2;
        EnumC22227f enumC22227f2;
        int size2;
        boolean z;
        if (!(abstractC22587d instanceof C22593j)) {
            return false;
        }
        synchronized (this.f62572c) {
            i = this.f62580k;
            i2 = this.f62581l;
            obj = this.f62577h;
            cls = this.f62578i;
            abstractC22585a = this.f62579j;
            enumC22227f = this.f62582m;
            List<AbstractC22590g<R>> list = this.f62584o;
            size = list != null ? list.size() : 0;
        }
        C22593j c22593j = (C22593j) abstractC22587d;
        synchronized (c22593j.f62572c) {
            i3 = c22593j.f62580k;
            i4 = c22593j.f62581l;
            obj2 = c22593j.f62577h;
            cls2 = c22593j.f62578i;
            abstractC22585a2 = c22593j.f62579j;
            enumC22227f2 = c22593j.f62582m;
            List<AbstractC22590g<R>> list2 = c22593j.f62584o;
            size2 = list2 != null ? list2.size() : 0;
        }
        if (i == i3 && i2 == i4) {
            char[] cArr = C22623j.f62648a;
            if ((obj == null ? obj2 == null : obj instanceof AbstractC22432l ? ((AbstractC22432l) obj).m8233a(obj2) : obj.equals(obj2)) && cls.equals(cls2) && abstractC22585a.equals(abstractC22585a2) && enumC22227f == enumC22227f2 && size == size2) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0061 A[Catch: all -> 0x0082, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:8:0x0021, B:10:0x0023, B:12:0x0030, B:14:0x003a, B:16:0x0045, B:23:0x0061, B:25:0x006f, B:26:0x0074), top: B:36:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void clear() {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f62572c
            r4 = r0
            r0 = r4
            monitor-enter(r0)
            r0 = r3
            r0.m8070d()     // Catch: java.lang.Throwable -> L82
            r0 = r3
            e.f.a.t.k.d r0 = r0.f62571b     // Catch: java.lang.Throwable -> L82
            r0.mo8010a()     // Catch: java.lang.Throwable -> L82
            r0 = r3
            e.f.a.r.j$a r0 = r0.f62591v     // Catch: java.lang.Throwable -> L82
            r5 = r0
            e.f.a.r.j$a r0 = p193e.p1451f.p1452a.p1476r.C22593j.EnumC22594a.CLEARED     // Catch: java.lang.Throwable -> L82
            r6 = r0
            r0 = r5
            r1 = r6
            if (r0 != r1) goto L23
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L82
            return
        L23:
            r0 = r3
            r0.m8069e()     // Catch: java.lang.Throwable -> L82
            r0 = r3
            e.f.a.n.o.w<R> r0 = r0.f62587r     // Catch: java.lang.Throwable -> L82
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L38
            r0 = r3
            r1 = 0
            r0.f62587r = r1     // Catch: java.lang.Throwable -> L82
            goto L3a
        L38:
            r0 = 0
            r5 = r0
        L3a:
            r0 = r3
            e.f.a.r.e r0 = r0.f62574e     // Catch: java.lang.Throwable -> L82
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L59
            r0 = r7
            r1 = r3
            boolean r0 = r0.mo8075i(r1)     // Catch: java.lang.Throwable -> L82
            if (r0 == 0) goto L53
            goto L59
        L53:
            r0 = 0
            r8 = r0
            goto L5c
        L59:
            r0 = 1
            r8 = r0
        L5c:
            r0 = r8
            if (r0 == 0) goto L6e
            r0 = r3
            e.f.a.r.k.k<R> r0 = r0.f62583n     // Catch: java.lang.Throwable -> L82
            r1 = r3
            android.graphics.drawable.Drawable r1 = r1.m8067g()     // Catch: java.lang.Throwable -> L82
            r0.mo8051d(r1)     // Catch: java.lang.Throwable -> L82
        L6e:
            r0 = r3
            r1 = r6
            r0.f62591v = r1     // Catch: java.lang.Throwable -> L82
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L82
            r0 = r5
            if (r0 == 0) goto L81
            r0 = r3
            e.f.a.n.o.l r0 = r0.f62590u
            r1 = r5
            r0.m8270f(r1)
        L81:
            return
        L82:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L82
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1476r.C22593j.clear():void");
    }

    /* renamed from: d */
    public final void m8070d() {
        if (!this.f62568B) {
            return;
        }
        throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
    }

    /* renamed from: e */
    public final void m8069e() {
        m8070d();
        this.f62571b.mo8010a();
        this.f62583n.mo8052c(this);
        C22369l.C22375d c22375d = this.f62588s;
        if (c22375d != null) {
            synchronized (C22369l.this) {
                c22375d.f62151a.m8261h(c22375d.f62152b);
            }
            this.f62588s = null;
        }
    }

    /* renamed from: f */
    public final Drawable m8068f() {
        int i;
        if (this.f62594y == null) {
            AbstractC22585a<?> abstractC22585a = this.f62579j;
            Drawable drawable = abstractC22585a.f62539o;
            this.f62594y = drawable;
            if (drawable == null && (i = abstractC22585a.f62540p) > 0) {
                this.f62594y = m8064j(i);
            }
        }
        return this.f62594y;
    }

    /* renamed from: g */
    public final Drawable m8067g() {
        int i;
        if (this.f62593x == null) {
            AbstractC22585a<?> abstractC22585a = this.f62579j;
            Drawable drawable = abstractC22585a.f62531g;
            this.f62593x = drawable;
            if (drawable == null && (i = abstractC22585a.f62532h) > 0) {
                this.f62593x = m8064j(i);
            }
        }
        return this.f62593x;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00f0 A[Catch: all -> 0x011b, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x0024, B:8:0x0032, B:10:0x0043, B:15:0x0050, B:16:0x0062, B:18:0x0064, B:21:0x0074, B:23:0x007c, B:24:0x0088, B:26:0x008a, B:28:0x00a3, B:29:0x00b2, B:31:0x00bd, B:36:0x00cf, B:38:0x00d8, B:45:0x00f0, B:46:0x00fd, B:46:0x00fd, B:48:0x0103, B:50:0x010c, B:52:0x010e, B:53:0x011a), top: B:59:0x0007 }] */
    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo8066h() {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1476r.C22593j.mo8066h():void");
    }

    /* renamed from: i */
    public final boolean m8065i() {
        AbstractC22588e abstractC22588e = this.f62574e;
        return abstractC22588e == null || !abstractC22588e.mo8080a();
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    public boolean isComplete() {
        boolean z;
        synchronized (this.f62572c) {
            z = this.f62591v == EnumC22594a.COMPLETE;
        }
        return z;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    public boolean isRunning() {
        boolean z;
        synchronized (this.f62572c) {
            EnumC22594a enumC22594a = this.f62591v;
            if (enumC22594a != EnumC22594a.RUNNING && enumC22594a != EnumC22594a.WAITING_FOR_SIZE) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: j */
    public final Drawable m8064j(int i) {
        Resources.Theme theme = this.f62579j.f62545u;
        if (theme == null) {
            theme = this.f62575f.getTheme();
        }
        C22226e c22226e = this.f62576g;
        return C22528a.m8160a(c22226e, c22226e, i, theme);
    }

    /* renamed from: k */
    public final void m8063k(C22387r c22387r, int i) {
        boolean z;
        this.f62571b.mo8010a();
        synchronized (this.f62572c) {
            Objects.requireNonNull(c22387r);
            int i2 = this.f62576g.f61745i;
            if (i2 <= i) {
                String str = "Load failed for " + this.f62577h + " with size [" + this.f62595z + "x" + this.f62567A + "]";
                if (i2 <= 4) {
                    ArrayList arrayList = new ArrayList();
                    c22387r.m8256a(c22387r, arrayList);
                    int size = arrayList.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        Throwable th = (Throwable) arrayList.get(i3);
                    }
                }
            }
            this.f62588s = null;
            this.f62591v = EnumC22594a.FAILED;
            this.f62568B = true;
            List<AbstractC22590g<R>> list = this.f62584o;
            if (list != null) {
                Iterator<AbstractC22590g<R>> it = list.iterator();
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    z2 |= it.next().onLoadFailed(c22387r, this.f62577h, this.f62583n, m8065i());
                }
            } else {
                z = false;
            }
            AbstractC22590g<R> abstractC22590g = this.f62573d;
            if (!(z | (abstractC22590g != null && abstractC22590g.onLoadFailed(c22387r, this.f62577h, this.f62583n, m8065i())))) {
                m8060n();
            }
            this.f62568B = false;
            AbstractC22588e abstractC22588e = this.f62574e;
            if (abstractC22588e != null) {
                abstractC22588e.mo8076g(this);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: l */
    public void m8062l(AbstractC22394w<?> abstractC22394w, EnumC22258a enumC22258a) {
        Throwable th;
        this.f62571b.mo8010a();
        AbstractC22394w<?> abstractC22394w2 = null;
        try {
            synchronized (this.f62572c) {
                try {
                    this.f62588s = null;
                    if (abstractC22394w == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected to receive a Resource<R> with an object of ");
                        sb.append(this.f62578i);
                        sb.append(" inside, but instead got null.");
                        m8063k(new C22387r(sb.toString()), 5);
                        return;
                    }
                    Object obj = abstractC22394w.get();
                    try {
                        if (obj != null && this.f62578i.isAssignableFrom(obj.getClass())) {
                            AbstractC22588e abstractC22588e = this.f62574e;
                            if (abstractC22588e == null || abstractC22588e.mo8077f(this)) {
                                m8061m(abstractC22394w, obj, enumC22258a);
                                return;
                            }
                            this.f62587r = null;
                            this.f62591v = EnumC22594a.COMPLETE;
                            this.f62590u.m8270f(abstractC22394w);
                            return;
                        }
                        this.f62587r = null;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Expected to receive an object of ");
                        sb2.append(this.f62578i);
                        sb2.append(" but instead got ");
                        sb2.append(obj != null ? obj.getClass() : "");
                        sb2.append("{");
                        sb2.append(obj);
                        sb2.append("} inside Resource{");
                        sb2.append(abstractC22394w);
                        sb2.append("}.");
                        sb2.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        m8063k(new C22387r(sb2.toString()), 5);
                        this.f62590u.m8270f(abstractC22394w);
                    } catch (Throwable th2) {
                        th = th2;
                        abstractC22394w2 = abstractC22394w;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    abstractC22394w = null;
                }
            }
        } catch (Throwable th4) {
            if (abstractC22394w2 != null) {
                this.f62590u.m8270f(abstractC22394w2);
            }
            throw th4;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: m */
    public final void m8061m(AbstractC22394w<R> abstractC22394w, R r, EnumC22258a enumC22258a) {
        boolean z;
        boolean m8065i = m8065i();
        this.f62591v = EnumC22594a.COMPLETE;
        this.f62587r = abstractC22394w;
        if (this.f62576g.f61745i <= 3) {
            StringBuilder m8728C = C22128a.m8728C("Finished loading ");
            m8728C.append(r.getClass().getSimpleName());
            m8728C.append(" from ");
            m8728C.append(enumC22258a);
            m8728C.append(" for ");
            m8728C.append(this.f62577h);
            m8728C.append(" with size [");
            m8728C.append(this.f62595z);
            m8728C.append("x");
            m8728C.append(this.f62567A);
            m8728C.append("] in ");
            m8728C.append(C22619f.m8031a(this.f62589t));
            m8728C.append(" ms");
            m8728C.toString();
        }
        this.f62568B = true;
        try {
            List<AbstractC22590g<R>> list = this.f62584o;
            if (list != null) {
                Iterator<AbstractC22590g<R>> it = list.iterator();
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    z2 |= it.next().onResourceReady(r, this.f62577h, this.f62583n, enumC22258a, m8065i);
                }
            } else {
                z = false;
            }
            AbstractC22590g<R> abstractC22590g = this.f62573d;
            if (!((abstractC22590g != null && abstractC22590g.onResourceReady(r, this.f62577h, this.f62583n, enumC22258a, m8065i)) | z)) {
                this.f62583n.mo8050e(r, this.f62585p.mo8037a(enumC22258a, m8065i));
            }
            this.f62568B = false;
            AbstractC22588e abstractC22588e = this.f62574e;
            if (abstractC22588e == null) {
                return;
            }
            abstractC22588e.mo8079d(this);
        } catch (Throwable th) {
            this.f62568B = false;
            throw th;
        }
    }

    /* renamed from: n */
    public final void m8060n() {
        int i;
        AbstractC22588e abstractC22588e = this.f62574e;
        if (!(abstractC22588e == null || abstractC22588e.mo8078e(this))) {
            return;
        }
        Drawable drawable = null;
        if (this.f62577h == null) {
            drawable = m8068f();
        }
        Drawable drawable2 = drawable;
        if (drawable == null) {
            if (this.f62592w == null) {
                AbstractC22585a<?> abstractC22585a = this.f62579j;
                Drawable drawable3 = abstractC22585a.f62529e;
                this.f62592w = drawable3;
                if (drawable3 == null && (i = abstractC22585a.f62530f) > 0) {
                    this.f62592w = m8064j(i);
                }
            }
            drawable2 = this.f62592w;
        }
        Drawable drawable4 = drawable2;
        if (drawable2 == null) {
            drawable4 = m8067g();
        }
        this.f62583n.mo8047i(drawable4);
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    public void pause() {
        synchronized (this.f62572c) {
            if (isRunning()) {
                clear();
            }
        }
    }
}
