package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.a.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.f.f;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.types.DelegatedTypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.IndexedParametersSubstitution;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/calls/inference/a.class */
public final class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/calls/inference/a$a.class */
    public static final class C0707a extends r implements Function0<KotlinType> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TypeProjection f38243a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0707a(TypeProjection typeProjection) {
            super(0);
            this.f38243a = typeProjection;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ KotlinType invoke() {
            KotlinType type = this.f38243a.getType();
            p.b(type, "this@createCapturedIfNeeded.type");
            return type;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/calls/inference/a$b.class */
    public static final class b extends DelegatedTypeSubstitution {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f38244a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TypeSubstitution f38245b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(boolean z, TypeSubstitution typeSubstitution) {
            super(typeSubstitution);
            this.f38244a = z;
            this.f38245b = typeSubstitution;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatedTypeSubstitution, kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
        public final boolean approximateContravariantCapturedTypes() {
            return this.f38244a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatedTypeSubstitution, kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
        public final TypeProjection get(KotlinType key) {
            p.d(key, "key");
            TypeProjection typeProjection = super.get(key);
            TypeParameterDescriptor typeParameterDescriptor = null;
            if (typeProjection == null) {
                return null;
            }
            g declarationDescriptor = key.getConstructor().getDeclarationDescriptor();
            if (declarationDescriptor instanceof TypeParameterDescriptor) {
                typeParameterDescriptor = (TypeParameterDescriptor) declarationDescriptor;
            }
            return a.a(typeProjection, typeParameterDescriptor);
        }
    }

    private static KotlinType a(TypeProjection typeProjection) {
        p.d(typeProjection, "typeProjection");
        return new CapturedType(typeProjection, null, false, null, 14, null);
    }

    static final TypeProjection a(TypeProjection typeProjection, TypeParameterDescriptor typeParameterDescriptor) {
        if (typeParameterDescriptor == null || typeProjection.getProjectionKind() == Variance.INVARIANT) {
            return typeProjection;
        }
        if (typeParameterDescriptor.getVariance() != typeProjection.getProjectionKind()) {
            return new TypeProjectionImpl(a(typeProjection));
        }
        if (!typeProjection.isStarProjection()) {
            return new TypeProjectionImpl(typeProjection.getType());
        }
        n NO_LOCKS = f.f37640a;
        p.b(NO_LOCKS, "NO_LOCKS");
        return new TypeProjectionImpl(new LazyWrappedType(NO_LOCKS, new C0707a(typeProjection)));
    }

    public static /* synthetic */ TypeSubstitution a(TypeSubstitution typeSubstitution) {
        p.d(typeSubstitution, "<this>");
        if (!(typeSubstitution instanceof IndexedParametersSubstitution)) {
            return new b(true, typeSubstitution);
        }
        IndexedParametersSubstitution indexedParametersSubstitution = (IndexedParametersSubstitution) typeSubstitution;
        TypeParameterDescriptor[] parameters = indexedParametersSubstitution.getParameters();
        List<kotlin.n> a2 = i.a((Object[]) indexedParametersSubstitution.getArguments(), (Object[]) indexedParametersSubstitution.getParameters());
        ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) a2, 10));
        for (kotlin.n nVar : a2) {
            arrayList.add(a((TypeProjection) nVar.f36810a, (TypeParameterDescriptor) nVar.f36811b));
        }
        Object[] array = arrayList.toArray(new TypeProjection[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return new IndexedParametersSubstitution(parameters, (TypeProjection[]) array, true);
    }

    public static final boolean a(KotlinType kotlinType) {
        p.d(kotlinType, "<this>");
        return kotlinType.getConstructor() instanceof CapturedTypeConstructor;
    }
}
