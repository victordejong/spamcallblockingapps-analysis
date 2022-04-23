package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/j.class */
public interface j extends w {
    h b();

    j b(TypeSubstitutor typeSubstitutor);

    d c();

    boolean d();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    KotlinType getReturnType();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    List<TypeParameterDescriptor> getTypeParameters();
}
