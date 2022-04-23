package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Iterator;
import java.util.List;
import kotlin.a.n;
import kotlin.g.k;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.a.a.d;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/v.class */
public final class v {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/v$a.class */
    final /* synthetic */ class a extends m implements Function1<kotlin.reflect.jvm.internal.impl.c.a, kotlin.reflect.jvm.internal.impl.c.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37594a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "getOuterClassId";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(kotlin.reflect.jvm.internal.impl.c.a.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.a invoke(kotlin.reflect.jvm.internal.impl.c.a aVar) {
            kotlin.reflect.jvm.internal.impl.c.a p0 = aVar;
            p.d(p0, "p0");
            return p0.d();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/v$b.class */
    static final class b extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.a, Integer> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37595a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Integer invoke(kotlin.reflect.jvm.internal.impl.c.a aVar) {
            kotlin.reflect.jvm.internal.impl.c.a it2 = aVar;
            p.d(it2, "it");
            return 0;
        }
    }

    public static final d a(ab abVar, kotlin.reflect.jvm.internal.impl.c.a classId, ad notFoundClasses) {
        p.d(abVar, "<this>");
        p.d(classId, "classId");
        p.d(notFoundClasses, "notFoundClasses");
        d b2 = b(abVar, classId);
        return b2 != null ? b2 : notFoundClasses.a(classId, k.f(k.d(k.a(classId, a.f37594a), b.f37595a)));
    }

    public static final g a(ab abVar, kotlin.reflect.jvm.internal.impl.c.a classId) {
        g gVar;
        p.d(abVar, "<this>");
        p.d(classId, "classId");
        ab a2 = kotlin.reflect.jvm.internal.impl.resolve.k.a(abVar);
        if (a2 == null) {
            kotlin.reflect.jvm.internal.impl.c.b a3 = classId.a();
            p.b(a3, "classId.packageFqName");
            aj ajVar = abVar.getPackage(a3);
            List<e> g = classId.b().g();
            p.b(g, "classId.relativeClassName.pathSegments()");
            h b2 = ajVar.b();
            Object e = n.e((List<? extends Object>) g);
            p.b(e, "segments.first()");
            d contributedClassifier = b2.getContributedClassifier((e) e, d.FROM_DESERIALIZATION);
            if (contributedClassifier == null) {
                return null;
            }
            for (e name : g.subList(1, g.size())) {
                if (!(contributedClassifier instanceof d)) {
                    return null;
                }
                h unsubstitutedInnerClassesScope = ((d) contributedClassifier).getUnsubstitutedInnerClassesScope();
                p.b(name, "name");
                g contributedClassifier2 = unsubstitutedInnerClassesScope.getContributedClassifier(name, d.FROM_DESERIALIZATION);
                d dVar = contributedClassifier2 instanceof d ? (d) contributedClassifier2 : null;
                if (dVar == null) {
                    return null;
                }
                contributedClassifier = dVar;
            }
            return contributedClassifier;
        }
        kotlin.reflect.jvm.internal.impl.c.b a4 = classId.a();
        p.b(a4, "classId.packageFqName");
        aj ajVar2 = a2.getPackage(a4);
        List<e> g2 = classId.b().g();
        p.b(g2, "classId.relativeClassName.pathSegments()");
        h b3 = ajVar2.b();
        Object e2 = n.e((List<? extends Object>) g2);
        p.b(e2, "segments.first()");
        d contributedClassifier3 = b3.getContributedClassifier((e) e2, d.FROM_DESERIALIZATION);
        if (contributedClassifier3 != null) {
            Iterator<e> it2 = g2.subList(1, g2.size()).iterator();
            while (true) {
                gVar = contributedClassifier3;
                if (!it2.hasNext()) {
                    break;
                }
                e name2 = it2.next();
                if (!(contributedClassifier3 instanceof d)) {
                    break;
                }
                h unsubstitutedInnerClassesScope2 = ((d) contributedClassifier3).getUnsubstitutedInnerClassesScope();
                p.b(name2, "name");
                g contributedClassifier4 = unsubstitutedInnerClassesScope2.getContributedClassifier(name2, d.FROM_DESERIALIZATION);
                d dVar2 = contributedClassifier4 instanceof d ? (d) contributedClassifier4 : null;
                if (dVar2 == null) {
                    break;
                }
                contributedClassifier3 = dVar2;
            }
        }
        gVar = null;
        if (gVar != null) {
            return gVar;
        }
        kotlin.reflect.jvm.internal.impl.c.b a5 = classId.a();
        p.b(a5, "classId.packageFqName");
        aj ajVar3 = abVar.getPackage(a5);
        List<e> g3 = classId.b().g();
        p.b(g3, "classId.relativeClassName.pathSegments()");
        h b4 = ajVar3.b();
        Object e3 = n.e((List<? extends Object>) g3);
        p.b(e3, "segments.first()");
        d contributedClassifier5 = b4.getContributedClassifier((e) e3, d.FROM_DESERIALIZATION);
        if (contributedClassifier5 == null) {
            return null;
        }
        for (e name3 : g3.subList(1, g3.size())) {
            if (!(contributedClassifier5 instanceof d)) {
                return null;
            }
            h unsubstitutedInnerClassesScope3 = ((d) contributedClassifier5).getUnsubstitutedInnerClassesScope();
            p.b(name3, "name");
            g contributedClassifier6 = unsubstitutedInnerClassesScope3.getContributedClassifier(name3, d.FROM_DESERIALIZATION);
            d dVar3 = contributedClassifier6 instanceof d ? (d) contributedClassifier6 : null;
            if (dVar3 == null) {
                return null;
            }
            contributedClassifier5 = dVar3;
        }
        return contributedClassifier5;
    }

    public static final d b(ab abVar, kotlin.reflect.jvm.internal.impl.c.a classId) {
        p.d(abVar, "<this>");
        p.d(classId, "classId");
        g a2 = a(abVar, classId);
        if (a2 instanceof d) {
            return (d) a2;
        }
        return null;
    }
}
