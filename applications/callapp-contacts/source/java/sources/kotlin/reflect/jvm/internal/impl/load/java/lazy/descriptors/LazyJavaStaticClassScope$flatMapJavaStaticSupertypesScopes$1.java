package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p531g.C18381k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.C20000b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1.class */
final class LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1 implements C20000b.AbstractC20004c<AbstractC19070d> {
    public static final LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1 INSTANCE = new LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1();

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1$1 */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1$1.class */
    public static final class C194431 extends AbstractC18526r implements Function1<KotlinType, AbstractC19070d> {
        public static final C194431 INSTANCE = new C194431();

        C194431() {
            super(1);
        }

        public final AbstractC19070d invoke(KotlinType kotlinType) {
            AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            if (declarationDescriptor instanceof AbstractC19070d) {
                return (AbstractC19070d) declarationDescriptor;
            }
            return null;
        }
    }

    LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1() {
    }

    public final Iterable<AbstractC19070d> getNeighbors(AbstractC19070d abstractC19070d) {
        Collection<KotlinType> mo53752getSupertypes = abstractC19070d.getTypeConstructor().mo53752getSupertypes();
        C18524p.m3843b(mo53752getSupertypes, "it.typeConstructor.supertypes");
        return C18381k.m4009i(C18381k.m4013e(C18282n.m4106p(mo53752getSupertypes), C194431.INSTANCE));
    }
}
