package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p531g.C18381k;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19862k;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.v */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/v.class */
public final class C19216v {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.v$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/v$a.class */
    public final /* synthetic */ class C19217a extends C18521m implements Function1<C18960a, C18960a> {

        /* renamed from: a */
        public static final C19217a f65019a = new C19217a();

        C19217a() {
            super(1);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "getOuterClassId";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C18960a.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C18960a invoke(C18960a c18960a) {
            C18960a p0 = c18960a;
            C18524p.m3840d(p0, "p0");
            return p0.m2750d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.v$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/v$b.class */
    public static final class C19218b extends AbstractC18526r implements Function1<C18960a, Integer> {

        /* renamed from: a */
        public static final C19218b f65020a = new C19218b();

        C19218b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Integer invoke(C18960a c18960a) {
            C18960a it2 = c18960a;
            C18524p.m3840d(it2, "it");
            return 0;
        }
    }

    /* renamed from: a */
    public static final AbstractC19070d m2498a(AbstractC18999ab abstractC18999ab, C18960a classId, C19001ad notFoundClasses) {
        C18524p.m3840d(abstractC18999ab, "<this>");
        C18524p.m3840d(classId, "classId");
        C18524p.m3840d(notFoundClasses, "notFoundClasses");
        AbstractC19070d m2497b = m2497b(abstractC18999ab, classId);
        return m2497b != null ? m2497b : notFoundClasses.m2699a(classId, C18381k.m4012f(C18381k.m4015d(C18381k.m4031a(classId, C19217a.f65019a), C19218b.f65020a)));
    }

    /* renamed from: a */
    public static final AbstractC19129g m2499a(AbstractC18999ab abstractC18999ab, C18960a classId) {
        AbstractC19129g abstractC19129g;
        C18524p.m3840d(abstractC18999ab, "<this>");
        C18524p.m3840d(classId, "classId");
        AbstractC18999ab m1393a = C19862k.m1393a(abstractC18999ab);
        if (m1393a == null) {
            C18961b m2758a = classId.m2758a();
            C18524p.m3843b(m2758a, "classId.packageFqName");
            AbstractC19013aj abstractC19013aj = abstractC18999ab.getPackage(m2758a);
            List<C18966e> m2736g = classId.m2752b().m2736g();
            C18524p.m3843b(m2736g, "classId.relativeClassName.pathSegments()");
            AbstractC19834h mo2570b = abstractC19013aj.mo2570b();
            Object e = C18282n.m4123e((List<? extends Object>) m2736g);
            C18524p.m3843b(e, "segments.first()");
            AbstractC19129g contributedClassifier = mo2570b.getContributedClassifier((C18966e) e, EnumC18698d.FROM_DESERIALIZATION);
            if (contributedClassifier == null) {
                return null;
            }
            for (C18966e name : m2736g.subList(1, m2736g.size())) {
                if (!(contributedClassifier instanceof AbstractC19070d)) {
                    return null;
                }
                AbstractC19834h unsubstitutedInnerClassesScope = ((AbstractC19070d) contributedClassifier).getUnsubstitutedInnerClassesScope();
                C18524p.m3843b(name, "name");
                AbstractC19129g contributedClassifier2 = unsubstitutedInnerClassesScope.getContributedClassifier(name, EnumC18698d.FROM_DESERIALIZATION);
                AbstractC19070d abstractC19070d = contributedClassifier2 instanceof AbstractC19070d ? (AbstractC19070d) contributedClassifier2 : null;
                if (abstractC19070d == null) {
                    return null;
                }
                contributedClassifier = abstractC19070d;
            }
            return contributedClassifier;
        }
        C18961b m2758a2 = classId.m2758a();
        C18524p.m3843b(m2758a2, "classId.packageFqName");
        AbstractC19013aj abstractC19013aj2 = m1393a.getPackage(m2758a2);
        List<C18966e> m2736g2 = classId.m2752b().m2736g();
        C18524p.m3843b(m2736g2, "classId.relativeClassName.pathSegments()");
        AbstractC19834h mo2570b2 = abstractC19013aj2.mo2570b();
        Object e2 = C18282n.m4123e((List<? extends Object>) m2736g2);
        C18524p.m3843b(e2, "segments.first()");
        AbstractC19129g contributedClassifier3 = mo2570b2.getContributedClassifier((C18966e) e2, EnumC18698d.FROM_DESERIALIZATION);
        if (contributedClassifier3 != null) {
            Iterator<C18966e> it2 = m2736g2.subList(1, m2736g2.size()).iterator();
            while (true) {
                abstractC19129g = contributedClassifier3;
                if (!it2.hasNext()) {
                    break;
                }
                C18966e name2 = it2.next();
                if (!(contributedClassifier3 instanceof AbstractC19070d)) {
                    break;
                }
                AbstractC19834h unsubstitutedInnerClassesScope2 = ((AbstractC19070d) contributedClassifier3).getUnsubstitutedInnerClassesScope();
                C18524p.m3843b(name2, "name");
                AbstractC19129g contributedClassifier4 = unsubstitutedInnerClassesScope2.getContributedClassifier(name2, EnumC18698d.FROM_DESERIALIZATION);
                AbstractC19070d abstractC19070d2 = contributedClassifier4 instanceof AbstractC19070d ? (AbstractC19070d) contributedClassifier4 : null;
                if (abstractC19070d2 == null) {
                    break;
                }
                contributedClassifier3 = abstractC19070d2;
            }
        }
        abstractC19129g = null;
        if (abstractC19129g != null) {
            return abstractC19129g;
        }
        C18961b m2758a3 = classId.m2758a();
        C18524p.m3843b(m2758a3, "classId.packageFqName");
        AbstractC19013aj abstractC19013aj3 = abstractC18999ab.getPackage(m2758a3);
        List<C18966e> m2736g3 = classId.m2752b().m2736g();
        C18524p.m3843b(m2736g3, "classId.relativeClassName.pathSegments()");
        AbstractC19834h mo2570b3 = abstractC19013aj3.mo2570b();
        Object e3 = C18282n.m4123e((List<? extends Object>) m2736g3);
        C18524p.m3843b(e3, "segments.first()");
        AbstractC19129g contributedClassifier5 = mo2570b3.getContributedClassifier((C18966e) e3, EnumC18698d.FROM_DESERIALIZATION);
        if (contributedClassifier5 == null) {
            return null;
        }
        for (C18966e name3 : m2736g3.subList(1, m2736g3.size())) {
            if (!(contributedClassifier5 instanceof AbstractC19070d)) {
                return null;
            }
            AbstractC19834h unsubstitutedInnerClassesScope3 = ((AbstractC19070d) contributedClassifier5).getUnsubstitutedInnerClassesScope();
            C18524p.m3843b(name3, "name");
            AbstractC19129g contributedClassifier6 = unsubstitutedInnerClassesScope3.getContributedClassifier(name3, EnumC18698d.FROM_DESERIALIZATION);
            AbstractC19070d abstractC19070d3 = contributedClassifier6 instanceof AbstractC19070d ? (AbstractC19070d) contributedClassifier6 : null;
            if (abstractC19070d3 == null) {
                return null;
            }
            contributedClassifier5 = abstractC19070d3;
        }
        return contributedClassifier5;
    }

    /* renamed from: b */
    public static final AbstractC19070d m2497b(AbstractC18999ab abstractC18999ab, C18960a classId) {
        C18524p.m3840d(abstractC18999ab, "<this>");
        C18524p.m3840d(classId, "classId");
        AbstractC19129g m2499a = m2499a(abstractC18999ab, classId);
        if (m2499a instanceof AbstractC19070d) {
            return (AbstractC19070d) m2499a;
        }
        return null;
    }
}
