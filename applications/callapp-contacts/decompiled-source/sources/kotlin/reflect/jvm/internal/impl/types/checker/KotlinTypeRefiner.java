package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
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
        public final d findClassAcrossModuleDependencies(a classId) {
            p.d(classId, "classId");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final <S extends h> S getOrPutScopeForClass(d classDescriptor, Function0<? extends S> compute) {
            p.d(classDescriptor, "classDescriptor");
            p.d(compute, "compute");
            return (S) ((h) compute.invoke());
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final boolean isRefinementNeededForModule(ab moduleDescriptor) {
            p.d(moduleDescriptor, "moduleDescriptor");
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final boolean isRefinementNeededForTypeConstructor(TypeConstructor typeConstructor) {
            p.d(typeConstructor, "typeConstructor");
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final d refineDescriptor(k descriptor) {
            p.d(descriptor, "descriptor");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final Collection<KotlinType> refineSupertypes(d classDescriptor) {
            p.d(classDescriptor, "classDescriptor");
            Collection<KotlinType> supertypes = classDescriptor.getTypeConstructor().mo7371getSupertypes();
            p.b(supertypes, "classDescriptor.typeConstructor.supertypes");
            return supertypes;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner
        public final KotlinType refineType(KotlinType type) {
            p.d(type, "type");
            return type;
        }
    }

    public abstract d findClassAcrossModuleDependencies(a aVar);

    public abstract <S extends h> S getOrPutScopeForClass(d dVar, Function0<? extends S> function0);

    public abstract boolean isRefinementNeededForModule(ab abVar);

    public abstract boolean isRefinementNeededForTypeConstructor(TypeConstructor typeConstructor);

    public abstract g refineDescriptor(k kVar);

    public abstract Collection<KotlinType> refineSupertypes(d dVar);

    public abstract KotlinType refineType(KotlinType kotlinType);
}
