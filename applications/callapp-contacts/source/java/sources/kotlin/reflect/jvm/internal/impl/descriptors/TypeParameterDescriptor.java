package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.TypeParameterMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor.class */
public interface TypeParameterDescriptor extends AbstractC19129g, TypeParameterMarker {
    int getIndex();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    TypeParameterDescriptor getOriginal();

    AbstractC19302n getStorageManager();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    TypeConstructor getTypeConstructor();

    List<KotlinType> getUpperBounds();

    Variance getVariance();

    boolean isCapturedFromOuterDeclaration();

    boolean isReified();
}
