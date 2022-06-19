package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.C0544f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* renamed from: androidx.constraintlayout.a.a.a.m */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/m.class */
public final class C0528m {

    /* renamed from: a */
    public static int f1967a;

    /* renamed from: d */
    AbstractC0533p f1970d;

    /* renamed from: e */
    AbstractC0533p f1971e;

    /* renamed from: g */
    int f1973g;

    /* renamed from: h */
    int f1974h;

    /* renamed from: b */
    public int f1968b = 0;

    /* renamed from: c */
    public boolean f1969c = false;

    /* renamed from: f */
    ArrayList<AbstractC0533p> f1972f = new ArrayList<>();

    public C0528m(AbstractC0533p abstractC0533p, int i) {
        this.f1970d = null;
        this.f1971e = null;
        this.f1973g = 0;
        int i2 = f1967a;
        this.f1973g = i2;
        f1967a = i2 + 1;
        this.f1970d = abstractC0533p;
        this.f1971e = abstractC0533p;
        this.f1974h = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* renamed from: a */
    private long m45335a(C0519f c0519f, long j) {
        char c;
        AbstractC0533p abstractC0533p = c0519f.f1954d;
        if (abstractC0533p instanceof C0525k) {
            return j;
        }
        int size = c0519f.f1961k.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            AbstractC0517d abstractC0517d = c0519f.f1961k.get(i);
            char c3 = c;
            if (abstractC0517d instanceof C0519f) {
                C0519f c0519f2 = (C0519f) abstractC0517d;
                c3 = c;
                if (c0519f2.f1954d != abstractC0533p) {
                    c3 = Math.max((long) c, m45335a(c0519f2, c0519f2.f1956f + j));
                }
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (c0519f == abstractC0533p.f2000j) {
            long mo45319b = abstractC0533p.mo45319b();
            C0519f c0519f3 = abstractC0533p.f2001k;
            long j2 = j + mo45319b;
            c4 = Math.max(Math.max((long) c, m45335a(c0519f3, j2)), j2 - abstractC0533p.f2001k.f1956f);
        }
        return c4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* renamed from: b */
    private long m45333b(C0519f c0519f, long j) {
        char c;
        AbstractC0533p abstractC0533p = c0519f.f1954d;
        if (abstractC0533p instanceof C0525k) {
            return j;
        }
        int size = c0519f.f1961k.size();
        int i = 0;
        char c2 = j;
        while (true) {
            c = c2;
            if (i >= size) {
                break;
            }
            AbstractC0517d abstractC0517d = c0519f.f1961k.get(i);
            char c3 = c;
            if (abstractC0517d instanceof C0519f) {
                C0519f c0519f2 = (C0519f) abstractC0517d;
                c3 = c;
                if (c0519f2.f1954d != abstractC0533p) {
                    c3 = Math.min((long) c, m45333b(c0519f2, c0519f2.f1956f + j));
                }
            }
            i++;
            c2 = c3;
        }
        char c4 = c;
        if (c0519f == abstractC0533p.f2001k) {
            long mo45319b = abstractC0533p.mo45319b();
            C0519f c0519f3 = abstractC0533p.f2000j;
            long j2 = j - mo45319b;
            c4 = Math.min(Math.min((long) c, m45333b(c0519f3, j2)), j2 - abstractC0533p.f2000j.f1956f);
        }
        return c4;
    }

    /* JADX WARN: Type inference failed for: r0v100, types: [long] */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    /* renamed from: a */
    public final long m45334a(C0544f c0544f, int i) {
        char c;
        char c2;
        int i2;
        AbstractC0533p abstractC0533p = this.f1970d;
        char c3 = 0;
        if (abstractC0533p instanceof C0516c) {
            if (((C0516c) abstractC0533p).f1998h != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(abstractC0533p instanceof C0526l)) {
                return 0L;
            }
        } else if (!(abstractC0533p instanceof C0529n)) {
            return 0L;
        }
        C0519f c0519f = i == 0 ? c0544f.f2114i.f2000j : c0544f.f2115j.f2000j;
        C0519f c0519f2 = i == 0 ? c0544f.f2114i.f2001k : c0544f.f2115j.f2001k;
        boolean contains = this.f1970d.f2000j.f1962l.contains(c0519f);
        boolean contains2 = this.f1970d.f2001k.f1962l.contains(c0519f2);
        long mo45319b = this.f1970d.mo45319b();
        if (!contains || !contains2) {
            if (contains) {
                c = Math.max(m45335a(this.f1970d.f2000j, this.f1970d.f2000j.f1956f), this.f1970d.f2000j.f1956f + mo45319b);
            } else if (contains2) {
                c = Math.max(-m45333b(this.f1970d.f2001k, this.f1970d.f2001k.f1956f), (-this.f1970d.f2001k.f1956f) + mo45319b);
            } else {
                c2 = this.f1970d.f2000j.f1956f + this.f1970d.mo45319b();
                i2 = this.f1970d.f2001k.f1956f;
            }
            return c;
        }
        long m45335a = m45335a(this.f1970d.f2000j, 0L);
        long m45333b = m45333b(this.f1970d.f2001k, 0L);
        ?? r0 = m45335a - mo45319b;
        char c4 = r0;
        if (r0 >= (-this.f1970d.f2001k.f1956f)) {
            c4 = r0 + this.f1970d.f2001k.f1956f;
        }
        ?? r02 = ((-m45333b) - mo45319b) - this.f1970d.f2000j.f1956f;
        char c5 = r02;
        if (r02 >= this.f1970d.f2000j.f1956f) {
            c5 = r02 - this.f1970d.f2000j.f1956f;
        }
        float m45278d = this.f1970d.f1994d.m45278d(i);
        if (m45278d > BitmapDescriptorFactory.HUE_RED) {
            c3 = (c5 / m45278d) + (c4 / (1.0f - m45278d));
        }
        float f = c3;
        c2 = this.f1970d.f2000j.f1956f + (f * m45278d) + 0.5f + mo45319b + (f * (1.0f - m45278d)) + 0.5f;
        i2 = this.f1970d.f2001k.f1956f;
        c = c2 - i2;
        return c;
    }
}
