package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.C20130x;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p520b.C18299a;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19847n;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.IntersectionTypeConstructorMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor.class */
public final class IntersectionTypeConstructor implements TypeConstructor, IntersectionTypeConstructorMarker {
    private KotlinType alternative;
    private final int hashCode;
    private final LinkedHashSet<KotlinType> intersectedTypes;

    public IntersectionTypeConstructor(Collection<? extends KotlinType> typesToIntersect) {
        C18524p.m3840d(typesToIntersect, "typesToIntersect");
        boolean isEmpty = typesToIntersect.isEmpty();
        if (!C20130x.f66532a || (!isEmpty)) {
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
        return C18282n.m4148a(C18282n.m4145a((Iterable) iterable, new Comparator<T>() { // from class: kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return C18299a.m4103a(((KotlinType) t).toString(), ((KotlinType) t2).toString());
            }
        }), " & ", "{", "}", 0, (CharSequence) null, (Function1) null, 56);
    }

    public final AbstractC19834h createScopeForKotlinType() {
        C19847n.C19848a c19848a = C19847n.f66045a;
        return C19847n.C19848a.m1402a("member scope for intersection type", this.intersectedTypes);
    }

    public final SimpleType createType() {
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(AbstractC18983g.C18984a.m2705a(), this, C18297z.f63400a, false, createScopeForKotlinType(), new IntersectionTypeConstructor$createType$1(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IntersectionTypeConstructor) {
            return C18524p.m3850a(this.intersectedTypes, ((IntersectionTypeConstructor) obj).intersectedTypes);
        }
        return false;
    }

    public final KotlinType getAlternativeType() {
        return this.alternative;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final AbstractC18940g getBuiltIns() {
        AbstractC18940g builtIns = this.intersectedTypes.iterator().next().getConstructor().getBuiltIns();
        C18524p.m3843b(builtIns, "intersectedTypes.iterator().next().constructor.builtIns");
        return builtIns;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final AbstractC19129g getDeclarationDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List<TypeParameterDescriptor> getParameters() {
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    /* renamed from: getSupertypes */
    public final Collection<KotlinType> mo53752getSupertypes() {
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
        boolean z;
        IntersectionTypeConstructor intersectionTypeConstructor;
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        Collection<KotlinType> mo53752getSupertypes = mo53752getSupertypes();
        ArrayList arrayList = new ArrayList(C18282n.m4163a(mo53752getSupertypes, 10));
        Iterator<T> it2 = mo53752getSupertypes.iterator();
        boolean z2 = false;
        while (true) {
            z = z2;
            if (!it2.hasNext()) {
                break;
            }
            arrayList.add(((KotlinType) it2.next()).refine(kotlinTypeRefiner));
            z2 = true;
        }
        ArrayList arrayList2 = arrayList;
        if (!z) {
            intersectionTypeConstructor = null;
        } else {
            KotlinType alternativeType = getAlternativeType();
            intersectionTypeConstructor = new IntersectionTypeConstructor(arrayList2).setAlternative(alternativeType == null ? null : alternativeType.refine(kotlinTypeRefiner));
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
