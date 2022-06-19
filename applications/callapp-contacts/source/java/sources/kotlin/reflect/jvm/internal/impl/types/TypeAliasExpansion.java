package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion.class */
public final class TypeAliasExpansion {
    public static final Companion Companion = new Companion(null);
    private final List<TypeProjection> arguments;
    private final AbstractC19033ax descriptor;
    private final Map<TypeParameterDescriptor, TypeProjection> mapping;
    private final TypeAliasExpansion parent;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TypeAliasExpansion create(TypeAliasExpansion typeAliasExpansion, AbstractC19033ax typeAliasDescriptor, List<? extends TypeProjection> arguments) {
            C18524p.m3840d(typeAliasDescriptor, "typeAliasDescriptor");
            C18524p.m3840d(arguments, "arguments");
            List<TypeParameterDescriptor> parameters = typeAliasDescriptor.getTypeConstructor().getParameters();
            C18524p.m3843b(parameters, "typeAliasDescriptor.typeConstructor.parameters");
            List<TypeParameterDescriptor> list = parameters;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            for (TypeParameterDescriptor typeParameterDescriptor : list) {
                arrayList.add(typeParameterDescriptor.getOriginal());
            }
            return new TypeAliasExpansion(typeAliasExpansion, typeAliasDescriptor, arguments, C18247ai.m4256a(C18282n.m4127d((Iterable) arrayList, (Iterable) arguments)), null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TypeAliasExpansion(TypeAliasExpansion typeAliasExpansion, AbstractC19033ax abstractC19033ax, List<? extends TypeProjection> list, Map<TypeParameterDescriptor, ? extends TypeProjection> map) {
        this.parent = typeAliasExpansion;
        this.descriptor = abstractC19033ax;
        this.arguments = list;
        this.mapping = map;
    }

    public /* synthetic */ TypeAliasExpansion(TypeAliasExpansion typeAliasExpansion, AbstractC19033ax abstractC19033ax, List list, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeAliasExpansion, abstractC19033ax, list, map);
    }

    public final List<TypeProjection> getArguments() {
        return this.arguments;
    }

    public final AbstractC19033ax getDescriptor() {
        return this.descriptor;
    }

    public final TypeProjection getReplacement(TypeConstructor constructor) {
        C18524p.m3840d(constructor, "constructor");
        AbstractC19129g declarationDescriptor = constructor.getDeclarationDescriptor();
        if (declarationDescriptor instanceof TypeParameterDescriptor) {
            return this.mapping.get(declarationDescriptor);
        }
        return null;
    }

    public final boolean isRecursion(AbstractC19033ax descriptor) {
        C18524p.m3840d(descriptor, "descriptor");
        if (!C18524p.m3850a(this.descriptor, descriptor)) {
            TypeAliasExpansion typeAliasExpansion = this.parent;
            return typeAliasExpansion == null ? false : typeAliasExpansion.isRecursion(descriptor);
        }
        return true;
    }
}
