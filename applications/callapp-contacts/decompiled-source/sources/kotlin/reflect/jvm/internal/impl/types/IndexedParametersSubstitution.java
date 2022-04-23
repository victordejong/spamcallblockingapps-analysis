package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/IndexedParametersSubstitution.class */
public final class IndexedParametersSubstitution extends TypeSubstitution {
    private final boolean approximateContravariantCapturedTypes;
    private final TypeProjection[] arguments;
    private final TypeParameterDescriptor[] parameters;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public IndexedParametersSubstitution(java.util.List<? extends kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor> r8, java.util.List<? extends kotlin.reflect.jvm.internal.impl.types.TypeProjection> r9) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "parameters"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r9
            java.lang.String r1 = "argumentsList"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r8
            java.util.Collection r0 = (java.util.Collection) r0
            r1 = 0
            kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor[] r1 = new kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor[r1]
            java.lang.Object[] r0 = r0.toArray(r1)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T>"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r8
            kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor[] r0 = (kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor[]) r0
            r8 = r0
            r0 = r9
            java.util.Collection r0 = (java.util.Collection) r0
            r1 = 0
            kotlin.reflect.jvm.internal.impl.types.TypeProjection[] r1 = new kotlin.reflect.jvm.internal.impl.types.TypeProjection[r1]
            java.lang.Object[] r0 = r0.toArray(r1)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "null cannot be cast to non-null type kotlin.Array<T>"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            r1 = r8
            r2 = r9
            kotlin.reflect.jvm.internal.impl.types.TypeProjection[] r2 = (kotlin.reflect.jvm.internal.impl.types.TypeProjection[]) r2
            r3 = 0
            r4 = 4
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.IndexedParametersSubstitution.<init>(java.util.List, java.util.List):void");
    }

    public IndexedParametersSubstitution(TypeParameterDescriptor[] parameters, TypeProjection[] arguments, boolean z) {
        p.d(parameters, "parameters");
        p.d(arguments, "arguments");
        this.parameters = parameters;
        this.arguments = arguments;
        this.approximateContravariantCapturedTypes = z;
        boolean z2 = parameters.length <= arguments.length;
        if (x.f38657a && !z2) {
            throw new AssertionError("Number of arguments should not be less than number of parameters, but: parameters=" + getParameters().length + ", args=" + getArguments().length);
        }
    }

    public /* synthetic */ IndexedParametersSubstitution(TypeParameterDescriptor[] typeParameterDescriptorArr, TypeProjection[] typeProjectionArr, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeParameterDescriptorArr, typeProjectionArr, (i & 4) != 0 ? false : z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean approximateContravariantCapturedTypes() {
        return this.approximateContravariantCapturedTypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final TypeProjection get(KotlinType key) {
        p.d(key, "key");
        g declarationDescriptor = key.getConstructor().getDeclarationDescriptor();
        TypeParameterDescriptor typeParameterDescriptor = declarationDescriptor instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) declarationDescriptor : null;
        if (typeParameterDescriptor == null) {
            return null;
        }
        int index = typeParameterDescriptor.getIndex();
        TypeParameterDescriptor[] typeParameterDescriptorArr = this.parameters;
        if (index >= typeParameterDescriptorArr.length || !p.a(typeParameterDescriptorArr[index].getTypeConstructor(), typeParameterDescriptor.getTypeConstructor())) {
            return null;
        }
        return this.arguments[index];
    }

    public final TypeProjection[] getArguments() {
        return this.arguments;
    }

    public final TypeParameterDescriptor[] getParameters() {
        return this.parameters;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean isEmpty() {
        return this.arguments.length == 0;
    }
}
