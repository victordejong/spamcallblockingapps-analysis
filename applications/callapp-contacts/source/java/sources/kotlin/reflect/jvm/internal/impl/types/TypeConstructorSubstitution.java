package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution.class */
public abstract class TypeConstructorSubstitution extends TypeSubstitution {
    public static final Companion Companion = new Companion(null);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ TypeConstructorSubstitution createByConstructorsMap$default(Companion companion, Map map, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.createByConstructorsMap(map, z);
        }

        public final TypeSubstitution create(KotlinType kotlinType) {
            C18524p.m3840d(kotlinType, "kotlinType");
            return create(kotlinType.getConstructor(), kotlinType.getArguments());
        }

        public final TypeSubstitution create(TypeConstructor typeConstructor, List<? extends TypeProjection> arguments) {
            C18524p.m3840d(typeConstructor, "typeConstructor");
            C18524p.m3840d(arguments, "arguments");
            List<TypeParameterDescriptor> parameters = typeConstructor.getParameters();
            C18524p.m3843b(parameters, "typeConstructor.parameters");
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) C18282n.m4117h((List<? extends Object>) parameters);
            if (C18524p.m3850a(typeParameterDescriptor == null ? null : Boolean.valueOf(typeParameterDescriptor.isCapturedFromOuterDeclaration()), Boolean.TRUE)) {
                List<TypeParameterDescriptor> parameters2 = typeConstructor.getParameters();
                C18524p.m3843b(parameters2, "typeConstructor.parameters");
                List<TypeParameterDescriptor> list = parameters2;
                ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
                for (TypeParameterDescriptor typeParameterDescriptor2 : list) {
                    arrayList.add(typeParameterDescriptor2.getTypeConstructor());
                }
                return createByConstructorsMap$default(this, C18247ai.m4256a(C18282n.m4127d((Iterable) arrayList, (Iterable) arguments)), false, 2, null);
            }
            return new IndexedParametersSubstitution(parameters, arguments);
        }

        public final TypeConstructorSubstitution createByConstructorsMap(Map<TypeConstructor, ? extends TypeProjection> map) {
            C18524p.m3840d(map, "map");
            return createByConstructorsMap$default(this, map, false, 2, null);
        }

        public final TypeConstructorSubstitution createByConstructorsMap(final Map<TypeConstructor, ? extends TypeProjection> map, final boolean z) {
            C18524p.m3840d(map, "map");
            return new TypeConstructorSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution$Companion$createByConstructorsMap$1
                @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
                public final boolean approximateCapturedTypes() {
                    return z;
                }

                @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
                public final TypeProjection get(TypeConstructor key) {
                    C18524p.m3840d(key, "key");
                    return map.get(key);
                }

                @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
                public final boolean isEmpty() {
                    return map.isEmpty();
                }
            };
        }
    }

    public static final TypeSubstitution create(TypeConstructor typeConstructor, List<? extends TypeProjection> list) {
        return Companion.create(typeConstructor, list);
    }

    public static final TypeConstructorSubstitution createByConstructorsMap(Map<TypeConstructor, ? extends TypeProjection> map) {
        return Companion.createByConstructorsMap(map);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public TypeProjection get(KotlinType key) {
        C18524p.m3840d(key, "key");
        return get(key.getConstructor());
    }

    public abstract TypeProjection get(TypeConstructor typeConstructor);
}
