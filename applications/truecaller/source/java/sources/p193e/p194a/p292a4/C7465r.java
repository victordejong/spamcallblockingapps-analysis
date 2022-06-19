package p193e.p194a.p292a4;

import com.razorpay.AnalyticsConstants;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.z.b.l;
/* renamed from: e.a.a4.r */
/* loaded from: classes10-dex2jar.jar:e/a/a4/r.class */
public final class C7465r extends AbstractC7432c {

    /* renamed from: a */
    public final String f23717a;

    /* renamed from: b */
    public final AbstractC7460m f23718b;

    /* renamed from: c */
    public final f f23719c;

    /* renamed from: d */
    public final l<d<? super s>, Object> f23720d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7465r(String str, AbstractC7460m abstractC7460m, f fVar, l<? super d<? super s>, ? extends Object> lVar) {
        super(null);
        s1.z.c.l.e(str, AnalyticsConstants.NAME);
        s1.z.c.l.e(fVar, "coroutineContext");
        s1.z.c.l.e(lVar, "action");
        this.f23717a = str;
        this.f23718b = abstractC7460m;
        this.f23719c = fVar;
        this.f23720d = lVar;
    }

    @Override // p193e.p194a.p292a4.AbstractC7432c
    /* renamed from: a */
    public AbstractC7460m mo29582a() {
        return this.f23718b;
    }

    @Override // p193e.p194a.p292a4.AbstractC7432c
    /* renamed from: b */
    public String mo29581b() {
        return this.f23717a;
    }
}
