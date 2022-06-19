package kotlin.reflect.jvm.internal.impl.p537a;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18694a;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18696c;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.C18699e;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18701f;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
/* renamed from: kotlin.reflect.jvm.internal.impl.a.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/a/a.class */
public final class C18693a {
    /* renamed from: a */
    public static final void m3707a(AbstractC18696c abstractC18696c, AbstractC18695b from, AbstractC19006ae scopeOwner, C18966e name) {
        AbstractC18694a location;
        C18699e c18699e;
        C18524p.m3840d(abstractC18696c, "<this>");
        C18524p.m3840d(from, "from");
        C18524p.m3840d(scopeOwner, "scopeOwner");
        C18524p.m3840d(name, "name");
        String packageFqName = scopeOwner.mo2542c().m2746a();
        C18524p.m3843b(packageFqName, "scopeOwner.fqName.asString()");
        String name2 = name.m2721a();
        C18524p.m3843b(name2, "name.asString()");
        C18524p.m3840d(abstractC18696c, "<this>");
        C18524p.m3840d(from, "from");
        C18524p.m3840d(packageFqName, "packageFqName");
        C18524p.m3840d(name2, "name");
        if (abstractC18696c == AbstractC18696c.C18697a.f63806a || (location = from.getLocation()) == null) {
            return;
        }
        C18699e.C18700a c18700a = C18699e.f63807a;
        c18699e = C18699e.f63808d;
        abstractC18696c.mo3704a(location.m3705a(), c18699e, packageFqName, EnumC18701f.PACKAGE, name2);
    }

    /* renamed from: a */
    public static final void m3706a(AbstractC18696c abstractC18696c, AbstractC18695b from, AbstractC19070d scopeOwner, C18966e name) {
        AbstractC18694a location;
        C18699e c18699e;
        C18524p.m3840d(abstractC18696c, "<this>");
        C18524p.m3840d(from, "from");
        C18524p.m3840d(scopeOwner, "scopeOwner");
        C18524p.m3840d(name, "name");
        if (abstractC18696c == AbstractC18696c.C18697a.f63806a || (location = from.getLocation()) == null) {
            return;
        }
        C18699e.C18700a c18700a = C18699e.f63807a;
        c18699e = C18699e.f63808d;
        String m3705a = location.m3705a();
        String m2735a = C19807d.m1463c(scopeOwner).m2735a();
        C18524p.m3843b(m2735a, "getFqName(scopeOwner).asString()");
        EnumC18701f enumC18701f = EnumC18701f.CLASSIFIER;
        String m2721a = name.m2721a();
        C18524p.m3843b(m2721a, "name.asString()");
        abstractC18696c.mo3704a(m3705a, c18699e, m2735a, enumC18701f, m2721a);
    }
}
