package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion.class */
public final class TypeAliasExpansion {
    public static final Companion Companion = new Companion(null);
    private final List<TypeProjection> arguments;
    private final ax descriptor;
    private final Map<TypeParameterDescriptor, TypeProjection> mapping;
    private final TypeAliasExpansion parent;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TypeAliasExpansion create(TypeAliasExpansion typeAliasExpansion, ax typeAliasDescriptor, List<? extends TypeProjection> arguments) {
            p.d(typeAliasDescriptor, "typeAliasDescriptor");
            p.d(arguments, "arguments");
            List<TypeParameterDescriptor> parameters = typeAliasDescriptor.getTypeConstructor().getParameters();
            p.b(parameters, "typeAliasDescriptor.typeConstructor.parameters");
            List<TypeParameterDescriptor> list = parameters;
            ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
            for (TypeParameterDescriptor typeParameterDescriptor : list) {
                arrayList.add(typeParameterDescriptor.getOriginal());
            }
            return new TypeAliasExpansion(typeAliasExpansion, typeAliasDescriptor, arguments, ai.a(n.d((Iterable) arrayList, (Iterable) arguments)), null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TypeAliasExpansion(TypeAliasExpansion typeAliasExpansion, ax axVar, List<? extends TypeProjection> list, Map<TypeParameterDescriptor, ? extends TypeProjection> map) {
        this.parent = typeAliasExpansion;
        this.descriptor = axVar;
        this.arguments = list;
        this.mapping = map;
    }

    public /* synthetic */ TypeAliasExpansion(TypeAliasExpansion typeAliasExpansion, ax axVar, List list, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeAliasExpansion, axVar, list, map);
    }

    public final List<TypeProjection> getArguments() {
        return this.arguments;
    }

    public final ax getDescriptor() {
        return this.descriptor;
    }

    public final TypeProjection getReplacement(TypeConstructor constructor) {
        p.d(constructor, "constructor");
        g declarationDescriptor = constructor.getDeclarationDescriptor();
        if (declarationDescriptor instanceof TypeParameterDescriptor) {
            return this.mapping.get(declarationDescriptor);
        }
        return null;
    }

    public final boolean isRecursion(ax descriptor) {
        p.d(descriptor, "descriptor");
        if (p.a(this.descriptor, descriptor)) {
            return true;
        }
        TypeAliasExpansion typeAliasExpansion = this.parent;
        return typeAliasExpansion == null ? false : typeAliasExpansion.isRecursion(descriptor);
    }
}
