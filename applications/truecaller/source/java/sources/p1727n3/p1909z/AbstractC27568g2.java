package p1727n3.p1909z;

import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.a.g0;
import q3.a.x2.a1;
import q3.a.x2.k1;
import s1.s;
import s1.w.d;
import s1.z.b.a;
import s1.z.b.l;
/* renamed from: n3.z.g2 */
/* loaded from: classes-dex2jar.jar:n3/z/g2.class */
public abstract class AbstractC27568g2<T> {

    /* renamed from: a */
    public o1<T> f77674a;

    /* renamed from: b */
    public AbstractC27572h3 f77675b;

    /* renamed from: c */
    public final C27611x0 f77676c;

    /* renamed from: d */
    public final CopyOnWriteArrayList<l<C27591q, s>> f77677d;

    /* renamed from: f */
    public volatile boolean f77679f;

    /* renamed from: g */
    public volatile int f77680g;

    /* renamed from: i */
    public final a1<C27591q> f77682i;

    /* renamed from: j */
    public final AbstractC27610x f77683j;

    /* renamed from: k */
    public final g0 f77684k;

    /* renamed from: e */
    public final C27550a3 f77678e = new C27550a3(false, 1);

    /* renamed from: h */
    public final b f77681h = new b(this);

    public AbstractC27568g2(AbstractC27610x abstractC27610x, g0 g0Var) {
        s1.z.c.l.e(abstractC27610x, "differCallback");
        s1.z.c.l.e(g0Var, "mainDispatcher");
        this.f77683j = abstractC27610x;
        this.f77684k = g0Var;
        o1$a o1_a = o1.f;
        o1<T> o1Var = o1.e;
        Objects.requireNonNull(o1Var, "null cannot be cast to non-null type androidx.paging.PagePresenter<T>");
        this.f77674a = o1Var;
        C27611x0 c27611x0 = new C27611x0();
        this.f77676c = c27611x0;
        CopyOnWriteArrayList<l<C27591q, s>> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.f77677d = copyOnWriteArrayList;
        this.f77682i = k1.a(c27611x0.m13e());
        a aVar = new a(this);
        s1.z.c.l.e(aVar, "listener");
        copyOnWriteArrayList.add(aVar);
        aVar.d(c27611x0.m13e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final T m90a(int i) {
        this.f77679f = true;
        this.f77680g = i;
        AbstractC27572h3 abstractC27572h3 = this.f77675b;
        if (abstractC27572h3 != null) {
            abstractC27572h3.m88a(this.f77674a.f(i));
        }
        o1<T> o1Var = this.f77674a;
        Objects.requireNonNull(o1Var);
        if (i >= 0 && i < o1Var.a()) {
            int i2 = i - o1Var.c;
            return (i2 < 0 || i2 >= o1Var.b) ? null : o1Var.e(i2);
        }
        StringBuilder m8720E = C22128a.m8720E("Index: ", i, ", Size: ");
        m8720E.append(o1Var.a());
        throw new IndexOutOfBoundsException(m8720E.toString());
    }

    /* renamed from: b */
    public abstract Object m89b(AbstractC27615z0<T> abstractC27615z0, AbstractC27615z0<T> abstractC27615z02, C27591q c27591q, int i, a<s> aVar, d<? super Integer> dVar);
}
