package p278w8;

import com.raizlabs.android.dbflow.config.C2120f;
import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.List;
import p024b9.AbstractC0742b;
import p309z8.C5114a;
/* renamed from: w8.b */
/* loaded from: classes2-dex2jar.jar:w8/b.class */
public abstract class AbstractC4771b<TModel> extends AbstractC4773d<TModel> {

    /* renamed from: b */
    public AbstractC0742b<TModel> f14684b;

    public AbstractC4771b(Class<TModel> cls) {
        super(cls);
    }

    /* renamed from: k */
    public final AbstractC0742b<TModel> m484k() {
        if (this.f14684b == null) {
            this.f14684b = FlowManager.m3907f(this.f14690a);
        }
        return this.f14684b;
    }

    /* renamed from: l */
    public List<TModel> mo456l() {
        String mo238b = mo238b();
        C2120f.EnumC2122b enumC2122b = C2120f.EnumC2122b.f7693a;
        C2120f.m3889a(enumC2122b, "Executing query: " + mo238b, null);
        AbstractC0742b<TModel> m484k = m484k();
        if (m484k.f2815b == null) {
            m484k.f2815b = new C5114a<>(m484k.mo2690b());
        }
        return (List) m484k.f2815b.m2318j(mo238b);
    }
}
