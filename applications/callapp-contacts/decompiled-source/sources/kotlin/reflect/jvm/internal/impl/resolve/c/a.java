package kotlin.reflect.jvm.internal.impl.resolve.c;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.resolve.e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c/a.class */
public final class a {
    public static final boolean a(KotlinType kotlinType) {
        return b(kotlinType) || c(kotlinType);
    }

    private static boolean b(KotlinType kotlinType) {
        Boolean bool;
        p.d(kotlinType, "<this>");
        g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            bool = null;
        } else {
            g gVar = declarationDescriptor;
            p.d(gVar, "<this>");
            bool = Boolean.valueOf(e.a(gVar) && !p.a(kotlin.reflect.jvm.internal.impl.resolve.b.a.b((d) gVar), j.i));
        }
        return p.a(bool, Boolean.TRUE);
    }

    private static final boolean c(KotlinType kotlinType) {
        g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        TypeParameterDescriptor typeParameterDescriptor = declarationDescriptor instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) declarationDescriptor : null;
        if (typeParameterDescriptor == null) {
            return false;
        }
        return a(TypeUtilsKt.getRepresentativeUpperBound(typeParameterDescriptor));
    }
}
