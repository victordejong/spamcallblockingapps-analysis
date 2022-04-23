package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/g.class */
public interface g extends l {
    SimpleType getDefaultType();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    g getOriginal();

    TypeConstructor getTypeConstructor();
}
