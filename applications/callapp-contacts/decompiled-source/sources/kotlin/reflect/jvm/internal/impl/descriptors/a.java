package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a.class */
public interface a extends av<a>, l, o {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a$a.class */
    public interface AbstractC0668a<V> {
    }

    aq getDispatchReceiverParameter();

    aq getExtensionReceiverParameter();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    a getOriginal();

    Collection<? extends a> getOverriddenDescriptors();

    KotlinType getReturnType();

    List<TypeParameterDescriptor> getTypeParameters();

    <V> V getUserData(AbstractC0668a<V> aVar);

    List<ba> getValueParameters();

    boolean hasSynthesizedParameterNames();
}
