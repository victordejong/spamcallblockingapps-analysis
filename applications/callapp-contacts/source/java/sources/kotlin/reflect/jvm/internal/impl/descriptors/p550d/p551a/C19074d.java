package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a;

import java.util.Set;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19100j;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19120u;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractC19510n;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19411t;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.a.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/d.class */
public final class C19074d implements AbstractC19510n {

    /* renamed from: a */
    private final ClassLoader f64793a;

    public C19074d(ClassLoader classLoader) {
        C18524p.m3840d(classLoader, "classLoader");
        this.f64793a = classLoader;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.AbstractC19510n
    /* renamed from: a */
    public final AbstractC19398g mo2062a(AbstractC19510n.C19511a request) {
        C18524p.m3840d(request, "request");
        C18960a c18960a = request.f65496a;
        C18961b m2758a = c18960a.m2758a();
        C18524p.m3843b(m2758a, "classId.packageFqName");
        String m2746a = c18960a.m2752b().m2746a();
        C18524p.m3843b(m2746a, "classId.relativeClassName.asString()");
        String a = C18425p.m3964a(m2746a, '.', '$', false);
        if (!m2758a.f64686b.f64691a.isEmpty()) {
            a = m2758a.m2746a() + '.' + a;
        }
        Class<?> m2668a = C19075e.m2668a(this.f64793a, a);
        if (m2668a != null) {
            return new C19100j(m2668a);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.AbstractC19510n
    /* renamed from: a */
    public final AbstractC19411t mo2063a(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        return new C19120u(fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.AbstractC19510n
    /* renamed from: b */
    public final Set<String> mo2061b(C18961b packageFqName) {
        C18524p.m3840d(packageFqName, "packageFqName");
        return null;
    }
}
