package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Collection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final h f37900a;

    /* renamed from: b  reason: collision with root package name */
    public final Collection<a> f37901b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f37902c;

    /* JADX WARN: Multi-variable type inference failed */
    public p(h nullabilityQualifier, Collection<? extends a> qualifierApplicabilityTypes, boolean z) {
        kotlin.jvm.internal.p.d(nullabilityQualifier, "nullabilityQualifier");
        kotlin.jvm.internal.p.d(qualifierApplicabilityTypes, "qualifierApplicabilityTypes");
        this.f37900a = nullabilityQualifier;
        this.f37901b = qualifierApplicabilityTypes;
        this.f37902c = z;
    }

    public /* synthetic */ p(h hVar, Collection collection, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hVar, collection, (i & 4) != 0 ? hVar.f37924a == g.NOT_NULL : z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return kotlin.jvm.internal.p.a(this.f37900a, pVar.f37900a) && kotlin.jvm.internal.p.a(this.f37901b, pVar.f37901b) && this.f37902c == pVar.f37902c;
    }

    public final int hashCode() {
        int hashCode = this.f37900a.hashCode();
        int hashCode2 = this.f37901b.hashCode();
        boolean z = this.f37902c;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "JavaDefaultQualifiers(nullabilityQualifier=" + this.f37900a + ", qualifierApplicabilityTypes=" + this.f37901b + ", affectsTypeParameterBasedTypes=" + this.f37902c + ')';
    }
}
