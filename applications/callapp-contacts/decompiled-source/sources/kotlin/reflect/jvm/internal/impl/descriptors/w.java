package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/w.class */
public interface w extends b {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/w$a.class */
    public interface a<D extends w> {
        D build();

        a<D> setAdditionalAnnotations(g gVar);

        a<D> setCopyOverrides(boolean z);

        a<D> setDispatchReceiverParameter(aq aqVar);

        a<D> setDropOriginalInContainingParts();

        a<D> setExtensionReceiverParameter(aq aqVar);

        a<D> setHiddenForResolutionEverywhereBesideSupercalls();

        a<D> setHiddenToOvercomeSignatureClash();

        a<D> setKind(b.a aVar);

        a<D> setModality(y yVar);

        a<D> setName(e eVar);

        a<D> setOriginal(b bVar);

        a<D> setOwner(k kVar);

        a<D> setPreserveSourceElement();

        a<D> setReturnType(KotlinType kotlinType);

        a<D> setSignatureChange();

        a<D> setSubstitution(TypeSubstitution typeSubstitution);

        a<D> setTypeParameters(List<TypeParameterDescriptor> list);

        a<D> setValueParameters(List<ba> list);

        a<D> setVisibility(s sVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    k getContainingDeclaration();

    w getInitialSignatureDescriptor();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.k
    w getOriginal();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.a
    Collection<? extends w> getOverriddenDescriptors();

    boolean isHiddenForResolutionEverywhereBesideSupercalls();

    boolean isHiddenToOvercomeSignatureClash();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    boolean isSuspend();

    boolean isTailrec();

    a<? extends w> newCopyBuilder();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.av
    kotlin.reflect.jvm.internal.impl.descriptors.a substitute(TypeSubstitutor typeSubstitutor);
}
