package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.q */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/q.class */
public final class C19199q {
    /* renamed from: a */
    public static final AbstractC19070d m2523a(AbstractC18999ab abstractC18999ab, C18961b fqName, AbstractC18695b lookupLocation) {
        AbstractC19129g abstractC19129g;
        AbstractC19834h unsubstitutedInnerClassesScope;
        C18524p.m3840d(abstractC18999ab, "<this>");
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(lookupLocation, "lookupLocation");
        if (fqName.f64686b.f64691a.isEmpty()) {
            return null;
        }
        C18961b m2739d = fqName.m2739d();
        C18524p.m3843b(m2739d, "fqName.parent()");
        AbstractC19834h mo2570b = abstractC18999ab.getPackage(m2739d).mo2570b();
        C18966e m2738e = fqName.m2738e();
        C18524p.m3843b(m2738e, "fqName.shortName()");
        AbstractC19129g contributedClassifier = mo2570b.getContributedClassifier(m2738e, lookupLocation);
        AbstractC19070d abstractC19070d = contributedClassifier instanceof AbstractC19070d ? (AbstractC19070d) contributedClassifier : null;
        if (abstractC19070d != null) {
            return abstractC19070d;
        }
        C18961b m2739d2 = fqName.m2739d();
        C18524p.m3843b(m2739d2, "fqName.parent()");
        AbstractC19070d m2523a = m2523a(abstractC18999ab, m2739d2, lookupLocation);
        if (m2523a == null || (unsubstitutedInnerClassesScope = m2523a.getUnsubstitutedInnerClassesScope()) == null) {
            abstractC19129g = null;
        } else {
            C18966e m2738e2 = fqName.m2738e();
            C18524p.m3843b(m2738e2, "fqName.shortName()");
            abstractC19129g = unsubstitutedInnerClassesScope.getContributedClassifier(m2738e2, lookupLocation);
        }
        if (!(abstractC19129g instanceof AbstractC19070d)) {
            return null;
        }
        return (AbstractC19070d) abstractC19129g;
    }
}
