package p193e.p1451f.p1452a.p1457n.p1460o;

import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22226e;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.AbstractC22270l;
import p193e.p1451f.p1452a.p1457n.C22264h;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e;
import p193e.p1451f.p1452a.p1457n.p1458n.C22278f;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g;
import p193e.p1451f.p1452a.p1457n.p1460o.C22362j;
import p193e.p1451f.p1452a.p1457n.p1460o.C22369l;
import p193e.p1451f.p1452a.p1457n.p1460o.C22376m;
import p193e.p1451f.p1452a.p1457n.p1460o.C22385q;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22512n;
import p193e.p1451f.p1452a.p1480t.C22619f;
import p193e.p1451f.p1452a.p1480t.p1481k.AbstractC22633d;
import p193e.p1451f.p1452a.p1480t.p1481k.C22625a;
/* renamed from: e.f.a.n.o.i */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/i.class */
public class RunnableC22354i<R> implements AbstractC22351g.AbstractC22352a, Runnable, Comparable<RunnableC22354i<?>>, C22625a.AbstractC22629d {

    /* renamed from: A */
    public EnumC22258a f62069A;

    /* renamed from: B */
    public AbstractC22274d<?> f62070B;

    /* renamed from: C */
    public volatile AbstractC22351g f62071C;

    /* renamed from: D */
    public volatile boolean f62072D;

    /* renamed from: E */
    public volatile boolean f62073E;

    /* renamed from: d */
    public final AbstractC22358d f62077d;

    /* renamed from: e */
    public final AbstractC26555e<RunnableC22354i<?>> f62078e;

    /* renamed from: h */
    public C22226e f62081h;

    /* renamed from: i */
    public AbstractC22263f f62082i;

    /* renamed from: j */
    public EnumC22227f f62083j;

    /* renamed from: k */
    public C22383o f62084k;

    /* renamed from: l */
    public int f62085l;

    /* renamed from: m */
    public int f62086m;

    /* renamed from: n */
    public AbstractC22364k f62087n;

    /* renamed from: o */
    public C22267i f62088o;

    /* renamed from: p */
    public AbstractC22355a<R> f62089p;

    /* renamed from: q */
    public int f62090q;

    /* renamed from: r */
    public EnumC22361g f62091r;

    /* renamed from: s */
    public EnumC22360f f62092s;

    /* renamed from: t */
    public long f62093t;

    /* renamed from: u */
    public boolean f62094u;

    /* renamed from: v */
    public Object f62095v;

    /* renamed from: w */
    public Thread f62096w;

    /* renamed from: x */
    public AbstractC22263f f62097x;

    /* renamed from: y */
    public AbstractC22263f f62098y;

    /* renamed from: z */
    public Object f62099z;

    /* renamed from: a */
    public final C22353h<R> f62074a = new C22353h<>();

    /* renamed from: b */
    public final List<Throwable> f62075b = new ArrayList();

    /* renamed from: c */
    public final AbstractC22633d f62076c = new AbstractC22633d.C22635b();

    /* renamed from: f */
    public final C22357c<?> f62079f = new C22357c<>();

    /* renamed from: g */
    public final C22359e f62080g = new C22359e();

    /* renamed from: e.f.a.n.o.i$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/i$a.class */
    public interface AbstractC22355a<R> {
    }

    /* renamed from: e.f.a.n.o.i$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/i$b.class */
    public final class C22356b<Z> implements C22362j.AbstractC22363a<Z> {

        /* renamed from: a */
        public final EnumC22258a f62100a;

        public C22356b(EnumC22258a enumC22258a) {
            RunnableC22354i.this = r4;
            this.f62100a = enumC22258a;
        }
    }

    /* renamed from: e.f.a.n.o.i$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/i$c.class */
    public static class C22357c<Z> {

        /* renamed from: a */
        public AbstractC22263f f62102a;

        /* renamed from: b */
        public AbstractC22270l<Z> f62103b;

        /* renamed from: c */
        public C22392v<Z> f62104c;
    }

    /* renamed from: e.f.a.n.o.i$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/i$d.class */
    public interface AbstractC22358d {
    }

    /* renamed from: e.f.a.n.o.i$e */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/i$e.class */
    public static class C22359e {

        /* renamed from: a */
        public boolean f62105a;

        /* renamed from: b */
        public boolean f62106b;

        /* renamed from: c */
        public boolean f62107c;

        /* renamed from: a */
        public final boolean m8281a(boolean z) {
            return (this.f62107c || z || this.f62106b) && this.f62105a;
        }
    }

    /* renamed from: e.f.a.n.o.i$f */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/i$f.class */
    public enum EnumC22360f {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* renamed from: e.f.a.n.o.i$g */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/i$g.class */
    public enum EnumC22361g {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    public RunnableC22354i(AbstractC22358d abstractC22358d, AbstractC26555e<RunnableC22354i<?>> abstractC26555e) {
        this.f62077d = abstractC22358d;
        this.f62078e = abstractC26555e;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final <Data> AbstractC22394w<R> m8295a(AbstractC22274d<?> abstractC22274d, Data data, EnumC22258a enumC22258a) throws C22387r {
        if (data == null) {
            abstractC22274d.mo8219b();
            return null;
        }
        try {
            int i = C22619f.f62640b;
            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            AbstractC22394w<R> m8293e = m8293e(data, enumC22258a);
            if (Log.isLoggable("DecodeJob", 2)) {
                m8287m("Decoded result " + m8293e, elapsedRealtimeNanos, null);
            }
            abstractC22274d.mo8219b();
            return m8293e;
        } catch (Throwable th) {
            abstractC22274d.mo8219b();
            throw th;
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g.AbstractC22352a
    /* renamed from: c */
    public void mo8294c(AbstractC22263f abstractC22263f, Exception exc, AbstractC22274d<?> abstractC22274d, EnumC22258a enumC22258a) {
        abstractC22274d.mo8219b();
        C22387r c22387r = new C22387r("Fetching data failed", exc);
        Class<?> mo8220a = abstractC22274d.mo8220a();
        c22387r.f62204b = abstractC22263f;
        c22387r.f62205c = enumC22258a;
        c22387r.f62206d = mo8220a;
        this.f62075b.add(c22387r);
        if (Thread.currentThread() == this.f62096w) {
            m8284p();
            return;
        }
        this.f62092s = EnumC22360f.SWITCH_TO_SOURCE_SERVICE;
        ((C22376m) this.f62089p).m8260i(this);
    }

    @Override // java.lang.Comparable
    public int compareTo(RunnableC22354i<?> runnableC22354i) {
        RunnableC22354i<?> runnableC22354i2 = runnableC22354i;
        int ordinal = this.f62083j.ordinal() - runnableC22354i2.f62083j.ordinal();
        int i = ordinal;
        if (ordinal == 0) {
            i = this.f62090q - runnableC22354i2.f62090q;
        }
        return i;
    }

    @Override // p193e.p1451f.p1452a.p1480t.p1481k.C22625a.AbstractC22629d
    /* renamed from: d */
    public AbstractC22633d mo8012d() {
        return this.f62076c;
    }

    /* renamed from: e */
    public final <Data> AbstractC22394w<R> m8293e(Data data, EnumC22258a enumC22258a) throws C22387r {
        C22267i c22267i;
        AbstractC22276e<Data> mo8164b;
        C22391u<Data, ?, R> m8299d = this.f62074a.m8299d(data.getClass());
        C22267i c22267i2 = this.f62088o;
        if (Build.VERSION.SDK_INT < 26) {
            c22267i = c22267i2;
        } else {
            boolean z = enumC22258a == EnumC22258a.RESOURCE_DISK_CACHE || this.f62074a.f62068r;
            C22264h<Boolean> c22264h = C22512n.f62389i;
            Boolean bool = (Boolean) c22267i2.m8361c(c22264h);
            if (bool != null) {
                c22267i = c22267i2;
                if (bool.booleanValue()) {
                    if (z) {
                        c22267i = c22267i2;
                    }
                }
            }
            c22267i = new C22267i();
            c22267i.m8360d(this.f62088o);
            c22267i.f61901b.put(c22264h, Boolean.valueOf(z));
        }
        C22278f c22278f = this.f62081h.f61738b.f61756e;
        synchronized (c22278f) {
            AbstractC22276e.AbstractC22277a<?> abstractC22277a = c22278f.f61913a.get(data.getClass());
            AbstractC22276e.AbstractC22277a<?> abstractC22277a2 = abstractC22277a;
            if (abstractC22277a == null) {
                Iterator<AbstractC22276e.AbstractC22277a<?>> it = c22278f.f61913a.values().iterator();
                do {
                    abstractC22277a2 = abstractC22277a;
                    if (!it.hasNext()) {
                        break;
                    }
                    abstractC22277a2 = it.next();
                } while (!abstractC22277a2.mo8165a().isAssignableFrom(data.getClass()));
            }
            AbstractC22276e.AbstractC22277a<?> abstractC22277a3 = abstractC22277a2;
            if (abstractC22277a2 == null) {
                abstractC22277a3 = C22278f.f61912b;
            }
            mo8164b = abstractC22277a3.mo8164b(data);
        }
        try {
            return m8299d.m8250a(mo8164b, c22267i, this.f62085l, this.f62086m, new C22356b(enumC22258a));
        } finally {
            mo8164b.mo8166b();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    public final void m8292f() {
        C22392v c22392v;
        boolean m8281a;
        if (Log.isLoggable("DecodeJob", 2)) {
            long j = this.f62093t;
            StringBuilder m8728C = C22128a.m8728C("data: ");
            m8728C.append(this.f62099z);
            m8728C.append(", cache key: ");
            m8728C.append(this.f62097x);
            m8728C.append(", fetcher: ");
            m8728C.append(this.f62070B);
            m8287m("Retrieved data", j, m8728C.toString());
        }
        C22392v c22392v2 = null;
        try {
            c22392v = m8295a(this.f62070B, this.f62099z, this.f62069A);
        } catch (C22387r e) {
            AbstractC22263f abstractC22263f = this.f62098y;
            EnumC22258a enumC22258a = this.f62069A;
            e.f62204b = abstractC22263f;
            e.f62205c = enumC22258a;
            e.f62206d = null;
            this.f62075b.add(e);
            c22392v = null;
        }
        if (c22392v == null) {
            m8284p();
            return;
        }
        EnumC22258a enumC22258a2 = this.f62069A;
        if (c22392v instanceof AbstractC22389s) {
            ((AbstractC22389s) c22392v).initialize();
        }
        C22392v c22392v3 = c22392v;
        if (this.f62079f.f62104c != null) {
            c22392v2 = C22392v.m8249e(c22392v);
            c22392v3 = c22392v2;
        }
        m8282r();
        C22376m<?> c22376m = (C22376m) this.f62089p;
        synchronized (c22376m) {
            c22376m.f62171q = c22392v3;
            c22376m.f62172r = enumC22258a2;
        }
        synchronized (c22376m) {
            c22376m.f62156b.mo8010a();
            if (c22376m.f62178x) {
                c22376m.f62171q.mo8162b();
                c22376m.m8262g();
            } else if (c22376m.f62155a.isEmpty()) {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            } else {
                if (c22376m.f62173s) {
                    throw new IllegalStateException("Already have resource");
                }
                C22376m.C22379c c22379c = c22376m.f62159e;
                AbstractC22394w<?> abstractC22394w = c22376m.f62171q;
                boolean z = c22376m.f62167m;
                AbstractC22263f abstractC22263f2 = c22376m.f62166l;
                C22385q.AbstractC22386a abstractC22386a = c22376m.f62157c;
                Objects.requireNonNull(c22379c);
                c22376m.f62176v = new C22385q<>(abstractC22394w, z, true, abstractC22263f2, abstractC22386a);
                c22376m.f62173s = true;
                C22376m.C22381e c22381e = c22376m.f62155a;
                Objects.requireNonNull(c22381e);
                ArrayList arrayList = new ArrayList(c22381e.f62185a);
                c22376m.m8264e(arrayList.size() + 1);
                ((C22369l) c22376m.f62160f).m8271e(c22376m, c22376m.f62166l, c22376m.f62176v);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C22376m.C22380d c22380d = (C22376m.C22380d) it.next();
                    c22380d.f62184b.execute(new C22376m.RunnableC22378b(c22380d.f62183a));
                }
                c22376m.m8265c();
            }
        }
        this.f62091r = EnumC22361g.ENCODE;
        try {
            C22357c<?> c22357c = this.f62079f;
            if (c22357c.f62104c != null) {
                ((C22369l.C22374c) this.f62077d).m8268a().mo8310a(c22357c.f62102a, new C22350f(c22357c.f62103b, c22357c.f62104c, this.f62088o));
                c22357c.f62104c.m8248f();
            }
            if (c22392v2 != null) {
                c22392v2.m8248f();
            }
            C22359e c22359e = this.f62080g;
            synchronized (c22359e) {
                c22359e.f62106b = true;
                m8281a = c22359e.m8281a(false);
            }
            if (!m8281a) {
                return;
            }
            m8285o();
        } catch (Throwable th) {
            if (c22392v2 != null) {
                c22392v2.m8248f();
            }
            throw th;
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g.AbstractC22352a
    /* renamed from: g */
    public void mo8291g() {
        this.f62092s = EnumC22360f.SWITCH_TO_SOURCE_SERVICE;
        ((C22376m) this.f62089p).m8260i(this);
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22351g.AbstractC22352a
    /* renamed from: h */
    public void mo8290h(AbstractC22263f abstractC22263f, Object obj, AbstractC22274d<?> abstractC22274d, EnumC22258a enumC22258a, AbstractC22263f abstractC22263f2) {
        this.f62097x = abstractC22263f;
        this.f62099z = obj;
        this.f62070B = abstractC22274d;
        this.f62069A = enumC22258a;
        this.f62098y = abstractC22263f2;
        if (Thread.currentThread() == this.f62096w) {
            m8292f();
            return;
        }
        this.f62092s = EnumC22360f.DECODE_DATA;
        ((C22376m) this.f62089p).m8260i(this);
    }

    /* renamed from: i */
    public final AbstractC22351g m8289i() {
        int ordinal = this.f62091r.ordinal();
        if (ordinal != 1) {
            if (ordinal == 2) {
                return new C22343d(this.f62074a, this);
            }
            if (ordinal == 3) {
                return new C22298a0(this.f62074a, this);
            }
            if (ordinal == 5) {
                return null;
            }
            StringBuilder m8728C = C22128a.m8728C("Unrecognized stage: ");
            m8728C.append(this.f62091r);
            throw new IllegalStateException(m8728C.toString());
        }
        return new C22395x(this.f62074a, this);
    }

    /* renamed from: j */
    public final EnumC22361g m8288j(EnumC22361g enumC22361g) {
        EnumC22361g enumC22361g2 = EnumC22361g.RESOURCE_CACHE;
        EnumC22361g enumC22361g3 = EnumC22361g.DATA_CACHE;
        EnumC22361g enumC22361g4 = EnumC22361g.FINISHED;
        int ordinal = enumC22361g.ordinal();
        if (ordinal == 0) {
            return this.f62087n.mo8277b() ? enumC22361g2 : m8288j(enumC22361g2);
        } else if (ordinal == 1) {
            return this.f62087n.mo8278a() ? enumC22361g3 : m8288j(enumC22361g3);
        } else if (ordinal == 2) {
            return this.f62094u ? enumC22361g4 : EnumC22361g.SOURCE;
        } else if (ordinal == 3 || ordinal == 5) {
            return enumC22361g4;
        } else {
            throw new IllegalArgumentException("Unrecognized stage: " + enumC22361g);
        }
    }

    /* renamed from: m */
    public final void m8287m(String str, long j, String str2) {
        StringBuilder m8696K = C22128a.m8696K(str, " in ");
        m8696K.append(C22619f.m8031a(j));
        m8696K.append(", load key: ");
        m8696K.append(this.f62084k);
        m8696K.append(str2 != null ? C22128a.m8543z2(", ", str2) : "");
        m8696K.append(", thread: ");
        m8696K.append(Thread.currentThread().getName());
        m8696K.toString();
    }

    /* renamed from: n */
    public final void m8286n() {
        boolean m8281a;
        m8282r();
        C22387r c22387r = new C22387r("Failed to load resource", new ArrayList(this.f62075b));
        C22376m<?> c22376m = (C22376m) this.f62089p;
        synchronized (c22376m) {
            c22376m.f62174t = c22387r;
        }
        synchronized (c22376m) {
            c22376m.f62156b.mo8010a();
            if (c22376m.f62178x) {
                c22376m.m8262g();
            } else if (c22376m.f62155a.isEmpty()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            } else {
                if (c22376m.f62175u) {
                    throw new IllegalStateException("Already failed once");
                }
                c22376m.f62175u = true;
                AbstractC22263f abstractC22263f = c22376m.f62166l;
                C22376m.C22381e c22381e = c22376m.f62155a;
                Objects.requireNonNull(c22381e);
                ArrayList arrayList = new ArrayList(c22381e.f62185a);
                c22376m.m8264e(arrayList.size() + 1);
                ((C22369l) c22376m.f62160f).m8271e(c22376m, abstractC22263f, null);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C22376m.C22380d c22380d = (C22376m.C22380d) it.next();
                    c22380d.f62184b.execute(new C22376m.RunnableC22377a(c22380d.f62183a));
                }
                c22376m.m8265c();
            }
        }
        C22359e c22359e = this.f62080g;
        synchronized (c22359e) {
            c22359e.f62107c = true;
            m8281a = c22359e.m8281a(false);
        }
        if (m8281a) {
            m8285o();
        }
    }

    /* renamed from: o */
    public final void m8285o() {
        C22359e c22359e = this.f62080g;
        synchronized (c22359e) {
            c22359e.f62106b = false;
            c22359e.f62105a = false;
            c22359e.f62107c = false;
        }
        C22357c<?> c22357c = this.f62079f;
        c22357c.f62102a = null;
        c22357c.f62103b = null;
        c22357c.f62104c = null;
        C22353h<R> c22353h = this.f62074a;
        c22353h.f62053c = null;
        c22353h.f62054d = null;
        c22353h.f62064n = null;
        c22353h.f62057g = null;
        c22353h.f62061k = null;
        c22353h.f62059i = null;
        c22353h.f62065o = null;
        c22353h.f62060j = null;
        c22353h.f62066p = null;
        c22353h.f62051a.clear();
        c22353h.f62062l = false;
        c22353h.f62052b.clear();
        c22353h.f62063m = false;
        this.f62072D = false;
        this.f62081h = null;
        this.f62082i = null;
        this.f62088o = null;
        this.f62083j = null;
        this.f62084k = null;
        this.f62089p = null;
        this.f62091r = null;
        this.f62071C = null;
        this.f62096w = null;
        this.f62097x = null;
        this.f62099z = null;
        this.f62069A = null;
        this.f62070B = null;
        this.f62093t = 0L;
        this.f62073E = false;
        this.f62095v = null;
        this.f62075b.clear();
        this.f62078e.mo1688b(this);
    }

    /* renamed from: p */
    public final void m8284p() {
        this.f62096w = Thread.currentThread();
        int i = C22619f.f62640b;
        this.f62093t = SystemClock.elapsedRealtimeNanos();
        boolean z = false;
        do {
            boolean z2 = z;
            if (!this.f62073E) {
                z2 = z;
                if (this.f62071C != null) {
                    z = this.f62071C.mo8247a();
                    z2 = z;
                    if (!z) {
                        this.f62091r = m8288j(this.f62091r);
                        this.f62071C = m8289i();
                    }
                }
            }
            if ((this.f62091r != EnumC22361g.FINISHED && !this.f62073E) || z2) {
                return;
            }
            m8286n();
            return;
        } while (this.f62091r != EnumC22361g.SOURCE);
        this.f62092s = EnumC22360f.SWITCH_TO_SOURCE_SERVICE;
        ((C22376m) this.f62089p).m8260i(this);
    }

    /* renamed from: q */
    public final void m8283q() {
        int ordinal = this.f62092s.ordinal();
        if (ordinal == 0) {
            this.f62091r = m8288j(EnumC22361g.INITIALIZE);
            this.f62071C = m8289i();
            m8284p();
        } else if (ordinal == 1) {
            m8284p();
        } else if (ordinal == 2) {
            m8292f();
        } else {
            StringBuilder m8728C = C22128a.m8728C("Unrecognized run reason: ");
            m8728C.append(this.f62092s);
            throw new IllegalStateException(m8728C.toString());
        }
    }

    /* renamed from: r */
    public final void m8282r() {
        this.f62076c.mo8010a();
        if (this.f62072D) {
            throw new IllegalStateException("Already notified", this.f62075b.isEmpty() ? null : (Throwable) C22128a.m8710G1(this.f62075b, 1));
        }
        this.f62072D = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractC22274d<?> abstractC22274d = this.f62070B;
        try {
            try {
                if (this.f62073E) {
                    m8286n();
                    if (abstractC22274d == null) {
                        return;
                    }
                    abstractC22274d.mo8219b();
                    return;
                }
                m8283q();
                if (abstractC22274d == null) {
                    return;
                }
                abstractC22274d.mo8219b();
            } catch (C22321c e) {
                throw e;
            }
        }
    }
}
