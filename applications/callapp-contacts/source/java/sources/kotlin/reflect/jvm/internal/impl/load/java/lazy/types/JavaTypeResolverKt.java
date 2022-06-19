package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.List;
import java.util.Objects;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.EnumC19365k;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImplKt;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt.class */
public final class JavaTypeResolverKt {
    private static final C18961b JAVA_LANG_CLASS_FQ_NAME = new C18961b("java.lang.Class");

    public static final /* synthetic */ C18961b access$getJAVA_LANG_CLASS_FQ_NAME$p$s1946801611() {
        return JAVA_LANG_CLASS_FQ_NAME;
    }

    public static final KotlinType getErasedUpperBound(TypeParameterDescriptor typeParameterDescriptor, TypeParameterDescriptor typeParameterDescriptor2, Function0<? extends KotlinType> defaultValue) {
        C18524p.m3840d(typeParameterDescriptor, "<this>");
        C18524p.m3840d(defaultValue, "defaultValue");
        if (typeParameterDescriptor == typeParameterDescriptor2) {
            return defaultValue.invoke();
        }
        List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
        C18524p.m3843b(upperBounds, "upperBounds");
        KotlinType firstUpperBound = (KotlinType) C18282n.m4123e((List<? extends Object>) upperBounds);
        if (firstUpperBound.getConstructor().getDeclarationDescriptor() instanceof AbstractC19070d) {
            C18524p.m3843b(firstUpperBound, "firstUpperBound");
            return TypeUtilsKt.replaceArgumentsWithStarProjections(firstUpperBound);
        }
        if (typeParameterDescriptor2 != null) {
            typeParameterDescriptor = typeParameterDescriptor2;
        }
        AbstractC19129g declarationDescriptor = firstUpperBound.getConstructor().getDeclarationDescriptor();
        Objects.requireNonNull(declarationDescriptor, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
        while (true) {
            TypeParameterDescriptor typeParameterDescriptor3 = (TypeParameterDescriptor) declarationDescriptor;
            if (C18524p.m3850a(typeParameterDescriptor3, typeParameterDescriptor)) {
                return defaultValue.invoke();
            }
            List<KotlinType> upperBounds2 = typeParameterDescriptor3.getUpperBounds();
            C18524p.m3843b(upperBounds2, "current.upperBounds");
            KotlinType nextUpperBound = (KotlinType) C18282n.m4123e((List<? extends Object>) upperBounds2);
            if (nextUpperBound.getConstructor().getDeclarationDescriptor() instanceof AbstractC19070d) {
                C18524p.m3843b(nextUpperBound, "nextUpperBound");
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
        C18524p.m3840d(typeParameter, "typeParameter");
        C18524p.m3840d(attr, "attr");
        return attr.getHowThisTypeIsUsed() == EnumC19365k.SUPERTYPE ? new TypeProjectionImpl(StarProjectionImplKt.starProjectionType(typeParameter)) : new StarProjectionImpl(typeParameter);
    }

    public static final JavaTypeAttributes toAttributes(EnumC19365k enumC19365k, boolean z, TypeParameterDescriptor typeParameterDescriptor) {
        C18524p.m3840d(enumC19365k, "<this>");
        return new JavaTypeAttributes(enumC19365k, null, z, typeParameterDescriptor, 2, null);
    }

    public static /* synthetic */ JavaTypeAttributes toAttributes$default(EnumC19365k enumC19365k, boolean z, TypeParameterDescriptor typeParameterDescriptor, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            typeParameterDescriptor = null;
        }
        return toAttributes(enumC19365k, z, typeParameterDescriptor);
    }
}
