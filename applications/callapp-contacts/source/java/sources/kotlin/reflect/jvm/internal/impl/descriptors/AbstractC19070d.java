package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d.class */
public interface AbstractC19070d extends AbstractC19128f, AbstractC19130h {
    AbstractC19070d getCompanionObjectDescriptor();

    Collection<AbstractC19065c> getConstructors();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19194l, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    AbstractC19193k getContainingDeclaration();

    List<TypeParameterDescriptor> getDeclaredTypeParameters();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    SimpleType getDefaultType();

    EnumC19127e getKind();

    AbstractC19834h getMemberScope(TypeSubstitution typeSubstitution);

    EnumC19222y getModality();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    AbstractC19070d getOriginal();

    Collection<AbstractC19070d> getSealedSubclasses();

    AbstractC19834h getStaticScope();

    AbstractC19020aq getThisAsReceiverParameter();

    AbstractC19834h getUnsubstitutedInnerClassesScope();

    AbstractC19834h getUnsubstitutedMemberScope();

    AbstractC19065c getUnsubstitutedPrimaryConstructor();

    AbstractC19213s getVisibility();

    boolean isCompanionObject();

    boolean isData();

    boolean isFun();

    boolean isInline();

    boolean isValue();
}
