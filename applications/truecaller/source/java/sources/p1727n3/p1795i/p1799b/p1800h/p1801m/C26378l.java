package p1727n3.p1795i.p1799b.p1800h.p1801m;

import java.util.ArrayList;
/* renamed from: n3.i.b.h.m.l */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/m/l.class */
public class C26378l {

    /* renamed from: c */
    public static int f73821c;

    /* renamed from: a */
    public AbstractC26381o f73822a;

    /* renamed from: b */
    public ArrayList<AbstractC26381o> f73823b = new ArrayList<>();

    public C26378l(AbstractC26381o abstractC26381o, int i) {
        this.f73822a = null;
        f73821c++;
        this.f73822a = abstractC26381o;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: a */
    public final long m2015a(C26375f c26375f, long j) {
        char c;
        AbstractC26381o abstractC26381o = c26375f.f73802d;
        if (abstractC26381o instanceof j) {
            return j;
        }
        int size = c26375f.f73809k.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            AbstractC26373d abstractC26373d = c26375f.f73809k.get(i);
            char c3 = c;
            if (abstractC26373d instanceof C26375f) {
                C26375f c26375f2 = (C26375f) abstractC26373d;
                c3 = c26375f2.f73802d == abstractC26381o ? c : Math.min((long) c, m2015a(c26375f2, c26375f2.f73804f + j));
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (c26375f == abstractC26381o.f73838i) {
            long m2000j = abstractC26381o.m2000j();
            C26375f c26375f3 = abstractC26381o.f73837h;
            long j2 = j - m2000j;
            c4 = Math.min(Math.min((long) c, m2015a(c26375f3, j2)), j2 - abstractC26381o.f73837h.f73804f);
        }
        return c4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: b */
    public final long m2014b(C26375f c26375f, long j) {
        char c;
        AbstractC26381o abstractC26381o = c26375f.f73802d;
        if (abstractC26381o instanceof j) {
            return j;
        }
        int size = c26375f.f73809k.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            AbstractC26373d abstractC26373d = c26375f.f73809k.get(i);
            char c3 = c;
            if (abstractC26373d instanceof C26375f) {
                C26375f c26375f2 = (C26375f) abstractC26373d;
                c3 = c26375f2.f73802d == abstractC26381o ? c : Math.max((long) c, m2014b(c26375f2, c26375f2.f73804f + j));
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (c26375f == abstractC26381o.f73837h) {
            long m2000j = abstractC26381o.m2000j();
            C26375f c26375f3 = abstractC26381o.f73838i;
            long j2 = j + m2000j;
            c4 = Math.max(Math.max((long) c, m2014b(c26375f3, j2)), j2 - abstractC26381o.f73838i.f73804f);
        }
        return c4;
    }
}
