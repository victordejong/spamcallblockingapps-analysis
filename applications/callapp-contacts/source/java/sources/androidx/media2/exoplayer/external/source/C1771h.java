package androidx.media2.exoplayer.external.source;

import android.os.Handler;
import android.os.Message;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.source.AbstractC1759an;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.upstream.AbstractC1963b;
import androidx.media2.exoplayer.external.upstream.AbstractC1990w;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.media2.exoplayer.external.source.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h.class */
public final class C1771h extends AbstractC1765d<C1776d> {

    /* renamed from: a */
    private final List<C1776d> f6991a;

    /* renamed from: b */
    private final Set<C1775c> f6992b;

    /* renamed from: c */
    private Handler f6993c;

    /* renamed from: d */
    private final List<C1776d> f6994d;

    /* renamed from: e */
    private final Map<AbstractC1840s, C1776d> f6995e;

    /* renamed from: f */
    private final Map<Object, C1776d> f6996f;

    /* renamed from: g */
    private final Set<C1776d> f6997g;

    /* renamed from: h */
    private final boolean f6998h;

    /* renamed from: i */
    private final boolean f6999i;

    /* renamed from: j */
    private boolean f7000j;

    /* renamed from: k */
    private Set<C1775c> f7001k;

    /* renamed from: l */
    private AbstractC1759an f7002l;

    /* renamed from: androidx.media2.exoplayer.external.source.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h$a.class */
    public static final class C1773a extends AbstractC1718a {

        /* renamed from: b */
        private final int f7003b;

        /* renamed from: c */
        private final int f7004c;

        /* renamed from: d */
        private final int[] f7005d;

        /* renamed from: e */
        private final int[] f7006e;

        /* renamed from: f */
        private final AbstractC1383al[] f7007f;

        /* renamed from: g */
        private final Object[] f7008g;

        /* renamed from: h */
        private final HashMap<Object, Integer> f7009h = new HashMap<>();

        public C1773a(Collection<C1776d> collection, AbstractC1759an abstractC1759an, boolean z) {
            super(z, abstractC1759an);
            int size = collection.size();
            this.f7005d = new int[size];
            this.f7006e = new int[size];
            this.f7007f = new AbstractC1383al[size];
            this.f7008g = new Object[size];
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            for (C1776d c1776d : collection) {
                this.f7007f[i3] = c1776d.f7012a.f7344a;
                this.f7006e[i3] = i;
                this.f7005d[i3] = i2;
                i += this.f7007f[i3].mo42094b();
                i2 += this.f7007f[i3].mo42093c();
                this.f7008g[i3] = c1776d.f7013b;
                this.f7009h.put(this.f7008g[i3], Integer.valueOf(i3));
                i3++;
            }
            this.f7003b = i;
            this.f7004c = i2;
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: b */
        public final int mo42094b() {
            return this.f7003b;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1718a
        /* renamed from: b */
        protected final int mo42253b(int i) {
            return C1996ac.m41647a(this.f7005d, i + 1);
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1383al
        /* renamed from: c */
        public final int mo42093c() {
            return this.f7004c;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1718a
        /* renamed from: c */
        protected final int mo42252c(int i) {
            return C1996ac.m41647a(this.f7006e, i + 1);
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1718a
        /* renamed from: d */
        protected final int mo42250d(Object obj) {
            Integer num = this.f7009h.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1718a
        /* renamed from: d */
        protected final AbstractC1383al mo42251d(int i) {
            return this.f7007f[i];
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1718a
        /* renamed from: e */
        protected final int mo42249e(int i) {
            return this.f7005d[i];
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1718a
        /* renamed from: f */
        protected final int mo42248f(int i) {
            return this.f7006e[i];
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1718a
        /* renamed from: g */
        protected final Object mo42247g(int i) {
            return this.f7008g[i];
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h$b.class */
    static final class C1774b extends AbstractC1762b {
        private C1774b() {
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
        /* renamed from: a */
        public final AbstractC1840s mo42072a(AbstractC1842t.C1843a c1843a, AbstractC1963b abstractC1963b, long j) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
        /* renamed from: a */
        public final void mo42073a(AbstractC1840s abstractC1840s) {
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1762b
        /* renamed from: a */
        protected final void mo42102a(AbstractC1990w abstractC1990w) {
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1762b
        /* renamed from: c */
        protected final void mo42097c() {
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1762b, androidx.media2.exoplayer.external.source.AbstractC1842t
        /* renamed from: e */
        public final Object mo42066e() {
            return null;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
        /* renamed from: f */
        public final void mo42065f() throws IOException {
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.h$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h$c.class */
    public static final class C1775c {

        /* renamed from: a */
        final Handler f7010a;

        /* renamed from: b */
        final Runnable f7011b;

        public C1775c(Handler handler, Runnable runnable) {
            this.f7010a = handler;
            this.f7011b = runnable;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.h$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h$d.class */
    public static final class C1776d {

        /* renamed from: a */
        public final C1837r f7012a;

        /* renamed from: d */
        public int f7015d;

        /* renamed from: e */
        public int f7016e;

        /* renamed from: f */
        public boolean f7017f;

        /* renamed from: c */
        public final List<AbstractC1842t.C1843a> f7014c = new ArrayList();

        /* renamed from: b */
        public final Object f7013b = new Object();

        public C1776d(AbstractC1842t abstractC1842t, boolean z) {
            this.f7012a = new C1837r(abstractC1842t, z);
        }

        /* renamed from: a */
        public final void m42246a(int i, int i2) {
            this.f7015d = i;
            this.f7016e = i2;
            this.f7017f = false;
            this.f7014c.clear();
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.h$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h$e.class */
    public static final class C1777e<T> {

        /* renamed from: a */
        public final int f7018a;

        /* renamed from: b */
        public final T f7019b;

        /* renamed from: c */
        public final C1775c f7020c;

        public C1777e(int i, T t, C1775c c1775c) {
            this.f7018a = i;
            this.f7019b = t;
            this.f7020c = c1775c;
        }
    }

    public C1771h(boolean z, AbstractC1759an abstractC1759an, AbstractC1842t... abstractC1842tArr) {
        this(z, false, abstractC1759an, abstractC1842tArr);
    }

    public C1771h(boolean z, boolean z2, AbstractC1759an abstractC1759an, AbstractC1842t... abstractC1842tArr) {
        for (AbstractC1842t abstractC1842t : abstractC1842tArr) {
            C1993a.m41690a(abstractC1842t);
        }
        this.f7002l = abstractC1759an.mo42295a() > 0 ? abstractC1759an.mo42287d() : abstractC1759an;
        this.f6995e = new IdentityHashMap();
        this.f6996f = new HashMap();
        this.f6991a = new ArrayList();
        this.f6994d = new ArrayList();
        this.f7001k = new HashSet();
        this.f6992b = new HashSet();
        this.f6997g = new HashSet();
        this.f6998h = z;
        this.f6999i = z2;
        m42263a((Collection<AbstractC1842t>) Arrays.asList(abstractC1842tArr));
    }

    public C1771h(boolean z, AbstractC1842t... abstractC1842tArr) {
        this(z, new AbstractC1759an.C1760a(0), abstractC1842tArr);
    }

    public C1771h(AbstractC1842t... abstractC1842tArr) {
        this(false, abstractC1842tArr);
    }

    /* renamed from: a */
    private AbstractC1842t m42271a(int i) {
        C1837r c1837r;
        synchronized (this) {
            c1837r = this.f6991a.get(0).f7012a;
        }
        return c1837r;
    }

    /* renamed from: a */
    private void m42269a(int i, int i2, int i3) {
        while (i < this.f6994d.size()) {
            C1776d c1776d = this.f6994d.get(i);
            c1776d.f7015d += i2;
            c1776d.f7016e += i3;
            i++;
        }
    }

    /* renamed from: a */
    private void m42268a(int i, Collection<C1776d> collection) {
        for (C1776d c1776d : collection) {
            if (i > 0) {
                C1776d c1776d2 = this.f6994d.get(i - 1);
                c1776d.m42246a(i, c1776d2.f7016e + c1776d2.f7012a.f7344a.mo42094b());
            } else {
                c1776d.m42246a(i, 0);
            }
            m42269a(i, 1, c1776d.f7012a.f7344a.mo42094b());
            this.f6994d.add(i, c1776d);
            this.f6996f.put(c1776d.f7013b, c1776d);
            m42278a((C1771h) c1776d, (AbstractC1842t) c1776d.f7012a);
            if (!m42283d() || !this.f6995e.isEmpty()) {
                m42277b((C1771h) c1776d);
            } else {
                this.f6997g.add(c1776d);
            }
            i++;
        }
    }

    /* renamed from: a */
    private void m42266a(C1775c c1775c) {
        if (!this.f7000j) {
            m42255k().obtainMessage(4).sendToTarget();
            this.f7000j = true;
        }
        if (c1775c != null) {
            this.f7001k.add(c1775c);
        }
    }

    /* renamed from: a */
    private void m42265a(C1776d c1776d) {
        if (!c1776d.f7017f || !c1776d.f7014c.isEmpty()) {
            return;
        }
        this.f6997g.remove(c1776d);
        m42275c((C1771h) c1776d);
    }

    /* renamed from: a */
    private void m42262a(Set<C1775c> set) {
        synchronized (this) {
            for (C1775c c1775c : set) {
                c1775c.f7010a.post(c1775c.f7011b);
            }
            this.f6992b.removeAll(set);
        }
    }

    /* renamed from: b */
    private void m42260b(int i, int i2) {
        C1993a.m41688a(true);
        Handler handler = this.f6993c;
        C1996ac.m41651a(this.f6991a, i, i2);
        if (handler != null) {
            handler.obtainMessage(1, new C1777e(i, Integer.valueOf(i2), null)).sendToTarget();
        }
    }

    /* renamed from: j */
    private void m42256j() {
        this.f7000j = false;
        Set<C1775c> set = this.f7001k;
        this.f7001k = new HashSet();
        m42285a((AbstractC1383al) new C1773a(this.f6994d, this.f7002l, this.f6998h));
        m42255k().obtainMessage(5, set).sendToTarget();
    }

    /* renamed from: k */
    private Handler m42255k() {
        return (Handler) C1993a.m41690a(this.f6993c);
    }

    /* renamed from: l */
    private void m42254l() {
        Iterator<C1776d> it2 = this.f6997g.iterator();
        while (it2.hasNext()) {
            C1776d next = it2.next();
            if (next.f7014c.isEmpty()) {
                m42277b((C1771h) next);
                it2.remove();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ int mo42264a(C1776d c1776d, int i) {
        return i + c1776d.f7016e;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final AbstractC1840s mo42072a(AbstractC1842t.C1843a c1843a, AbstractC1963b abstractC1963b, long j) {
        Object b = C1773a.m42379b(c1843a.f7356a);
        AbstractC1842t.C1843a m42063a = c1843a.m42063a(C1773a.m42378c(c1843a.f7356a));
        C1776d c1776d = this.f6996f.get(b);
        C1776d c1776d2 = c1776d;
        if (c1776d == null) {
            c1776d2 = new C1776d(new C1774b(), this.f6999i);
            c1776d2.f7017f = true;
            m42278a((C1771h) c1776d2, (AbstractC1842t) c1776d2.f7012a);
        }
        this.f6997g.add(c1776d2);
        m42279a((C1771h) c1776d2);
        c1776d2.f7014c.add(m42063a);
        C1835q mo42072a = c1776d2.f7012a.mo42072a(m42063a, abstractC1963b, j);
        this.f6995e.put(mo42072a, c1776d2);
        m42254l();
        return mo42072a;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    protected final /* synthetic */ AbstractC1842t.C1843a mo42101a(C1776d c1776d, AbstractC1842t.C1843a c1843a) {
        C1776d c1776d2 = c1776d;
        for (int i = 0; i < c1776d2.f7014c.size(); i++) {
            if (c1776d2.f7014c.get(i).f7359d == c1843a.f7359d) {
                return c1843a.m42063a(C1773a.m42380a(c1776d2.f7013b, c1843a.f7356a));
            }
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: a */
    protected final void mo42272a() {
    }

    /* renamed from: a */
    public final void m42270a(int i, int i2) {
        synchronized (this) {
            m42260b(i, i2);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: a */
    public final void mo42073a(AbstractC1840s abstractC1840s) {
        C1776d c1776d = (C1776d) C1993a.m41690a(this.f6995e.remove(abstractC1840s));
        c1776d.f7012a.mo42073a(abstractC1840s);
        c1776d.f7014c.remove(((C1835q) abstractC1840s).f7336b);
        if (!this.f6995e.isEmpty()) {
            m42254l();
        }
        m42265a(c1776d);
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: a */
    public final void mo42102a(AbstractC1990w abstractC1990w) {
        synchronized (this) {
            super.mo42102a(abstractC1990w);
            this.f6993c = new Handler(new Handler.Callback(this) { // from class: androidx.media2.exoplayer.external.source.i

                /* renamed from: a */
                private final C1771h f7313a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f7313a = this;
                }

                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    return this.f7313a.m42267a(message);
                }
            });
            if (this.f6991a.isEmpty()) {
                m42256j();
                return;
            }
            this.f7002l = this.f7002l.mo42293a(0, this.f6991a.size());
            m42268a(0, this.f6991a);
            m42266a((C1775c) null);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d
    /* renamed from: a */
    protected final /* synthetic */ void mo42100a(C1776d c1776d, AbstractC1842t abstractC1842t, AbstractC1383al abstractC1383al) {
        C1776d c1776d2 = c1776d;
        if (c1776d2 != null) {
            if (c1776d2.f7015d + 1 < this.f6994d.size()) {
                int mo42094b = abstractC1383al.mo42094b() - (this.f6994d.get(c1776d2.f7015d + 1).f7016e - c1776d2.f7016e);
                if (mo42094b != 0) {
                    m42269a(c1776d2.f7015d + 1, 0, mo42094b);
                }
            }
            m42266a((C1775c) null);
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final void m42263a(Collection<AbstractC1842t> collection) {
        synchronized (this) {
            int size = this.f6991a.size();
            C1993a.m41688a(true);
            Handler handler = this.f6993c;
            for (AbstractC1842t abstractC1842t : collection) {
                C1993a.m41690a(abstractC1842t);
            }
            ArrayList arrayList = new ArrayList(collection.size());
            for (AbstractC1842t abstractC1842t2 : collection) {
                arrayList.add(new C1776d(abstractC1842t2, this.f6999i));
            }
            this.f6991a.addAll(size, arrayList);
            if (handler != null && !collection.isEmpty()) {
                handler.obtainMessage(0, new C1777e(size, arrayList, null)).sendToTarget();
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ boolean m42267a(Message message) {
        int i = message.what;
        if (i == 0) {
            C1777e c1777e = (C1777e) C1996ac.m41659a(message.obj);
            this.f7002l = this.f7002l.mo42293a(c1777e.f7018a, ((Collection) c1777e.f7019b).size());
            m42268a(c1777e.f7018a, (Collection) c1777e.f7019b);
            m42266a(c1777e.f7020c);
            return true;
        } else if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    C1777e c1777e2 = (C1777e) C1996ac.m41659a(message.obj);
                    this.f7002l = (AbstractC1759an) c1777e2.f7019b;
                    m42266a(c1777e2.f7020c);
                    return true;
                } else if (i == 4) {
                    m42256j();
                    return true;
                } else if (i != 5) {
                    throw new IllegalStateException();
                } else {
                    m42262a((Set) C1996ac.m41659a(message.obj));
                    return true;
                }
            }
            C1777e c1777e3 = (C1777e) C1996ac.m41659a(message.obj);
            AbstractC1759an mo42289b = this.f7002l.mo42289b(c1777e3.f7018a, c1777e3.f7018a + 1);
            this.f7002l = mo42289b;
            this.f7002l = mo42289b.mo42293a(((Integer) c1777e3.f7019b).intValue(), 1);
            int i2 = c1777e3.f7018a;
            int intValue = ((Integer) c1777e3.f7019b).intValue();
            int min = Math.min(i2, intValue);
            int max = Math.max(i2, intValue);
            int i3 = this.f6994d.get(min).f7016e;
            List<C1776d> list = this.f6994d;
            list.add(intValue, list.remove(i2));
            while (min <= max) {
                C1776d c1776d = this.f6994d.get(min);
                c1776d.f7015d = min;
                c1776d.f7016e = i3;
                i3 += c1776d.f7012a.f7344a.mo42094b();
                min++;
            }
            m42266a(c1777e3.f7020c);
            return true;
        } else {
            C1777e c1777e4 = (C1777e) C1996ac.m41659a(message.obj);
            int i4 = c1777e4.f7018a;
            int intValue2 = ((Integer) c1777e4.f7019b).intValue();
            if (i4 == 0 && intValue2 == this.f7002l.mo42295a()) {
                this.f7002l = this.f7002l.mo42287d();
            } else {
                this.f7002l = this.f7002l.mo42289b(i4, intValue2);
            }
            while (true) {
                intValue2--;
                if (intValue2 < i4) {
                    m42266a(c1777e4.f7020c);
                    return true;
                }
                C1776d remove = this.f6994d.remove(intValue2);
                this.f6996f.remove(remove.f7013b);
                m42269a(intValue2, -1, -remove.f7012a.f7344a.mo42094b());
                remove.f7017f = true;
                m42265a(remove);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: b */
    public final void mo42261b() {
        super.mo42261b();
        this.f6997g.clear();
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1765d, androidx.media2.exoplayer.external.source.AbstractC1762b
    /* renamed from: c */
    public final void mo42097c() {
        synchronized (this) {
            super.mo42097c();
            this.f6994d.clear();
            this.f6997g.clear();
            this.f6996f.clear();
            this.f7002l = this.f7002l.mo42287d();
            Handler handler = this.f6993c;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                this.f6993c = null;
            }
            this.f7000j = false;
            this.f7001k.clear();
            m42262a(this.f6992b);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1762b, androidx.media2.exoplayer.external.source.AbstractC1842t
    /* renamed from: e */
    public final Object mo42066e() {
        return null;
    }

    /* renamed from: g */
    public final AbstractC1842t m42259g() {
        AbstractC1842t m42271a;
        synchronized (this) {
            m42271a = m42271a(0);
            m42260b(0, 1);
        }
        return m42271a;
    }

    /* renamed from: h */
    public final void m42258h() {
        synchronized (this) {
            m42270a(0, m42257i());
        }
    }

    /* renamed from: i */
    public final int m42257i() {
        int size;
        synchronized (this) {
            size = this.f6991a.size();
        }
        return size;
    }
}
