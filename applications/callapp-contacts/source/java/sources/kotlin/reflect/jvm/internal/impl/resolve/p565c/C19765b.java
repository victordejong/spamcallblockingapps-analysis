package kotlin.reflect.jvm.internal.impl.resolve.p565c;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19499f;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19467g;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19356g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.EnumC19391ab;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.c.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c/b.class */
public final class C19765b {

    /* renamed from: a */
    public final C19499f f65954a;

    /* renamed from: b */
    private final AbstractC19356g f65955b;

    public C19765b(C19499f packageFragmentProvider, AbstractC19356g javaResolverCache) {
        C18524p.m3840d(packageFragmentProvider, "packageFragmentProvider");
        C18524p.m3840d(javaResolverCache, "javaResolverCache");
        this.f65954a = packageFragmentProvider;
        this.f65955b = javaResolverCache;
    }

    /* renamed from: a */
    public final AbstractC19070d m1506a(AbstractC19398g javaClass) {
        C18524p.m3840d(javaClass, "javaClass");
        C18961b mo2216e = javaClass.mo2216e();
        if (mo2216e == null || EnumC19391ab.SOURCE != null) {
            AbstractC19398g mo2208s = javaClass.mo2208s();
            if (mo2208s != null) {
                AbstractC19070d m1506a = m1506a(mo2208s);
                AbstractC19834h unsubstitutedInnerClassesScope = m1506a == null ? null : m1506a.getUnsubstitutedInnerClassesScope();
                AbstractC19129g contributedClassifier = unsubstitutedInnerClassesScope == null ? null : unsubstitutedInnerClassesScope.getContributedClassifier(javaClass.mo2183h(), EnumC18698d.FROM_JAVA_LOADER);
                if (!(contributedClassifier instanceof AbstractC19070d)) {
                    return null;
                }
                return (AbstractC19070d) contributedClassifier;
            } else if (mo2216e == null) {
                return null;
            } else {
                C19499f c19499f = this.f65954a;
                C18961b m2739d = mo2216e.m2739d();
                C18524p.m3843b(m2739d, "fqName.parent()");
                C19467g c19467g = (C19467g) C18282n.m4121f((List<? extends Object>) c19499f.mo1385b(m2739d));
                if (c19467g != null) {
                    return c19467g.m2101a(javaClass);
                }
                return null;
            }
        }
        return this.f65955b.mo2273a(mo2216e);
    }
}
