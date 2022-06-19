package p193e.p194a.p1146q2;

import java.util.Objects;
import javax.inject.Inject;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p614c3.AbstractC10925a;
import s1.z.c.l;
import u3.z;
/* renamed from: e.a.q2.i */
/* loaded from: classes4-dex2jar.jar:e/a/q2/i.class */
public final class C19509i {

    /* renamed from: a */
    public final String f54130a;

    /* renamed from: b */
    public final String f54131b;

    /* renamed from: c */
    public final String f54132c;

    /* renamed from: d */
    public final a<AbstractC10925a> f54133d;

    /* renamed from: e */
    public final a<AbstractC8432l> f54134e;

    /* renamed from: f */
    public final a<AbstractC8541a> f54135f;

    @Inject
    public C19509i(String str, String str2, String str3, a<AbstractC10925a> aVar, a<AbstractC8432l> aVar2, a<AbstractC8541a> aVar3) {
        l.e(str, "appName");
        l.e(str2, "appActualVersion");
        l.e(str3, "appStoreVersion");
        l.e(aVar, "buildHelper");
        l.e(aVar2, "accountManager");
        l.e(aVar3, "coreSettings");
        this.f54130a = str;
        this.f54131b = str2;
        this.f54132c = str3;
        this.f54133d = aVar;
        this.f54134e = aVar2;
        this.f54135f = aVar3;
    }

    /* renamed from: a */
    public z m13260a() {
        String mo28569o;
        AbstractC8432l abstractC8432l = (AbstractC8432l) this.f54134e.get();
        if (abstractC8432l == null || (mo28569o = abstractC8432l.mo28569o()) == null) {
            return null;
        }
        return z.b.c(new String[]{"Authorization", C22128a.m8543z2("Bearer ", mo28569o)});
    }

    /* renamed from: b */
    public long m13259b() {
        AbstractC8541a abstractC8541a = (AbstractC8541a) this.f54135f.get();
        Objects.requireNonNull(abstractC8541a, "Core settings were not injected");
        return abstractC8541a.getLong("profileUserId", -1L);
    }
}
