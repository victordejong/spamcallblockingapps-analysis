package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/q.class */
public final class q {
    public static final d a(ab abVar, b fqName, kotlin.reflect.jvm.internal.impl.a.a.b lookupLocation) {
        g gVar;
        h unsubstitutedInnerClassesScope;
        p.d(abVar, "<this>");
        p.d(fqName, "fqName");
        p.d(lookupLocation, "lookupLocation");
        if (fqName.f37335b.f37340a.isEmpty()) {
            return null;
        }
        b d2 = fqName.d();
        p.b(d2, "fqName.parent()");
        h b2 = abVar.getPackage(d2).b();
        e e = fqName.e();
        p.b(e, "fqName.shortName()");
        g contributedClassifier = b2.getContributedClassifier(e, lookupLocation);
        d dVar = contributedClassifier instanceof d ? (d) contributedClassifier : null;
        if (dVar != null) {
            return dVar;
        }
        b d3 = fqName.d();
        p.b(d3, "fqName.parent()");
        d a2 = a(abVar, d3, lookupLocation);
        if (a2 == null || (unsubstitutedInnerClassesScope = a2.getUnsubstitutedInnerClassesScope()) == null) {
            gVar = null;
        } else {
            e e2 = fqName.e();
            p.b(e2, "fqName.shortName()");
            gVar = unsubstitutedInnerClassesScope.getContributedClassifier(e2, lookupLocation);
        }
        if (gVar instanceof d) {
            return (d) gVar;
        }
        return null;
    }
}
