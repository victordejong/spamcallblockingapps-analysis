package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.utils.C20023h;
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
    public AbstractClassTypeConstructor(AbstractC19302n abstractC19302n) {
        super(abstractC19302n);
        if (abstractC19302n == null) {
            $$$reportNull$$$0(0);
        }
        this.hashCode = 0;
    }

    private static boolean areFqNamesEqual(AbstractC19070d abstractC19070d, AbstractC19070d abstractC19070d2) {
        if (!abstractC19070d.getName().equals(abstractC19070d2.getName())) {
            return false;
        }
        AbstractC19193k containingDeclaration = abstractC19070d.getContainingDeclaration();
        AbstractC19193k abstractC19193k = containingDeclaration;
        for (AbstractC19193k containingDeclaration2 = abstractC19070d2.getContainingDeclaration(); abstractC19193k != null && containingDeclaration2 != null; containingDeclaration2 = containingDeclaration2.getContainingDeclaration()) {
            if (abstractC19193k instanceof AbstractC18999ab) {
                return containingDeclaration2 instanceof AbstractC18999ab;
            }
            if (containingDeclaration2 instanceof AbstractC18999ab) {
                return false;
            }
            if (abstractC19193k instanceof AbstractC19006ae) {
                return (containingDeclaration2 instanceof AbstractC19006ae) && ((AbstractC19006ae) abstractC19193k).mo2542c().equals(((AbstractC19006ae) containingDeclaration2).mo2542c());
            } else if ((containingDeclaration2 instanceof AbstractC19006ae) || !abstractC19193k.getName().equals(containingDeclaration2.getName())) {
                return false;
            } else {
                abstractC19193k = abstractC19193k.getContainingDeclaration();
            }
        }
        return true;
    }

    private static boolean hasMeaningfulFqName(AbstractC19129g abstractC19129g) {
        if (abstractC19129g == null) {
            $$$reportNull$$$0(2);
        }
        return !ErrorUtils.isError(abstractC19129g) && !C19807d.m1466b(abstractC19129g);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    public KotlinType defaultSupertypeIfEmpty() {
        if (AbstractC18940g.m2812c(getDeclarationDescriptor())) {
            return null;
        }
        return getBuiltIns().m2798g();
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
        AbstractC19070d declarationDescriptor = getDeclarationDescriptor();
        AbstractC19129g declarationDescriptor2 = typeConstructor.getDeclarationDescriptor();
        if (!hasMeaningfulFqName(declarationDescriptor)) {
            return false;
        }
        if ((declarationDescriptor2 != null && !hasMeaningfulFqName(declarationDescriptor2)) || !(declarationDescriptor2 instanceof AbstractC19070d)) {
            return false;
        }
        return areFqNamesEqual(declarationDescriptor, (AbstractC19070d) declarationDescriptor2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
    protected Collection<KotlinType> getAdditionalNeighboursInSupertypeGraph(boolean z) {
        AbstractC19193k containingDeclaration = getDeclarationDescriptor().getContainingDeclaration();
        if (!(containingDeclaration instanceof AbstractC19070d)) {
            List emptyList = Collections.emptyList();
            if (emptyList == null) {
                $$$reportNull$$$0(3);
            }
            return emptyList;
        }
        C20023h c20023h = new C20023h();
        AbstractC19070d abstractC19070d = (AbstractC19070d) containingDeclaration;
        c20023h.add(abstractC19070d.getDefaultType());
        AbstractC19070d companionObjectDescriptor = abstractC19070d.getCompanionObjectDescriptor();
        if (z && companionObjectDescriptor != null) {
            c20023h.add(companionObjectDescriptor.getDefaultType());
        }
        return c20023h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public AbstractC18940g getBuiltIns() {
        AbstractC18940g m1526d = C19756a.m1526d(getDeclarationDescriptor());
        if (m1526d == null) {
            $$$reportNull$$$0(1);
        }
        return m1526d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public abstract AbstractC19070d getDeclarationDescriptor();

    public final int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        AbstractC19070d declarationDescriptor = getDeclarationDescriptor();
        int hashCode = hasMeaningfulFqName(declarationDescriptor) ? C19807d.m1463c(declarationDescriptor).hashCode() : System.identityHashCode(this);
        this.hashCode = hashCode;
        return hashCode;
    }
}
