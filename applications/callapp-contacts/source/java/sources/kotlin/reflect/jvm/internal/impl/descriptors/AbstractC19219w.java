package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.w */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/w.class */
public interface AbstractC19219w extends AbstractC19039b {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.w$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/w$a.class */
    public interface AbstractC19220a<D extends AbstractC19219w> {
        D build();

        AbstractC19220a<D> setAdditionalAnnotations(AbstractC18983g abstractC18983g);

        AbstractC19220a<D> setCopyOverrides(boolean z);

        AbstractC19220a<D> setDispatchReceiverParameter(AbstractC19020aq abstractC19020aq);

        AbstractC19220a<D> setDropOriginalInContainingParts();

        AbstractC19220a<D> setExtensionReceiverParameter(AbstractC19020aq abstractC19020aq);

        AbstractC19220a<D> setHiddenForResolutionEverywhereBesideSupercalls();

        AbstractC19220a<D> setHiddenToOvercomeSignatureClash();

        AbstractC19220a<D> setKind(AbstractC19039b.EnumC19040a enumC19040a);

        AbstractC19220a<D> setModality(EnumC19222y enumC19222y);

        AbstractC19220a<D> setName(C18966e c18966e);

        AbstractC19220a<D> setOriginal(AbstractC19039b abstractC19039b);

        AbstractC19220a<D> setOwner(AbstractC19193k abstractC19193k);

        AbstractC19220a<D> setPreserveSourceElement();

        AbstractC19220a<D> setReturnType(KotlinType kotlinType);

        AbstractC19220a<D> setSignatureChange();

        AbstractC19220a<D> setSubstitution(TypeSubstitution typeSubstitution);

        AbstractC19220a<D> setTypeParameters(List<TypeParameterDescriptor> list);

        AbstractC19220a<D> setValueParameters(List<AbstractC19050ba> list);

        AbstractC19220a<D> setVisibility(AbstractC19213s abstractC19213s);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19194l, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    AbstractC19193k getContainingDeclaration();

    AbstractC19219w getInitialSignatureDescriptor();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    AbstractC19219w getOriginal();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    Collection<? extends AbstractC19219w> getOverriddenDescriptors();

    boolean isHiddenForResolutionEverywhereBesideSupercalls();

    boolean isHiddenToOvercomeSignatureClash();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    boolean isSuspend();

    boolean isTailrec();

    AbstractC19220a<? extends AbstractC19219w> newCopyBuilder();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19030av
    AbstractC18973a substitute(TypeSubstitutor typeSubstitutor);
}
