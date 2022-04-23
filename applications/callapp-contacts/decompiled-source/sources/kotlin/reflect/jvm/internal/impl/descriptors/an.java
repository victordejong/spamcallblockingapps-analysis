package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/an.class */
public interface an extends b, bd {
    an a(TypeSubstitutor typeSubstitutor);

    ao a();

    ap b();

    List<am> c();

    an d();

    u e();

    u f();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.a
    Collection<? extends an> getOverriddenDescriptors();
}
