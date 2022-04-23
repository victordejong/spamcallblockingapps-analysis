package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.p;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n.class */
final class n {

    /* renamed from: a  reason: collision with root package name */
    final KotlinType f37992a;

    /* renamed from: b  reason: collision with root package name */
    final p f37993b;

    /* renamed from: c  reason: collision with root package name */
    final TypeParameterDescriptor f37994c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f37995d;

    public n(KotlinType type, p pVar, TypeParameterDescriptor typeParameterDescriptor, boolean z) {
        kotlin.jvm.internal.p.d(type, "type");
        this.f37992a = type;
        this.f37993b = pVar;
        this.f37994c = typeParameterDescriptor;
        this.f37995d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return kotlin.jvm.internal.p.a(this.f37992a, nVar.f37992a) && kotlin.jvm.internal.p.a(this.f37993b, nVar.f37993b) && kotlin.jvm.internal.p.a(this.f37994c, nVar.f37994c) && this.f37995d == nVar.f37995d;
    }

    public final int hashCode() {
        int hashCode = this.f37992a.hashCode();
        p pVar = this.f37993b;
        int i = 0;
        int hashCode2 = pVar == null ? 0 : pVar.hashCode();
        TypeParameterDescriptor typeParameterDescriptor = this.f37994c;
        if (typeParameterDescriptor != null) {
            i = typeParameterDescriptor.hashCode();
        }
        boolean z = this.f37995d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2;
    }

    public final String toString() {
        return "TypeAndDefaultQualifiers(type=" + this.f37992a + ", defaultQualifiers=" + this.f37993b + ", typeParameterForArgument=" + this.f37994c + ", isFromStarProjection=" + this.f37995d + ')';
    }
}
