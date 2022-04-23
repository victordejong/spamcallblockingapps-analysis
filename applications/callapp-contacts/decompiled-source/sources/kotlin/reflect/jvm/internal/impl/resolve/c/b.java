package kotlin.reflect.jvm.internal.impl.resolve.c;

import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.load.java.a.g;
import kotlin.reflect.jvm.internal.impl.load.java.d.ab;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.f;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final f f38239a;

    /* renamed from: b  reason: collision with root package name */
    private final g f38240b;

    public b(f packageFragmentProvider, g javaResolverCache) {
        p.d(packageFragmentProvider, "packageFragmentProvider");
        p.d(javaResolverCache, "javaResolverCache");
        this.f38239a = packageFragmentProvider;
        this.f38240b = javaResolverCache;
    }

    public final d a(kotlin.reflect.jvm.internal.impl.load.java.d.g javaClass) {
        p.d(javaClass, "javaClass");
        kotlin.reflect.jvm.internal.impl.c.b e = javaClass.e();
        if (e != null && ab.SOURCE == null) {
            return this.f38240b.a(e);
        }
        kotlin.reflect.jvm.internal.impl.load.java.d.g s = javaClass.s();
        if (s != null) {
            d a2 = a(s);
            h unsubstitutedInnerClassesScope = a2 == null ? null : a2.getUnsubstitutedInnerClassesScope();
            kotlin.reflect.jvm.internal.impl.descriptors.g contributedClassifier = unsubstitutedInnerClassesScope == null ? null : unsubstitutedInnerClassesScope.getContributedClassifier(javaClass.h(), kotlin.reflect.jvm.internal.impl.a.a.d.FROM_JAVA_LOADER);
            if (contributedClassifier instanceof d) {
                return (d) contributedClassifier;
            }
            return null;
        } else if (e == null) {
            return null;
        } else {
            f fVar = this.f38239a;
            kotlin.reflect.jvm.internal.impl.c.b d2 = e.d();
            p.b(d2, "fqName.parent()");
            kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.g gVar = (kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.g) n.f((List<? extends Object>) fVar.b(d2));
            if (gVar == null) {
                return null;
            }
            return gVar.a(javaClass);
        }
    }
}
