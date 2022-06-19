package kotlin.reflect.jvm.internal.impl.resolve.p565c;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.C19810e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.c.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c/a.class */
public final class C19764a {
    /* renamed from: a */
    public static final boolean m1509a(KotlinType kotlinType) {
        return m1508b(kotlinType) || m1507c(kotlinType);
    }

    /* renamed from: b */
    private static boolean m1508b(KotlinType kotlinType) {
        Boolean bool;
        C18524p.m3840d(kotlinType, "<this>");
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            bool = null;
        } else {
            AbstractC19129g abstractC19129g = declarationDescriptor;
            C18524p.m3840d(abstractC19129g, "<this>");
            bool = Boolean.valueOf(C19810e.m1444a(abstractC19129g) && !C18524p.m3850a(C19756a.m1528b((AbstractC19070d) abstractC19129g), C18954j.f64579i));
        }
        return C18524p.m3850a(bool, Boolean.TRUE);
    }

    /* renamed from: c */
    private static final boolean m1507c(KotlinType kotlinType) {
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        TypeParameterDescriptor typeParameterDescriptor = declarationDescriptor instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) declarationDescriptor : null;
        if (typeParameterDescriptor == null) {
            return false;
        }
        return m1509a(TypeUtilsKt.getRepresentativeUpperBound(typeParameterDescriptor));
    }
}
