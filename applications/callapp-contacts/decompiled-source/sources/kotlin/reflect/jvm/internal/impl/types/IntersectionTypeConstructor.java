package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.b.a;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.resolve.e.n;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.IntersectionTypeConstructorMarker;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor.class */
public final class IntersectionTypeConstructor implements TypeConstructor, IntersectionTypeConstructorMarker {
    private KotlinType alternative;
    private final int hashCode;
    private final LinkedHashSet<KotlinType> intersectedTypes;

    public IntersectionTypeConstructor(Collection<? extends KotlinType> typesToIntersect) {
        p.d(typesToIntersect, "typesToIntersect");
        boolean isEmpty = typesToIntersect.isEmpty();
        if (!x.f38657a || (!isEmpty)) {
            LinkedHashSet<KotlinType> linkedHashSet = new LinkedHashSet<>(typesToIntersect);
            this.intersectedTypes = linkedHashSet;
            this.hashCode = linkedHashSet.hashCode();
            return;
        }
        throw new AssertionError("Attempt to create an empty intersection");
    }

    private IntersectionTypeConstructor(Collection<? extends KotlinType> collection, KotlinType kotlinType) {
        this(collection);
        this.alternative = kotlinType;
    }

    private final String makeDebugNameForIntersectionType(Iterable<? extends KotlinType> iterable) {
        return n.a(n.a((Iterable) iterable, new Comparator<T>() { // from class: kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return a.a(((KotlinType) t).toString(), ((KotlinType) t2).toString());
            }
        }), " & ", "{", "}", 0, (CharSequence) null, (Function1) null, 56);
    }

    public final h createScopeForKotlinType() {
        n.a aVar = kotlin.reflect.jvm.internal.impl.resolve.e.n.f38307a;
        return n.a.a("member scope for intersection type", this.intersectedTypes);
    }

    public final SimpleType createType() {
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        g.a aVar = g.f37361a;
        return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(g.a.a(), this, z.f36608a, false, createScopeForKotlinType(), new IntersectionTypeConstructor$createType$1(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntersectionTypeConstructor)) {
            return false;
        }
        return p.a(this.intersectedTypes, ((IntersectionTypeConstructor) obj).intersectedTypes);
    }

    public final KotlinType getAlternativeType() {
        return this.alternative;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final kotlin.reflect.jvm.internal.impl.builtins.g getBuiltIns() {
        kotlin.reflect.jvm.internal.impl.builtins.g builtIns = this.intersectedTypes.iterator().next().getConstructor().getBuiltIns();
        p.b(builtIns, "intersectedTypes.iterator().next().constructor.builtIns");
        return builtIns;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final kotlin.reflect.jvm.internal.impl.descriptors.g getDeclarationDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List<TypeParameterDescriptor> getParameters() {
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    /* renamed from: getSupertypes */
    public final Collection<KotlinType> mo7371getSupertypes() {
        return this.intersectedTypes;
    }

    public final int hashCode() {
        return this.hashCode;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean isDenotable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final IntersectionTypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        Collection<KotlinType> supertypes = mo7371getSupertypes();
        ArrayList arrayList = new ArrayList(kotlin.a.n.a(supertypes, 10));
        boolean z = false;
        for (KotlinType kotlinType : supertypes) {
            arrayList.add(kotlinType.refine(kotlinTypeRefiner));
            z = true;
        }
        ArrayList arrayList2 = arrayList;
        IntersectionTypeConstructor intersectionTypeConstructor = null;
        KotlinType kotlinType2 = null;
        if (z) {
            KotlinType alternativeType = getAlternativeType();
            if (alternativeType != null) {
                kotlinType2 = alternativeType.refine(kotlinTypeRefiner);
            }
            intersectionTypeConstructor = new IntersectionTypeConstructor(arrayList2).setAlternative(kotlinType2);
        }
        return intersectionTypeConstructor == null ? this : intersectionTypeConstructor;
    }

    public final IntersectionTypeConstructor setAlternative(KotlinType kotlinType) {
        return new IntersectionTypeConstructor(this.intersectedTypes, kotlinType);
    }

    public final String toString() {
        return makeDebugNameForIntersectionType(this.intersectedTypes);
    }
}
