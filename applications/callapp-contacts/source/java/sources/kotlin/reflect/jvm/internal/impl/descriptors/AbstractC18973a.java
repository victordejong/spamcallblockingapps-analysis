package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a.class */
public interface AbstractC18973a extends AbstractC19030av<AbstractC18973a>, AbstractC19194l, AbstractC19197o {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a$a.class */
    public interface AbstractC18974a<V> {
    }

    AbstractC19020aq getDispatchReceiverParameter();

    AbstractC19020aq getExtensionReceiverParameter();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    AbstractC18973a getOriginal();

    Collection<? extends AbstractC18973a> getOverriddenDescriptors();

    KotlinType getReturnType();

    List<TypeParameterDescriptor> getTypeParameters();

    <V> V getUserData(AbstractC18974a<V> abstractC18974a);

    List<AbstractC19050ba> getValueParameters();

    boolean hasSynthesizedParameterNames();
}
