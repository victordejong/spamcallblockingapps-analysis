package p193e.p1577m.p1578a.p1580b.p1583j.p1593y;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
@Singleton
/* renamed from: e.m.a.b.j.y.k */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/y/k.class */
public class C24178k implements AbstractC24171e {

    /* renamed from: a */
    public final C24179a f66922a;

    /* renamed from: b */
    public final C24176i f66923b;

    /* renamed from: c */
    public final Map<String, AbstractC24181m> f66924c = new HashMap();

    /* renamed from: e.m.a.b.j.y.k$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/y/k$a.class */
    public static class C24179a {

        /* renamed from: a */
        public final Context f66925a;

        /* renamed from: b */
        public Map<String, String> f66926b = null;

        public C24179a(Context context) {
            this.f66925a = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24170d m5505a(java.lang.String r7) {
            /*
                Method dump skipped, instructions count: 360
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1580b.p1583j.p1593y.C24178k.C24179a.m5505a(java.lang.String):e.m.a.b.j.y.d");
        }
    }

    @Inject
    public C24178k(Context context, C24176i c24176i) {
        C24179a c24179a = new C24179a(context);
        this.f66922a = c24179a;
        this.f66923b = c24176i;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24171e
    public AbstractC24181m get(String str) {
        synchronized (this) {
            if (this.f66924c.containsKey(str)) {
                return this.f66924c.get(str);
            }
            AbstractC24170d m5505a = this.f66922a.m5505a(str);
            if (m5505a == null) {
                return null;
            }
            C24176i c24176i = this.f66923b;
            AbstractC24181m create = m5505a.create(new C24169c(c24176i.f66916a, c24176i.f66917b, c24176i.f66918c, str));
            this.f66924c.put(str, create);
            return create;
        }
    }
}
