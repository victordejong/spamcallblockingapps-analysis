package p278w8;

import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p024b9.C0740a;
import p267v8.AbstractC4654a;
import p267v8.C4655b;
import p278w8.C4779j;
/* renamed from: w8.g */
/* loaded from: classes2-dex2jar.jar:w8/g.class */
public class C4776g<TModel> extends AbstractC4774e<TModel> {

    /* renamed from: c */
    public AbstractC4654a f14691c;

    /* renamed from: d */
    public C4779j f14692d;

    /* renamed from: e */
    public final List<C4777h> f14693e = new ArrayList();

    public C4776g(AbstractC4654a abstractC4654a, Class<TModel> cls) {
        super(cls);
        this.f14691c = abstractC4654a;
    }

    @Override // p278w8.AbstractC4773d, p278w8.AbstractC4770a
    /* renamed from: a */
    public C0740a.EnumC0741a mo459a() {
        return this.f14691c instanceof C4775f ? C0740a.EnumC0741a.DELETE : C0740a.EnumC0741a.CHANGE;
    }

    @Override // p267v8.AbstractC4654a
    /* renamed from: b */
    public String mo238b() {
        C4655b c4655b = new C4655b();
        c4655b.f14350a.append((Object) this.f14691c.mo238b());
        if (!(this.f14691c instanceof C4790q)) {
            c4655b.f14350a.append((Object) "FROM ");
        }
        if (this.f14692d == null) {
            this.f14692d = new C4779j.C4781b(FlowManager.m3904i(this.f14690a)).m471a();
        }
        c4655b.f14350a.append(this.f14692d);
        if (this.f14691c instanceof C4788o) {
            if (!this.f14693e.isEmpty()) {
                c4655b.m678c();
            }
            Iterator<C4777h> it2 = this.f14693e.iterator();
            if (it2.hasNext()) {
                it2.next().mo238b();
                throw null;
            }
        } else {
            c4655b.m678c();
        }
        return c4655b.mo238b();
    }

    @Override // p278w8.AbstractC4774e
    /* renamed from: m */
    public AbstractC4654a mo461m() {
        return this.f14691c;
    }
}
