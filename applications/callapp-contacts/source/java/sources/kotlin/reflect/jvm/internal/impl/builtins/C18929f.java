package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.List;
import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.builtins.functions.EnumC18933b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18989j;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/f.class */
public final class C18929f {
    /* renamed from: a */
    private static final EnumC18933b m2859a(C18962c c18962c) {
        if (!c18962c.m2732b() || c18962c.f64691a.isEmpty()) {
            return null;
        }
        EnumC18933b.C18934a c18934a = EnumC18933b.Companion;
        String m2721a = c18962c.m2727e().m2721a();
        C18524p.m3843b(m2721a, "shortName().asString()");
        C18961b m2739d = c18962c.m2730c().m2739d();
        C18524p.m3843b(m2739d, "toSafe().parent()");
        return c18934a.m2840b(m2721a, m2739d);
    }

    /* renamed from: a */
    private static EnumC18933b m2858a(AbstractC19193k abstractC19193k) {
        C18524p.m3840d(abstractC19193k, "<this>");
        if ((abstractC19193k instanceof AbstractC19070d) && AbstractC18940g.m2816b(abstractC19193k)) {
            return m2859a(C19756a.m1531a(abstractC19193k));
        }
        return null;
    }

    /* renamed from: a */
    public static final SimpleType m2861a(AbstractC18940g builtIns, AbstractC18983g annotations, KotlinType kotlinType, List<? extends KotlinType> parameterTypes, List<C18966e> list, KotlinType returnType, boolean z) {
        C18524p.m3840d(builtIns, "builtIns");
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(parameterTypes, "parameterTypes");
        C18524p.m3840d(returnType, "returnType");
        C18524p.m3840d(parameterTypes, "parameterTypes");
        C18524p.m3840d(returnType, "returnType");
        C18524p.m3840d(builtIns, "builtIns");
        ArrayList arrayList = new ArrayList(parameterTypes.size() + (kotlinType != null ? 1 : 0) + 1);
        ArrayList arrayList2 = arrayList;
        C19999a.m1208a(arrayList2, kotlinType == null ? null : TypeUtilsKt.asTypeProjection(kotlinType));
        int i = 0;
        for (Object obj : parameterTypes) {
            if (i < 0) {
                C18282n.m4175a();
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
        C18524p.m3840d(builtIns, "builtIns");
        AbstractC19070d m2836a = z ? builtIns.m2836a(size) : builtIns.m2835a(C18954j.m2774a(size));
        C18524p.m3843b(m2836a, "if (isSuspendFunction) builtIns.getSuspendFunction(parameterCount) else builtIns.getFunction(parameterCount)");
        AbstractC18983g abstractC18983g = annotations;
        if (kotlinType != null) {
            C18524p.m3840d(annotations, "<this>");
            C18524p.m3840d(builtIns, "builtIns");
            if (annotations.mo1338b(C18954j.C18955a.f64591C)) {
                abstractC18983g = annotations;
            } else {
                AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
                abstractC18983g = AbstractC18983g.C18984a.m2704a(C18282n.m4126d(annotations, new C18989j(builtIns, C18954j.C18955a.f64591C, C18247ai.m4257a())));
            }
        }
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        return KotlinTypeFactory.simpleNotNullType(abstractC18983g, m2836a, arrayList3);
    }

    /* renamed from: a */
    public static final boolean m2857a(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return (declarationDescriptor == null ? null : m2858a(declarationDescriptor)) == EnumC18933b.Function;
    }

    /* renamed from: b */
    public static final boolean m2856b(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return (declarationDescriptor == null ? null : m2858a(declarationDescriptor)) == EnumC18933b.SuspendFunction;
    }

    /* renamed from: c */
    public static final boolean m2855c(KotlinType kotlinType) {
        Boolean bool;
        C18524p.m3840d(kotlinType, "<this>");
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            bool = null;
        } else {
            AbstractC19129g abstractC19129g = declarationDescriptor;
            C18524p.m3840d(abstractC19129g, "<this>");
            EnumC18933b m2858a = m2858a(abstractC19129g);
            bool = Boolean.valueOf(m2858a == EnumC18933b.Function || m2858a == EnumC18933b.SuspendFunction);
        }
        return C18524p.m3850a(bool, Boolean.TRUE);
    }

    /* renamed from: d */
    public static final KotlinType m2854d(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        boolean m2855c = m2855c(kotlinType);
        if (!C20130x.f66532a || m2855c) {
            if (!m2850h(kotlinType)) {
                return null;
            }
            return ((TypeProjection) C18282n.m4123e((List<? extends Object>) kotlinType.getArguments())).getType();
        }
        throw new AssertionError(C18524p.m3847a("Not a function type: ", (Object) kotlinType));
    }

    /* renamed from: e */
    public static final KotlinType m2853e(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        boolean m2855c = m2855c(kotlinType);
        if (!C20130x.f66532a || m2855c) {
            KotlinType type = ((TypeProjection) C18282n.m4119g((List<? extends Object>) kotlinType.getArguments())).getType();
            C18524p.m3843b(type, "arguments.last().type");
            return type;
        }
        throw new AssertionError(C18524p.m3847a("Not a function type: ", (Object) kotlinType));
    }

    /* renamed from: f */
    public static final List<TypeProjection> m2852f(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        boolean m2855c = m2855c(kotlinType);
        if (!C20130x.f66532a || m2855c) {
            List<TypeProjection> arguments = kotlinType.getArguments();
            C18524p.m3840d(kotlinType, "<this>");
            boolean z = false;
            int i = (!m2855c(kotlinType) || !m2850h(kotlinType)) ? 0 : 1;
            int size = arguments.size() - 1;
            if (i <= size) {
                z = true;
            }
            if (C20130x.f66532a && !z) {
                throw new AssertionError(C18524p.m3847a("Not an exact function type: ", (Object) kotlinType));
            }
            return arguments.subList(i, size);
        }
        throw new AssertionError(C18524p.m3847a("Not a function type: ", (Object) kotlinType));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
        if (kotlin.reflect.jvm.internal.impl.p545c.C18966e.m2716b(r3) != false) goto L16;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.reflect.jvm.internal.impl.p545c.C18966e m2851g(kotlin.reflect.jvm.internal.impl.types.KotlinType r3) {
        /*
            r0 = r3
            java.lang.String r1 = "<this>"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r3
            kotlin.reflect.jvm.internal.impl.descriptors.a.g r0 = r0.getAnnotations()
            kotlin.reflect.jvm.internal.impl.c.b r1 = kotlin.reflect.jvm.internal.impl.builtins.C18954j.C18955a.f64592D
            kotlin.reflect.jvm.internal.impl.descriptors.a.c r0 = r0.mo1340a(r1)
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L19
            r0 = 0
            return r0
        L19:
            r0 = r3
            java.util.Map r0 = r0.mo2041c()
            java.util.Collection r0 = r0.values()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.lang.Object r0 = kotlin.p518a.C18282n.m4124e(r0)
            r3 = r0
            r0 = r3
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.C19801s
            if (r0 == 0) goto L3a
            r0 = r3
            kotlin.reflect.jvm.internal.impl.resolve.constants.s r0 = (kotlin.reflect.jvm.internal.impl.resolve.constants.C19801s) r0
            r3 = r0
            goto L3c
        L3a:
            r0 = 0
            r3 = r0
        L3c:
            r0 = r3
            if (r0 == 0) goto L56
            r0 = r3
            java.lang.Object r0 = r0.mo1489a()
            java.lang.String r0 = (java.lang.String) r0
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L56
            r0 = r3
            boolean r0 = kotlin.reflect.jvm.internal.impl.p545c.C18966e.m2716b(r0)
            if (r0 == 0) goto L56
            goto L58
        L56:
            r0 = 0
            r3 = r0
        L58:
            r0 = r3
            if (r0 != 0) goto L5e
            r0 = 0
            return r0
        L5e:
            r0 = r3
            kotlin.reflect.jvm.internal.impl.c.e r0 = kotlin.reflect.jvm.internal.impl.p545c.C18966e.m2719a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.C18929f.m2851g(kotlin.reflect.jvm.internal.impl.types.KotlinType):kotlin.reflect.jvm.internal.impl.c.e");
    }

    /* renamed from: h */
    private static final boolean m2850h(KotlinType kotlinType) {
        return kotlinType.getAnnotations().mo1340a(C18954j.C18955a.f64591C) != null;
    }
}
