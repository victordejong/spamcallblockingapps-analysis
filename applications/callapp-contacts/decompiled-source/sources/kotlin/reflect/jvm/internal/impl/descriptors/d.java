package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d.class */
public interface d extends f, h {
    d getCompanionObjectDescriptor();

    Collection<c> getConstructors();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    k getContainingDeclaration();

    List<TypeParameterDescriptor> getDeclaredTypeParameters();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    SimpleType getDefaultType();

    e getKind();

    h getMemberScope(TypeSubstitution typeSubstitution);

    y getModality();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    d getOriginal();

    Collection<d> getSealedSubclasses();

    h getStaticScope();

    aq getThisAsReceiverParameter();

    h getUnsubstitutedInnerClassesScope();

    h getUnsubstitutedMemberScope();

    c getUnsubstitutedPrimaryConstructor();

    s getVisibility();

    boolean isCompanionObject();

    boolean isData();

    boolean isFun();

    boolean isInline();

    boolean isValue();
}
