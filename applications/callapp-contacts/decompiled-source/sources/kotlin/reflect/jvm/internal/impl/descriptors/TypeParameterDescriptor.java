package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor.class */
public interface TypeParameterDescriptor extends g, TypeParameterMarker {
    int getIndex();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g, kotlin.reflect.jvm.internal.impl.descriptors.k
    TypeParameterDescriptor getOriginal();

    n getStorageManager();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    TypeConstructor getTypeConstructor();

    List<KotlinType> getUpperBounds();

    Variance getVariance();

    boolean isCapturedFromOuterDeclaration();

    boolean isReified();
}
