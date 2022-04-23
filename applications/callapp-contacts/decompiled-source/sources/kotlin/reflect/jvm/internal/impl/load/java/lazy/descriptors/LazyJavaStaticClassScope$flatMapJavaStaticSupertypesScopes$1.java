package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import kotlin.a.n;
import kotlin.g.k;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1.class */
final class LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1 implements b.c<d> {
    public static final LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1 INSTANCE = new LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1$1.class */
    public static final class AnonymousClass1 extends r implements Function1<KotlinType, d> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        public final d invoke(KotlinType kotlinType) {
            g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            if (declarationDescriptor instanceof d) {
                return (d) declarationDescriptor;
            }
            return null;
        }
    }

    LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1() {
    }

    public final Iterable<d> getNeighbors(d dVar) {
        Collection<KotlinType> supertypes = dVar.getTypeConstructor().mo7371getSupertypes();
        p.b(supertypes, "it.typeConstructor.supertypes");
        return k.i(k.e(n.p(supertypes), AnonymousClass1.INSTANCE));
    }
}
