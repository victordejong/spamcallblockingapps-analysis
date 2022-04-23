package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.a.k;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes.class */
public final class JavaTypeAttributes {
    private final JavaTypeFlexibility flexibility;
    private final k howThisTypeIsUsed;
    private final boolean isForAnnotationParameter;
    private final TypeParameterDescriptor upperBoundOfTypeParameter;

    public JavaTypeAttributes(k howThisTypeIsUsed, JavaTypeFlexibility flexibility, boolean z, TypeParameterDescriptor typeParameterDescriptor) {
        p.d(howThisTypeIsUsed, "howThisTypeIsUsed");
        p.d(flexibility, "flexibility");
        this.howThisTypeIsUsed = howThisTypeIsUsed;
        this.flexibility = flexibility;
        this.isForAnnotationParameter = z;
        this.upperBoundOfTypeParameter = typeParameterDescriptor;
    }

    public /* synthetic */ JavaTypeAttributes(k kVar, JavaTypeFlexibility javaTypeFlexibility, boolean z, TypeParameterDescriptor typeParameterDescriptor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kVar, (i & 2) != 0 ? JavaTypeFlexibility.INFLEXIBLE : javaTypeFlexibility, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : typeParameterDescriptor);
    }

    public static /* synthetic */ JavaTypeAttributes copy$default(JavaTypeAttributes javaTypeAttributes, k kVar, JavaTypeFlexibility javaTypeFlexibility, boolean z, TypeParameterDescriptor typeParameterDescriptor, int i, Object obj) {
        if ((i & 1) != 0) {
            kVar = javaTypeAttributes.howThisTypeIsUsed;
        }
        if ((i & 2) != 0) {
            javaTypeFlexibility = javaTypeAttributes.flexibility;
        }
        if ((i & 4) != 0) {
            z = javaTypeAttributes.isForAnnotationParameter;
        }
        if ((i & 8) != 0) {
            typeParameterDescriptor = javaTypeAttributes.upperBoundOfTypeParameter;
        }
        return javaTypeAttributes.copy(kVar, javaTypeFlexibility, z, typeParameterDescriptor);
    }

    public final JavaTypeAttributes copy(k howThisTypeIsUsed, JavaTypeFlexibility flexibility, boolean z, TypeParameterDescriptor typeParameterDescriptor) {
        p.d(howThisTypeIsUsed, "howThisTypeIsUsed");
        p.d(flexibility, "flexibility");
        return new JavaTypeAttributes(howThisTypeIsUsed, flexibility, z, typeParameterDescriptor);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JavaTypeAttributes)) {
            return false;
        }
        JavaTypeAttributes javaTypeAttributes = (JavaTypeAttributes) obj;
        return this.howThisTypeIsUsed == javaTypeAttributes.howThisTypeIsUsed && this.flexibility == javaTypeAttributes.flexibility && this.isForAnnotationParameter == javaTypeAttributes.isForAnnotationParameter && p.a(this.upperBoundOfTypeParameter, javaTypeAttributes.upperBoundOfTypeParameter);
    }

    public final JavaTypeFlexibility getFlexibility() {
        return this.flexibility;
    }

    public final k getHowThisTypeIsUsed() {
        return this.howThisTypeIsUsed;
    }

    public final TypeParameterDescriptor getUpperBoundOfTypeParameter() {
        return this.upperBoundOfTypeParameter;
    }

    public final int hashCode() {
        int hashCode = this.howThisTypeIsUsed.hashCode();
        int hashCode2 = this.flexibility.hashCode();
        boolean z = this.isForAnnotationParameter;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        TypeParameterDescriptor typeParameterDescriptor = this.upperBoundOfTypeParameter;
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + (typeParameterDescriptor == null ? 0 : typeParameterDescriptor.hashCode());
    }

    public final boolean isForAnnotationParameter() {
        return this.isForAnnotationParameter;
    }

    public final String toString() {
        return "JavaTypeAttributes(howThisTypeIsUsed=" + this.howThisTypeIsUsed + ", flexibility=" + this.flexibility + ", isForAnnotationParameter=" + this.isForAnnotationParameter + ", upperBoundOfTypeParameter=" + this.upperBoundOfTypeParameter + ')';
    }

    public final JavaTypeAttributes withFlexibility(JavaTypeFlexibility flexibility) {
        p.d(flexibility, "flexibility");
        return copy$default(this, null, flexibility, false, null, 13, null);
    }
}
