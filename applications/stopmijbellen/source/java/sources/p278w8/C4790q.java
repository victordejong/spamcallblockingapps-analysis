package p278w8;

import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.Objects;
import p237t.C4350g;
import p267v8.AbstractC4654a;
import p267v8.C4655b;
/* renamed from: w8.q */
/* loaded from: classes2-dex2jar.jar:w8/q.class */
public class C4790q<TModel> implements AbstractC4654a {

    /* renamed from: a */
    public final Class<TModel> f14718a;

    public C4790q(Class<TModel> cls) {
        this.f14718a = cls;
    }

    /* renamed from: a */
    public C4789p<TModel> m460a(AbstractC4787n... abstractC4787nArr) {
        C4789p<TModel> c4789p = new C4789p<>(this, this.f14718a);
        C4785l c4785l = c4789p.f14716c;
        Objects.requireNonNull(c4785l);
        for (AbstractC4787n abstractC4787n : abstractC4787nArr) {
            c4785l.m467k("AND", abstractC4787n);
        }
        return c4789p;
    }

    @Override // p267v8.AbstractC4654a
    /* renamed from: b */
    public String mo238b() {
        C4655b c4655b = new C4655b("UPDATE ");
        if (!C4350g.m1022b(1, 1)) {
            c4655b.f14350a.append((Object) "OR");
            c4655b.m678c();
            c4655b.f14350a.append((Object) "NONE");
            c4655b.m678c();
        }
        c4655b.f14350a.append((Object) FlowManager.m3904i(this.f14718a));
        c4655b.m678c();
        return c4655b.mo238b();
    }
}
