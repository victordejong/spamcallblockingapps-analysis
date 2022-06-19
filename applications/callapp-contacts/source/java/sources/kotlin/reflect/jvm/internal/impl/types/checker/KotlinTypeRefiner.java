package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner.class */
public abstract class KotlinTypeRefiner {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default.class */
    public static final class Default extends KotlinTypeRefiner {
        public static final Default INSTANCE = new Default();

        private Default() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final AbstractC19070d findClassAcrossModuleDependencies(C18960a classId) {
            C18524p.m3840d(classId, "classId");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final <S extends AbstractC19834h> S getOrPutScopeForClass(AbstractC19070d classDescriptor, Function0<? extends S> compute) {
            C18524p.m3840d(classDescriptor, "classDescriptor");
            C18524p.m3840d(compute, "compute");
            return compute.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final boolean isRefinementNeededForModule(AbstractC18999ab moduleDescriptor) {
            C18524p.m3840d(moduleDescriptor, "moduleDescriptor");
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final boolean isRefinementNeededForTypeConstructor(TypeConstructor typeConstructor) {
            C18524p.m3840d(typeConstructor, "typeConstructor");
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final AbstractC19070d refineDescriptor(AbstractC19193k descriptor) {
            C18524p.m3840d(descriptor, "descriptor");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final Collection<KotlinType> refineSupertypes(AbstractC19070d classDescriptor) {
            C18524p.m3840d(classDescriptor, "classDescriptor");
            Collection<KotlinType> mo53752getSupertypes = classDescriptor.getTypeConstructor().mo53752getSupertypes();
            C18524p.m3843b(mo53752getSupertypes, "classDescriptor.typeConstructor.supertypes");
            return mo53752getSupertypes;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final KotlinType refineType(KotlinType type) {
            C18524p.m3840d(type, "type");
            return type;
        }
    }

    public abstract AbstractC19070d findClassAcrossModuleDependencies(C18960a c18960a);

    public abstract <S extends AbstractC19834h> S getOrPutScopeForClass(AbstractC19070d abstractC19070d, Function0<? extends S> function0);

    public abstract boolean isRefinementNeededForModule(AbstractC18999ab abstractC18999ab);

    public abstract boolean isRefinementNeededForTypeConstructor(TypeConstructor typeConstructor);

    public abstract AbstractC19129g refineDescriptor(AbstractC19193k abstractC19193k);

    public abstract Collection<KotlinType> refineSupertypes(AbstractC19070d abstractC19070d);

    public abstract KotlinType refineType(KotlinType kotlinType);
}
