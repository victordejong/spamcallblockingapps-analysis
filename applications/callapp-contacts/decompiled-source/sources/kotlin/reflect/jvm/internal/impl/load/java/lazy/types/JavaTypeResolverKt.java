package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.List;
import java.util.Objects;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.load.java.a.k;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImplKt;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt.class */
public final class JavaTypeResolverKt {
    private static final b JAVA_LANG_CLASS_FQ_NAME = new b("java.lang.Class");

    public static final /* synthetic */ b access$getJAVA_LANG_CLASS_FQ_NAME$p$s1946801611() {
        return JAVA_LANG_CLASS_FQ_NAME;
    }

    public static final KotlinType getErasedUpperBound(TypeParameterDescriptor typeParameterDescriptor, TypeParameterDescriptor typeParameterDescriptor2, Function0<? extends KotlinType> defaultValue) {
        p.d(typeParameterDescriptor, "<this>");
        p.d(defaultValue, "defaultValue");
        if (typeParameterDescriptor == typeParameterDescriptor2) {
            return (KotlinType) defaultValue.invoke();
        }
        List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
        p.b(upperBounds, "upperBounds");
        KotlinType firstUpperBound = (KotlinType) n.e((List<? extends Object>) upperBounds);
        if (firstUpperBound.getConstructor().getDeclarationDescriptor() instanceof d) {
            p.b(firstUpperBound, "firstUpperBound");
            return TypeUtilsKt.replaceArgumentsWithStarProjections(firstUpperBound);
        }
        if (typeParameterDescriptor2 != null) {
            typeParameterDescriptor = typeParameterDescriptor2;
        }
        g declarationDescriptor = firstUpperBound.getConstructor().getDeclarationDescriptor();
        Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
        while (true) {
            TypeParameterDescriptor typeParameterDescriptor3 = (TypeParameterDescriptor) declarationDescriptor;
            if (p.a(typeParameterDescriptor3, typeParameterDescriptor)) {
                return (KotlinType) defaultValue.invoke();
            }
            List<KotlinType> upperBounds2 = typeParameterDescriptor3.getUpperBounds();
            p.b(upperBounds2, "current.upperBounds");
            KotlinType nextUpperBound = (KotlinType) n.e((List<? extends Object>) upperBounds2);
            if (nextUpperBound.getConstructor().getDeclarationDescriptor() instanceof d) {
                p.b(nextUpperBound, "nextUpperBound");
                return TypeUtilsKt.replaceArgumentsWithStarProjections(nextUpperBound);
            }
            declarationDescriptor = nextUpperBound.getConstructor().getDeclarationDescriptor();
            Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
        }
    }

    public static /* synthetic */ KotlinType getErasedUpperBound$default(TypeParameterDescriptor typeParameterDescriptor, TypeParameterDescriptor typeParameterDescriptor2, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            typeParameterDescriptor2 = null;
        }
        if ((i & 2) != 0) {
            function0 = new JavaTypeResolverKt$getErasedUpperBound$1(typeParameterDescriptor);
        }
        return getErasedUpperBound(typeParameterDescriptor, typeParameterDescriptor2, function0);
    }

    public static final TypeProjection makeStarProjection(TypeParameterDescriptor typeParameter, JavaTypeAttributes attr) {
        p.d(typeParameter, "typeParameter");
        p.d(attr, "attr");
        return attr.getHowThisTypeIsUsed() == k.SUPERTYPE ? new TypeProjectionImpl(StarProjectionImplKt.starProjectionType(typeParameter)) : new StarProjectionImpl(typeParameter);
    }

    public static final JavaTypeAttributes toAttributes(k kVar, boolean z, TypeParameterDescriptor typeParameterDescriptor) {
        p.d(kVar, "<this>");
        return new JavaTypeAttributes(kVar, null, z, typeParameterDescriptor, 2, null);
    }

    public static /* synthetic */ JavaTypeAttributes toAttributes$default(k kVar, boolean z, TypeParameterDescriptor typeParameterDescriptor, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            typeParameterDescriptor = null;
        }
        return toAttributes(kVar, z, typeParameterDescriptor);
    }
}
