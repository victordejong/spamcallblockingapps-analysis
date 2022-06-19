package kotlinx.coroutines;

import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.a */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/a.class */
public abstract class AbstractC1778a<T> extends C1858bq implements AbstractC1641c<T>, AbstractC1786ad, AbstractC1850bk {

    /* renamed from: a */
    protected final AbstractC1646f f4457a;

    /* renamed from: c */
    private final AbstractC1646f f4458c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC1778a(AbstractC1646f abstractC1646f, boolean z) {
        super(z);
        C1694h.m3117b(abstractC1646f, "parentContext");
        this.f4457a = abstractC1646f;
        this.f4458c = this.f4457a.plus(this);
    }

    @Override // kotlin.p075c.AbstractC1641c
    /* renamed from: a */
    public final AbstractC1646f mo2555a() {
        return this.f4458c;
    }

    @Override // kotlin.p075c.AbstractC1641c
    /* renamed from: a */
    public final void mo2553a(Object obj) {
        m2799a(C1946u.m2519a(obj), mo2606i());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.C1858bq
    /* renamed from: a */
    public void mo2607a(Object obj, int i, boolean z) {
        if (obj instanceof C1945t) {
            m2972b(((C1945t) obj).f4697a);
        } else {
            m2973b((AbstractC1778a<T>) obj);
        }
    }

    @Override // kotlinx.coroutines.C1858bq
    /* renamed from: a */
    protected void mo2796a(Throwable th) {
    }

    /* renamed from: a */
    public final <R> void m2974a(EnumC1787ae enumC1787ae, R r, AbstractC1674m<? super R, ? super AbstractC1641c<? super T>, ? extends Object> abstractC1674m) {
        C1694h.m3117b(enumC1787ae, "start");
        C1694h.m3117b(abstractC1674m, "block");
        m2971f();
        enumC1787ae.m2957a(abstractC1674m, r, this);
    }

    @Override // kotlinx.coroutines.AbstractC1786ad
    /* renamed from: b */
    public AbstractC1646f mo2809b() {
        return this.f4458c;
    }

    /* renamed from: b */
    protected void m2973b(T t) {
    }

    /* renamed from: b */
    protected void m2972b(Throwable th) {
        C1694h.m3117b(th, "exception");
    }

    @Override // kotlinx.coroutines.C1858bq
    /* renamed from: c */
    public final void mo2768c(Throwable th) {
        C1694h.m3117b(th, "exception");
        C1781aa.m2964a(this.f4457a, th, this);
    }

    @Override // kotlinx.coroutines.C1858bq, kotlinx.coroutines.AbstractC1850bk
    /* renamed from: e */
    public boolean mo2762e() {
        return super.mo2762e();
    }

    /* renamed from: f */
    public final void m2971f() {
        m2786a((AbstractC1850bk) this.f4457a.get(AbstractC1850bk.f4594b));
    }

    /* renamed from: g */
    protected void mo2734g() {
    }

    @Override // kotlinx.coroutines.C1858bq
    /* renamed from: h */
    public final void mo2757h() {
        mo2734g();
    }

    /* renamed from: i */
    public int mo2606i() {
        return 0;
    }

    @Override // kotlinx.coroutines.C1858bq
    /* renamed from: j */
    public String mo2694j() {
        String m2516a = C1949x.m2516a(this.f4458c);
        if (m2516a != null) {
            return '\"' + m2516a + "\":" + super.mo2694j();
        }
        return super.mo2694j();
    }
}
