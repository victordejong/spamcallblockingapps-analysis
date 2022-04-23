package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.List;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.functions.b;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.c;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/f.class */
public final class f {
    private static final b a(c cVar) {
        if (!cVar.b() || cVar.f37340a.isEmpty()) {
            return null;
        }
        b.a aVar = b.Companion;
        String a2 = cVar.e().a();
        p.b(a2, "shortName().asString()");
        kotlin.reflect.jvm.internal.impl.c.b d2 = cVar.c().d();
        p.b(d2, "toSafe().parent()");
        return aVar.b(a2, d2);
    }

    private static b a(k kVar) {
        p.d(kVar, "<this>");
        if ((kVar instanceof d) && g.b(kVar)) {
            return a(a.a(kVar));
        }
        return null;
    }

    public static final SimpleType a(g builtIns, g annotations, KotlinType kotlinType, List<? extends KotlinType> parameterTypes, List<e> list, KotlinType returnType, boolean z) {
        p.d(builtIns, "builtIns");
        p.d(annotations, "annotations");
        p.d(parameterTypes, "parameterTypes");
        p.d(returnType, "returnType");
        p.d(parameterTypes, "parameterTypes");
        p.d(returnType, "returnType");
        p.d(builtIns, "builtIns");
        int i = 0;
        ArrayList arrayList = new ArrayList(parameterTypes.size() + (kotlinType != null ? 1 : 0) + 1);
        ArrayList arrayList2 = arrayList;
        kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList2, kotlinType == null ? null : TypeUtilsKt.asTypeProjection(kotlinType));
        for (Object obj : parameterTypes) {
            if (i < 0) {
                n.a();
            }
            arrayList2.add(TypeUtilsKt.asTypeProjection((KotlinType) obj));
            i++;
        }
        arrayList.add(TypeUtilsKt.asTypeProjection(returnType));
        ArrayList arrayList3 = arrayList;
        int size = parameterTypes.size();
        if (kotlinType != null) {
            size++;
        }
        p.d(builtIns, "builtIns");
        d a2 = z ? builtIns.a(size) : builtIns.a(j.a(size));
        p.b(a2, "if (isSuspendFunction) builtIns.getSuspendFunction(parameterCount) else builtIns.getFunction(parameterCount)");
        g gVar = annotations;
        if (kotlinType != null) {
            p.d(annotations, "<this>");
            p.d(builtIns, "builtIns");
            if (annotations.b(j.a.C)) {
                gVar = annotations;
            } else {
                g.a aVar = g.f37361a;
                gVar = g.a.a(n.d(annotations, new kotlin.reflect.jvm.internal.impl.descriptors.a.j(builtIns, j.a.C, ai.a())));
            }
        }
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        return KotlinTypeFactory.simpleNotNullType(gVar, a2, arrayList3);
    }

    public static final boolean a(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return (declarationDescriptor == null ? null : a(declarationDescriptor)) == b.Function;
    }

    public static final boolean b(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return (declarationDescriptor == null ? null : a(declarationDescriptor)) == b.SuspendFunction;
    }

    public static final boolean c(KotlinType kotlinType) {
        Boolean bool;
        p.d(kotlinType, "<this>");
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            bool = null;
        } else {
            kotlin.reflect.jvm.internal.impl.descriptors.g gVar = declarationDescriptor;
            p.d(gVar, "<this>");
            b a2 = a(gVar);
            bool = Boolean.valueOf(a2 == b.Function || a2 == b.SuspendFunction);
        }
        return p.a(bool, Boolean.TRUE);
    }

    public static final KotlinType d(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        boolean c2 = c(kotlinType);
        if (x.f38657a && !c2) {
            throw new AssertionError(p.a("Not a function type: ", (Object) kotlinType));
        } else if (h(kotlinType)) {
            return ((TypeProjection) n.e((List<? extends Object>) kotlinType.getArguments())).getType();
        } else {
            return null;
        }
    }

    public static final KotlinType e(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        boolean c2 = c(kotlinType);
        if (!x.f38657a || c2) {
            KotlinType type = ((TypeProjection) n.g((List<? extends Object>) kotlinType.getArguments())).getType();
            p.b(type, "arguments.last().type");
            return type;
        }
        throw new AssertionError(p.a("Not a function type: ", (Object) kotlinType));
    }

    public static final List<TypeProjection> f(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        boolean c2 = c(kotlinType);
        if (!x.f38657a || c2) {
            List<TypeProjection> arguments = kotlinType.getArguments();
            p.d(kotlinType, "<this>");
            boolean z = false;
            int i = (!c(kotlinType) || !h(kotlinType)) ? 0 : 1;
            int size = arguments.size() - 1;
            if (i <= size) {
                z = true;
            }
            if (!x.f38657a || z) {
                return arguments.subList(i, size);
            }
            throw new AssertionError(p.a("Not an exact function type: ", (Object) kotlinType));
        }
        throw new AssertionError(p.a("Not a function type: ", (Object) kotlinType));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
        if (kotlin.reflect.jvm.internal.impl.c.e.b(r3) != false) goto L_0x0058;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.impl.c.e g(kotlin.reflect.jvm.internal.impl.types.KotlinType r3) {
        /*
            r0 = r3
            java.lang.String r1 = "<this>"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r3
            kotlin.reflect.jvm.internal.impl.descriptors.a.g r0 = r0.getAnnotations()
            kotlin.reflect.jvm.internal.impl.c.b r1 = kotlin.reflect.jvm.internal.impl.builtins.j.a.D
            kotlin.reflect.jvm.internal.impl.descriptors.a.c r0 = r0.a(r1)
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L_0x0019
            r0 = 0
            return r0
        L_0x0019:
            r0 = r3
            java.util.Map r0 = r0.c()
            java.util.Collection r0 = r0.values()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.lang.Object r0 = kotlin.a.n.e(r0)
            r3 = r0
            r0 = r3
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.s
            if (r0 == 0) goto L_0x003a
            r0 = r3
            kotlin.reflect.jvm.internal.impl.resolve.constants.s r0 = (kotlin.reflect.jvm.internal.impl.resolve.constants.s) r0
            r3 = r0
            goto L_0x003c
        L_0x003a:
            r0 = 0
            r3 = r0
        L_0x003c:
            r0 = r3
            if (r0 == 0) goto L_0x0056
            r0 = r3
            java.lang.Object r0 = r0.a()
            java.lang.String r0 = (java.lang.String) r0
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0056
            r0 = r3
            boolean r0 = kotlin.reflect.jvm.internal.impl.c.e.b(r0)
            if (r0 == 0) goto L_0x0056
            goto L_0x0058
        L_0x0056:
            r0 = 0
            r3 = r0
        L_0x0058:
            r0 = r3
            if (r0 != 0) goto L_0x005e
            r0 = 0
            return r0
        L_0x005e:
            r0 = r3
            kotlin.reflect.jvm.internal.impl.c.e r0 = kotlin.reflect.jvm.internal.impl.c.e.a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.f.g(kotlin.reflect.jvm.internal.impl.types.KotlinType):kotlin.reflect.jvm.internal.impl.c.e");
    }

    private static final boolean h(KotlinType kotlinType) {
        return kotlinType.getAnnotations().a(j.a.C) != null;
    }
}
