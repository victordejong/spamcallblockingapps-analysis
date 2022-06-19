package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.C19514p;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.n */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/n.class */
final class C19578n {

    /* renamed from: a */
    final KotlinType f65598a;

    /* renamed from: b */
    final C19514p f65599b;

    /* renamed from: c */
    final TypeParameterDescriptor f65600c;

    /* renamed from: d */
    final boolean f65601d;

    public C19578n(KotlinType type, C19514p c19514p, TypeParameterDescriptor typeParameterDescriptor, boolean z) {
        C18524p.m3840d(type, "type");
        this.f65598a = type;
        this.f65599b = c19514p;
        this.f65600c = typeParameterDescriptor;
        this.f65601d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C19578n)) {
            return false;
        }
        C19578n c19578n = (C19578n) obj;
        return C18524p.m3850a(this.f65598a, c19578n.f65598a) && C18524p.m3850a(this.f65599b, c19578n.f65599b) && C18524p.m3850a(this.f65600c, c19578n.f65600c) && this.f65601d == c19578n.f65601d;
    }

    public final int hashCode() {
        int hashCode = this.f65598a.hashCode();
        C19514p c19514p = this.f65599b;
        int i = 0;
        int hashCode2 = c19514p == null ? 0 : c19514p.hashCode();
        TypeParameterDescriptor typeParameterDescriptor = this.f65600c;
        if (typeParameterDescriptor != null) {
            i = typeParameterDescriptor.hashCode();
        }
        boolean z = this.f65601d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2;
    }

    public final String toString() {
        return "TypeAndDefaultQualifiers(type=" + this.f65598a + ", defaultQualifiers=" + this.f65599b + ", typeParameterForArgument=" + this.f65600c + ", isFromStarProjection=" + this.f65601d + ')';
    }
}
