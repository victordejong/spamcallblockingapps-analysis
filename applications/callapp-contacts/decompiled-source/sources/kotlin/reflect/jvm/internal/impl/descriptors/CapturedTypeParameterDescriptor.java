package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/CapturedTypeParameterDescriptor.class */
public final class CapturedTypeParameterDescriptor implements TypeParameterDescriptor {
    private final k declarationDescriptor;
    private final int declaredTypeParametersCount;
    private final TypeParameterDescriptor originalDescriptor;

    public CapturedTypeParameterDescriptor(TypeParameterDescriptor originalDescriptor, k declarationDescriptor, int i) {
        p.d(originalDescriptor, "originalDescriptor");
        p.d(declarationDescriptor, "declarationDescriptor");
        this.originalDescriptor = originalDescriptor;
        this.declarationDescriptor = declarationDescriptor;
        this.declaredTypeParametersCount = i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public final <R, D> R accept(m<R, D> mVar, D d2) {
        return (R) this.originalDescriptor.accept(mVar, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public final g getAnnotations() {
        return this.originalDescriptor.getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    public final k getContainingDeclaration() {
        return this.declarationDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public final SimpleType getDefaultType() {
        return this.originalDescriptor.getDefaultType();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final int getIndex() {
        return this.declaredTypeParametersCount + this.originalDescriptor.getIndex();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ac
    public final e getName() {
        return this.originalDescriptor.getName();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.g, kotlin.reflect.jvm.internal.impl.descriptors.k
    public final TypeParameterDescriptor getOriginal() {
        TypeParameterDescriptor original = this.originalDescriptor.getOriginal();
        p.b(original, "originalDescriptor.original");
        return original;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public final at getSource() {
        return this.originalDescriptor.getSource();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final n getStorageManager() {
        return this.originalDescriptor.getStorageManager();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.g
    public final TypeConstructor getTypeConstructor() {
        return this.originalDescriptor.getTypeConstructor();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final List<KotlinType> getUpperBounds() {
        return this.originalDescriptor.getUpperBounds();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final Variance getVariance() {
        return this.originalDescriptor.getVariance();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final boolean isCapturedFromOuterDeclaration() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public final boolean isReified() {
        return this.originalDescriptor.isReified();
    }

    public final String toString() {
        return this.originalDescriptor + "[inner-copy]";
    }
}
