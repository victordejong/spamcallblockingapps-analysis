package p012b.p076s.p078b.p079a.p111z0;

import android.content.Context;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
/* renamed from: b.s.b.a.z0.o */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/o.class */
public final class C1694o implements AbstractC1684g.AbstractC1685a {

    /* renamed from: a */
    public final Context f6932a;

    /* renamed from: b */
    public final AbstractC1704x f6933b;

    /* renamed from: c */
    public final AbstractC1684g.AbstractC1685a f6934c;

    public C1694o(Context context, AbstractC1704x xVar, AbstractC1684g.AbstractC1685a aVar) {
        this.f6932a = context.getApplicationContext();
        this.f6933b = xVar;
        this.f6934c = aVar;
    }

    public C1694o(Context context, String str) {
        this(context, str, (AbstractC1704x) null);
    }

    public C1694o(Context context, String str, AbstractC1704x xVar) {
        this(context, xVar, new C1696q(str, xVar));
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g.AbstractC1685a
    public C1693n createDataSource() {
        C1693n nVar = new C1693n(this.f6932a, this.f6934c.createDataSource());
        AbstractC1704x xVar = this.f6933b;
        if (xVar != null) {
            nVar.mo32326a(xVar);
        }
        return nVar;
    }
}
