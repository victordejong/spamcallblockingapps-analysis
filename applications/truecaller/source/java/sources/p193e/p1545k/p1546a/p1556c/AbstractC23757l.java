package p193e.p1545k.p1546a.p1556c;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.Iterator;
import p193e.p1545k.p1546a.p1548b.AbstractC23388t;
import p193e.p1545k.p1546a.p1556c.AbstractC23869m;
import p193e.p1545k.p1546a.p1556c.p1569k0.EnumC23747m;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.l */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l.class */
public abstract class AbstractC23757l extends AbstractC23869m.AbstractC23870a implements AbstractC23388t, Iterable<AbstractC23757l> {
    /* renamed from: A */
    public boolean mo6145A() {
        return false;
    }

    /* renamed from: B */
    public boolean mo6144B() {
        return false;
    }

    /* renamed from: C */
    public boolean mo6143C() {
        return false;
    }

    /* renamed from: D */
    public boolean mo6142D() {
        return false;
    }

    /* renamed from: E */
    public boolean mo6141E() {
        return false;
    }

    /* renamed from: F */
    public final boolean m6140F() {
        return mo6118v() == EnumC23747m.NULL;
    }

    /* renamed from: G */
    public final boolean m6139G() {
        return mo6118v() == EnumC23747m.NUMBER;
    }

    /* renamed from: H */
    public boolean mo6138H() {
        return false;
    }

    /* renamed from: I */
    public final boolean m6137I() {
        return mo6118v() == EnumC23747m.STRING;
    }

    /* renamed from: K */
    public long mo6136K() {
        return 0L;
    }

    /* renamed from: L */
    public String mo6135L() {
        return null;
    }

    /* renamed from: e */
    public boolean mo6134e() {
        return mo6133f(false);
    }

    public abstract boolean equals(Object obj);

    /* renamed from: f */
    public boolean mo6133f(boolean z) {
        return z;
    }

    /* renamed from: g */
    public double mo6132g() {
        return mo6131h(PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
    }

    /* renamed from: h */
    public double mo6131h(double d) {
        return d;
    }

    /* renamed from: i */
    public int mo6130i() {
        return mo6129j(0);
    }

    @Override // java.lang.Iterable
    public final Iterator<AbstractC23757l> iterator() {
        return mo6121r();
    }

    /* renamed from: j */
    public int mo6129j(int i) {
        return i;
    }

    /* renamed from: k */
    public long mo6128k() {
        return mo6127l(0L);
    }

    /* renamed from: l */
    public long mo6127l(long j) {
        return j;
    }

    /* renamed from: m */
    public abstract String mo6126m();

    /* renamed from: n */
    public boolean mo6125n() {
        return false;
    }

    /* renamed from: o */
    public boolean mo6124o() {
        return false;
    }

    /* renamed from: p */
    public boolean mo6123p() {
        return false;
    }

    /* renamed from: q */
    public double mo6122q() {
        return PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
    }

    /* renamed from: r */
    public Iterator<AbstractC23757l> mo6121r() {
        return C23914g.f66158c;
    }

    public int size() {
        return 0;
    }

    /* renamed from: t */
    public Iterator<String> mo6120t() {
        return C23914g.f66158c;
    }

    public abstract String toString();

    /* renamed from: u */
    public AbstractC23757l mo6119u(String str) {
        return null;
    }

    /* renamed from: v */
    public abstract EnumC23747m mo6118v();

    /* renamed from: w */
    public boolean mo6117w(String str) {
        return mo6119u(str) != null;
    }

    /* renamed from: x */
    public int mo6116x() {
        return 0;
    }

    /* renamed from: y */
    public boolean mo6115y() {
        return false;
    }

    /* renamed from: z */
    public final boolean m6114z() {
        return mo6118v() == EnumC23747m.BOOLEAN;
    }
}
