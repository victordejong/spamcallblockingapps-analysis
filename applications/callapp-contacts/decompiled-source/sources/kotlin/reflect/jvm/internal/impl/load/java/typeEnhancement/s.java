package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.c;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.a.k;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.load.java.u;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.checker.SimpleClassicTypeSystemContext;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private static final b f37997a;

    /* renamed from: b  reason: collision with root package name */
    private static final b f37998b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s$a.class */
    public final /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f37999a;

        /* renamed from: b  reason: collision with root package name */
        public static final /* synthetic */ int[] f38000b;

        static {
            int[] iArr = new int[f.values().length];
            iArr[f.READ_ONLY.ordinal()] = 1;
            iArr[f.MUTABLE.ordinal()] = 2;
            f37999a = iArr;
            int[] iArr2 = new int[g.values().length];
            iArr2[g.NULLABLE.ordinal()] = 1;
            iArr2[g.NOT_NULL.ordinal()] = 2;
            f38000b = iArr2;
        }
    }

    static {
        b ENHANCED_NULLABILITY_ANNOTATION = u.q;
        p.b(ENHANCED_NULLABILITY_ANNOTATION, "ENHANCED_NULLABILITY_ANNOTATION");
        f37997a = new b(ENHANCED_NULLABILITY_ANNOTATION);
        b ENHANCED_MUTABILITY_ANNOTATION = u.r;
        p.b(ENHANCED_MUTABILITY_ANNOTATION, "ENHANCED_MUTABILITY_ANNOTATION");
        f37998b = new b(ENHANCED_MUTABILITY_ANNOTATION);
    }

    public static final /* synthetic */ g a(List list) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? new k(n.h((Iterable) list)) : (g) n.i((List<? extends Object>) list);
        }
        throw new IllegalStateException("At least one Annotations object expected".toString());
    }

    private static final <T> c<T> a(T t) {
        return new c<>(t, null);
    }

    public static final /* synthetic */ c a(kotlin.reflect.jvm.internal.impl.descriptors.g gVar, e eVar, o oVar) {
        if (p.a(oVar) && (gVar instanceof d)) {
            kotlin.reflect.jvm.internal.impl.builtins.a.d dVar = kotlin.reflect.jvm.internal.impl.builtins.a.d.f37244a;
            f fVar = eVar.f37922c;
            int i = fVar == null ? -1 : a.f37999a[fVar.ordinal()];
            if (i != 1) {
                if (i == 2 && oVar == o.FLEXIBLE_UPPER) {
                    d dVar2 = (d) gVar;
                    if (kotlin.reflect.jvm.internal.impl.builtins.a.d.b(dVar2)) {
                        return c(kotlin.reflect.jvm.internal.impl.builtins.a.d.c(dVar2));
                    }
                }
            } else if (oVar == o.FLEXIBLE_LOWER) {
                d mutable = (d) gVar;
                if (kotlin.reflect.jvm.internal.impl.builtins.a.d.a(mutable)) {
                    p.d(mutable, "mutable");
                    d dVar3 = mutable;
                    c c2 = kotlin.reflect.jvm.internal.impl.resolve.d.c(dVar3);
                    kotlin.reflect.jvm.internal.impl.builtins.a.c cVar = kotlin.reflect.jvm.internal.impl.builtins.a.c.f37237a;
                    b b2 = kotlin.reflect.jvm.internal.impl.builtins.a.c.b(c2);
                    if (b2 != null) {
                        d a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.d(dVar3).a(b2);
                        p.b(a2, "descriptor.builtIns.getBuiltInClassByFqName(oppositeClassFqName)");
                        return c(a2);
                    }
                    throw new IllegalArgumentException("Given class " + mutable + " is not a mutable collection");
                }
            }
        }
        return a(gVar);
    }

    public static final /* synthetic */ c a(KotlinType kotlinType, e eVar, o oVar) {
        if (p.a(oVar)) {
            g gVar = eVar.f37921b;
            int i = gVar == null ? -1 : a.f38000b[gVar.ordinal()];
            if (i == 1) {
                return b(Boolean.TRUE);
            }
            if (i == 2) {
                return b(Boolean.FALSE);
            }
        }
        return a(Boolean.valueOf(kotlinType.isMarkedNullable()));
    }

    public static final boolean a(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return q.a(SimpleClassicTypeSystemContext.INSTANCE, kotlinType);
    }

    private static final <T> c<T> b(T t) {
        return new c<>(t, f37997a);
    }

    private static final <T> c<T> c(T t) {
        return new c<>(t, f37998b);
    }
}
