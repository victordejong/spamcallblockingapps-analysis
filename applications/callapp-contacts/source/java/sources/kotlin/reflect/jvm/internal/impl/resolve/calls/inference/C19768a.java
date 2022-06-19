package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.C18538n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.p554f.C19276f;
import kotlin.reflect.jvm.internal.impl.types.DelegatedTypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.IndexedParametersSubstitution;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/calls/inference/a.class */
public final class C19768a {

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/calls/inference/a$a.class */
    public static final class C19769a extends AbstractC18526r implements Function0<KotlinType> {

        /* renamed from: a */
        final /* synthetic */ TypeProjection f65958a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19769a(TypeProjection typeProjection) {
            super(0);
            this.f65958a = typeProjection;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ KotlinType invoke() {
            KotlinType type = this.f65958a.getType();
            C18524p.m3843b(type, "this@createCapturedIfNeeded.type");
            return type;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/calls/inference/a$b.class */
    public static final class C19770b extends DelegatedTypeSubstitution {

        /* renamed from: a */
        final /* synthetic */ boolean f65959a;

        /* renamed from: b */
        final /* synthetic */ TypeSubstitution f65960b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19770b(boolean z, TypeSubstitution typeSubstitution) {
            super(typeSubstitution);
            this.f65959a = z;
            this.f65960b = typeSubstitution;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatedTypeSubstitution, kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
        public final boolean approximateContravariantCapturedTypes() {
            return this.f65959a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.DelegatedTypeSubstitution, kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
        public final TypeProjection get(KotlinType key) {
            C18524p.m3840d(key, "key");
            TypeProjection typeProjection = super.get(key);
            if (typeProjection == null) {
                return null;
            }
            AbstractC19129g declarationDescriptor = key.getConstructor().getDeclarationDescriptor();
            TypeParameterDescriptor typeParameterDescriptor = null;
            if (declarationDescriptor instanceof TypeParameterDescriptor) {
                typeParameterDescriptor = (TypeParameterDescriptor) declarationDescriptor;
            }
            return C19768a.m1496a(typeProjection, typeParameterDescriptor);
        }
    }

    /* renamed from: a */
    private static KotlinType m1497a(TypeProjection typeProjection) {
        C18524p.m3840d(typeProjection, "typeProjection");
        return new CapturedType(typeProjection, null, false, null, 14, null);
    }

    /* renamed from: a */
    static final TypeProjection m1496a(TypeProjection typeProjection, TypeParameterDescriptor typeParameterDescriptor) {
        if (typeParameterDescriptor == null || typeProjection.getProjectionKind() == Variance.INVARIANT) {
            return typeProjection;
        }
        if (typeParameterDescriptor.getVariance() != typeProjection.getProjectionKind()) {
            return new TypeProjectionImpl(m1497a(typeProjection));
        }
        if (!typeProjection.isStarProjection()) {
            return new TypeProjectionImpl(typeProjection.getType());
        }
        AbstractC19302n NO_LOCKS = C19276f.f65120a;
        C18524p.m3843b(NO_LOCKS, "NO_LOCKS");
        return new TypeProjectionImpl(new LazyWrappedType(NO_LOCKS, new C19769a(typeProjection)));
    }

    /* renamed from: a */
    public static /* synthetic */ TypeSubstitution m1495a(TypeSubstitution typeSubstitution) {
        C18524p.m3840d(typeSubstitution, "<this>");
        if (typeSubstitution instanceof IndexedParametersSubstitution) {
            IndexedParametersSubstitution indexedParametersSubstitution = (IndexedParametersSubstitution) typeSubstitution;
            TypeParameterDescriptor[] parameters = indexedParametersSubstitution.getParameters();
            List<C18538n> a = C18273i.m4198a((Object[]) indexedParametersSubstitution.getArguments(), (Object[]) indexedParametersSubstitution.getParameters());
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) a, 10));
            for (C18538n c18538n : a) {
                arrayList.add(m1496a((TypeProjection) c18538n.f63624a, (TypeParameterDescriptor) c18538n.f63625b));
            }
            Object[] array = arrayList.toArray(new TypeProjection[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return new IndexedParametersSubstitution(parameters, (TypeProjection[]) array, true);
        }
        return new C19770b(true, typeSubstitution);
    }

    /* renamed from: a */
    public static final boolean m1498a(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        return kotlinType.getConstructor() instanceof CapturedTypeConstructor;
    }
}
