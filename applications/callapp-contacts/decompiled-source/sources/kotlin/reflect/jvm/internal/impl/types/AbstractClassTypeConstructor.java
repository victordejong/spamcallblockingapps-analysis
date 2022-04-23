package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.utils.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractClassTypeConstructor.class */
public abstract class AbstractClassTypeConstructor extends AbstractTypeConstructor implements TypeConstructor {
    private int hashCode;

    /* JADX WARN: Removed duplicated region for block: B:31:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void $$$reportNull$$$0(int r4) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor.$$$reportNull$$$0(int):void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClassTypeConstructor(n nVar) {
        super(nVar);
        if (nVar == null) {
            $$$reportNull$$$0(0);
        }
        this.hashCode = 0;
    }

    private static boolean areFqNamesEqual(d dVar, d dVar2) {
        if (!dVar.getName().equals(dVar2.getName())) {
            return false;
        }
        k containingDeclaration = dVar.getContainingDeclaration();
        for (k containingDeclaration2 = dVar2.getContainingDeclaration(); containingDeclaration != null && containingDeclaration2 != null; containingDeclaration2 = containingDeclaration2.getContainingDeclaration()) {
            if (containingDeclaration instanceof ab) {
                return containingDeclaration2 instanceof ab;
            }
            if (containingDeclaration2 instanceof ab) {
                return false;
            }
            if (containingDeclaration instanceof ae) {
                return (containingDeclaration2 instanceof ae) && ((ae) containingDeclaration).c().equals(((ae) containingDeclaration2).c());
            }
            if ((containingDeclaration2 instanceof ae) || !containingDeclaration.getName().equals(containingDeclaration2.getName())) {
                return false;
            }
            containingDeclaration = containingDeclaration.getContainingDeclaration();
        }
        return true;
    }

    private static boolean hasMeaningfulFqName(g gVar) {
        if (gVar == null) {
            $$$reportNull$$$0(2);
        }
        return !ErrorUtils.isError(gVar) && !kotlin.reflect.jvm.internal.impl.resolve.d.b(gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    public KotlinType defaultSupertypeIfEmpty() {
        if (kotlin.reflect.jvm.internal.impl.builtins.g.c(getDeclarationDescriptor())) {
            return null;
        }
        return getBuiltIns().g();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypeConstructor) || obj.hashCode() != hashCode()) {
            return false;
        }
        TypeConstructor typeConstructor = (TypeConstructor) obj;
        if (typeConstructor.getParameters().size() != getParameters().size()) {
            return false;
        }
        d declarationDescriptor = getDeclarationDescriptor();
        g declarationDescriptor2 = typeConstructor.getDeclarationDescriptor();
        if (!hasMeaningfulFqName(declarationDescriptor)) {
            return false;
        }
        if ((declarationDescriptor2 == null || hasMeaningfulFqName(declarationDescriptor2)) && (declarationDescriptor2 instanceof d)) {
            return areFqNamesEqual(declarationDescriptor, (d) declarationDescriptor2);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    protected Collection<KotlinType> getAdditionalNeighboursInSupertypeGraph(boolean z) {
        k containingDeclaration = getDeclarationDescriptor().getContainingDeclaration();
        if (!(containingDeclaration instanceof d)) {
            List emptyList = Collections.emptyList();
            if (emptyList == null) {
                $$$reportNull$$$0(3);
            }
            return emptyList;
        }
        h hVar = new h();
        d dVar = (d) containingDeclaration;
        hVar.add(dVar.getDefaultType());
        d companionObjectDescriptor = dVar.getCompanionObjectDescriptor();
        if (z && companionObjectDescriptor != null) {
            hVar.add(companionObjectDescriptor.getDefaultType());
        }
        return hVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public kotlin.reflect.jvm.internal.impl.builtins.g getBuiltIns() {
        kotlin.reflect.jvm.internal.impl.builtins.g d2 = a.d(getDeclarationDescriptor());
        if (d2 == null) {
            $$$reportNull$$$0(1);
        }
        return d2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public abstract d getDeclarationDescriptor();

    public final int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        d declarationDescriptor = getDeclarationDescriptor();
        int hashCode = hasMeaningfulFqName(declarationDescriptor) ? kotlin.reflect.jvm.internal.impl.resolve.d.c(declarationDescriptor).hashCode() : System.identityHashCode(this);
        this.hashCode = hashCode;
        return hashCode;
    }
}
