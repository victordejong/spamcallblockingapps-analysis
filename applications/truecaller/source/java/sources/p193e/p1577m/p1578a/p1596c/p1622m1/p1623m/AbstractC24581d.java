package p193e.p1577m.p1578a.p1596c.p1622m1.p1623m;

import java.util.ArrayDeque;
import java.util.Objects;
import java.util.PriorityQueue;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24566f;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24571j;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24570i;
/* renamed from: e.m.a.c.m1.m.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/m/d.class */
public abstract class AbstractC24581d implements AbstractC24566f {

    /* renamed from: a */
    public final ArrayDeque<C24583b> f68773a = new ArrayDeque<>();

    /* renamed from: b */
    public final ArrayDeque<AbstractC24571j> f68774b;

    /* renamed from: c */
    public final PriorityQueue<C24583b> f68775c;

    /* renamed from: d */
    public C24583b f68776d;

    /* renamed from: e */
    public long f68777e;

    /* renamed from: f */
    public long f68778f;

    /* renamed from: e.m.a.c.m1.m.d$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/m/d$b.class */
    public static final class C24583b extends C24570i implements Comparable<C24583b> {

        /* renamed from: h */
        public long f68779h;

        public C24583b() {
        }

        public C24583b(C24582a c24582a) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x005d, code lost:
            if (r12 > 0) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:5:0x001b, code lost:
            if (isEndOfStream() != false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
            r9 = -1;
         */
        /* JADX WARN: Type inference failed for: r0v11, types: [long] */
        /* JADX WARN: Type inference failed for: r0v19, types: [long] */
        @Override // java.lang.Comparable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int compareTo(p193e.p1577m.p1578a.p1596c.p1622m1.p1623m.AbstractC24581d.C24583b r6) {
            /*
                r5 = this;
                r0 = r6
                e.m.a.c.m1.m.d$b r0 = (p193e.p1577m.p1578a.p1596c.p1622m1.p1623m.AbstractC24581d.C24583b) r0
                r6 = r0
                r0 = r5
                boolean r0 = r0.isEndOfStream()
                r7 = r0
                r0 = r6
                boolean r0 = r0.isEndOfStream()
                r8 = r0
                r0 = 1
                r9 = r0
                r0 = r7
                r1 = r8
                if (r0 == r1) goto L27
                r0 = r5
                boolean r0 = r0.isEndOfStream()
                if (r0 == 0) goto L21
                goto L60
            L21:
                r0 = -1
                r9 = r0
                goto L60
            L27:
                r0 = r5
                long r0 = r0.f67303d
                r1 = r6
                long r1 = r1.f67303d
                long r0 = r0 - r1
                r10 = r0
                r0 = r10
                r12 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L59
                r0 = r5
                long r0 = r0.f68779h
                r1 = r6
                long r1 = r1.f68779h
                long r0 = r0 - r1
                r10 = r0
                r0 = r10
                r12 = r0
                r0 = r10
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L59
                r0 = 0
                r9 = r0
                goto L60
            L59:
                r0 = r12
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L21
            L60:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1622m1.p1623m.AbstractC24581d.C24583b.compareTo(java.lang.Object):int");
        }
    }

    /* renamed from: e.m.a.c.m1.m.d$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/m/d$c.class */
    public final class C24584c extends AbstractC24571j {
        public C24584c(C24582a c24582a) {
            AbstractC24581d.this = r4;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24266f
        public final void release() {
            AbstractC24581d abstractC24581d = AbstractC24581d.this;
            Objects.requireNonNull(abstractC24581d);
            clear();
            abstractC24581d.f68774b.add(this);
        }
    }

    public AbstractC24581d() {
        for (int i = 0; i < 10; i++) {
            this.f68773a.add(new C24583b(null));
        }
        this.f68774b = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.f68774b.add(new C24584c(null));
        }
        this.f68775c = new PriorityQueue<>();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    /* renamed from: a */
    public C24570i mo4879a() throws Exception {
        C24583b c24583b;
        C26232y.m2286x(this.f68776d == null);
        if (this.f68773a.isEmpty()) {
            c24583b = null;
        } else {
            c24583b = this.f68773a.pollFirst();
            this.f68776d = c24583b;
        }
        return c24583b;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24566f
    /* renamed from: b */
    public void mo4878b(long j) {
        this.f68777e = j;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    /* renamed from: c */
    public AbstractC24571j mo4877c() throws Exception {
        AbstractC24571j abstractC24571j;
        if (!this.f68774b.isEmpty()) {
            while (true) {
                abstractC24571j = null;
                if (this.f68775c.isEmpty()) {
                    break;
                }
                abstractC24571j = null;
                if (this.f68775c.peek().f67303d > this.f68777e) {
                    break;
                }
                C24583b poll = this.f68775c.poll();
                if (poll.isEndOfStream()) {
                    abstractC24571j = this.f68774b.pollFirst();
                    abstractC24571j.addFlag(4);
                    m4872h(poll);
                    break;
                }
                mo4874f(poll);
                if (mo4873g()) {
                    AbstractC24565e mo4875e = mo4875e();
                    if (!poll.isDecodeOnly()) {
                        abstractC24571j = this.f68774b.pollFirst();
                        long j = poll.f67303d;
                        abstractC24571j.timeUs = j;
                        abstractC24571j.f68676a = mo4875e;
                        abstractC24571j.f68677b = j;
                        m4872h(poll);
                        break;
                    }
                }
                m4872h(poll);
            }
        } else {
            abstractC24571j = null;
        }
        return abstractC24571j;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    /* renamed from: d */
    public void mo4876d(C24570i c24570i) throws Exception {
        C24570i c24570i2 = c24570i;
        C26232y.m2310r(c24570i2 == this.f68776d);
        if (c24570i2.isDecodeOnly()) {
            m4872h(this.f68776d);
        } else {
            C24583b c24583b = this.f68776d;
            long j = this.f68778f;
            this.f68778f = 1 + j;
            c24583b.f68779h = j;
            this.f68775c.add(c24583b);
        }
        this.f68776d = null;
    }

    /* renamed from: e */
    public abstract AbstractC24565e mo4875e();

    /* renamed from: f */
    public abstract void mo4874f(C24570i c24570i);

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    public void flush() {
        this.f68778f = 0L;
        this.f68777e = 0L;
        while (!this.f68775c.isEmpty()) {
            m4872h(this.f68775c.poll());
        }
        C24583b c24583b = this.f68776d;
        if (c24583b != null) {
            m4872h(c24583b);
            this.f68776d = null;
        }
    }

    /* renamed from: g */
    public abstract boolean mo4873g();

    /* renamed from: h */
    public final void m4872h(C24583b c24583b) {
        c24583b.clear();
        this.f68773a.add(c24583b);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    public void release() {
    }
}
