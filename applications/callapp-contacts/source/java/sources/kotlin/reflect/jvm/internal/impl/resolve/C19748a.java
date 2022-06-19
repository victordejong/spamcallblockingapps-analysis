package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/a.class */
public final class C19748a extends AbstractC19863l {

    /* renamed from: a */
    public static final C19748a f65936a = new C19748a();

    private C19748a() {
    }

    /* renamed from: a */
    public static Collection<AbstractC19070d> m1548a(AbstractC19070d sealedClass) {
        C18524p.m3840d(sealedClass, "sealedClass");
        if (sealedClass.getModality() != EnumC19222y.SEALED) {
            return C18297z.f63400a;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        AbstractC19193k containingDeclaration = sealedClass.getContainingDeclaration();
        if (containingDeclaration instanceof AbstractC19006ae) {
            m1547a(sealedClass, linkedHashSet, ((AbstractC19006ae) containingDeclaration).mo1257a(), false);
        }
        AbstractC19834h unsubstitutedInnerClassesScope = sealedClass.getUnsubstitutedInnerClassesScope();
        C18524p.m3843b(unsubstitutedInnerClassesScope, "sealedClass.unsubstitutedInnerClassesScope");
        m1547a(sealedClass, linkedHashSet, unsubstitutedInnerClassesScope, true);
        return linkedHashSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static final void m1547a(AbstractC19070d abstractC19070d, LinkedHashSet<AbstractC19070d> linkedHashSet, AbstractC19834h abstractC19834h, boolean z) {
        for (AbstractC19193k abstractC19193k : AbstractC19841k.C19842a.m1411a(abstractC19834h, C19825d.f66000i, null, 2)) {
            if (abstractC19193k instanceof AbstractC19070d) {
                AbstractC19070d abstractC19070d2 = (AbstractC19070d) abstractC19193k;
                if (C19807d.m1478a(abstractC19070d2, abstractC19070d)) {
                    linkedHashSet.add(abstractC19193k);
                }
                if (z) {
                    AbstractC19834h unsubstitutedInnerClassesScope = abstractC19070d2.getUnsubstitutedInnerClassesScope();
                    C18524p.m3843b(unsubstitutedInnerClassesScope, "descriptor.unsubstitutedInnerClassesScope");
                    m1547a(abstractC19070d, linkedHashSet, unsubstitutedInnerClassesScope, z);
                }
            }
        }
    }
}
