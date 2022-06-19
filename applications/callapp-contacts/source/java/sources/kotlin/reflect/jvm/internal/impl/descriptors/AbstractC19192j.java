package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/j.class */
public interface AbstractC19192j extends AbstractC19219w {
    /* renamed from: b */
    AbstractC19130h mo2527b();

    /* renamed from: b */
    AbstractC19192j mo2526b(TypeSubstitutor typeSubstitutor);

    /* renamed from: c */
    AbstractC19070d mo2525c();

    /* renamed from: d */
    boolean mo2524d();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    KotlinType getReturnType();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    List<TypeParameterDescriptor> getTypeParameters();
}
