package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24777g;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.o */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/o.class */
public final class C24383o implements AbstractC24373j {

    /* renamed from: a */
    public final String f67962a;

    /* renamed from: b */
    public final C24798t f67963b;

    /* renamed from: c */
    public final C24797s f67964c;

    /* renamed from: d */
    public AbstractC24422s f67965d;

    /* renamed from: e */
    public Format f67966e;

    /* renamed from: f */
    public String f67967f;

    /* renamed from: g */
    public int f67968g;

    /* renamed from: h */
    public int f67969h;

    /* renamed from: i */
    public int f67970i;

    /* renamed from: j */
    public int f67971j;

    /* renamed from: k */
    public long f67972k;

    /* renamed from: l */
    public boolean f67973l;

    /* renamed from: m */
    public int f67974m;

    /* renamed from: n */
    public int f67975n;

    /* renamed from: o */
    public int f67976o;

    /* renamed from: p */
    public boolean f67977p;

    /* renamed from: q */
    public long f67978q;

    /* renamed from: r */
    public int f67979r;

    /* renamed from: s */
    public long f67980s;

    /* renamed from: t */
    public int f67981t;

    public C24383o(String str) {
        this.f67962a = str;
        C24798t c24798t = new C24798t(1024);
        this.f67963b = c24798t;
        this.f67964c = new C24797s(c24798t.f69504a);
    }

    /* renamed from: f */
    public static long m5186f(C24797s c24797s) {
        return c24797s.m4556f((c24797s.m4556f(2) + 1) * 8);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: a */
    public void mo5184a() {
        this.f67968g = 0;
        this.f67973l = false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: b */
    public void mo5183b() {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: c */
    public void mo5182c(long j, int i) {
        this.f67972k = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x0213, code lost:
        if (r12.f67973l == false) goto L91;
     */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo5181d(p193e.p1577m.p1578a.p1596c.p1636q1.C24798t r13) throws p193e.p1577m.p1578a.p1596c.C24560m0 {
        /*
            Method dump skipped, instructions count: 917
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24383o.mo5181d(e.m.a.c.q1.t):void");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: e */
    public void mo5180e(AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        c24365d.m5203a();
        this.f67965d = abstractC24409i.mo4960i(c24365d.m5201c(), 1);
        this.f67967f = c24365d.m5202b();
    }

    /* renamed from: g */
    public final int m5185g(C24797s c24797s) throws C24560m0 {
        int m4560b = c24797s.m4560b();
        Pair<Integer, Integer> m4593b = C24777g.m4593b(c24797s, true);
        this.f67979r = ((Integer) m4593b.first).intValue();
        this.f67981t = ((Integer) m4593b.second).intValue();
        return m4560b - c24797s.m4560b();
    }
}
