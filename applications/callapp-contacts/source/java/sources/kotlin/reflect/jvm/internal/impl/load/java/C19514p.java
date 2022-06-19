package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Collection;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19532h;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.EnumC19531g;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.p */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/p.class */
public final class C19514p {

    /* renamed from: a */
    public final C19532h f65500a;

    /* renamed from: b */
    public final Collection<EnumC19343a> f65501b;

    /* renamed from: c */
    public final boolean f65502c;

    /* JADX WARN: Multi-variable type inference failed */
    public C19514p(C19532h nullabilityQualifier, Collection<? extends EnumC19343a> qualifierApplicabilityTypes, boolean z) {
        C18524p.m3840d(nullabilityQualifier, "nullabilityQualifier");
        C18524p.m3840d(qualifierApplicabilityTypes, "qualifierApplicabilityTypes");
        this.f65500a = nullabilityQualifier;
        this.f65501b = qualifierApplicabilityTypes;
        this.f65502c = z;
    }

    public /* synthetic */ C19514p(C19532h c19532h, Collection collection, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c19532h, collection, (i & 4) != 0 ? c19532h.f65526a == EnumC19531g.NOT_NULL : z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C19514p)) {
            return false;
        }
        C19514p c19514p = (C19514p) obj;
        return C18524p.m3850a(this.f65500a, c19514p.f65500a) && C18524p.m3850a(this.f65501b, c19514p.f65501b) && this.f65502c == c19514p.f65502c;
    }

    public final int hashCode() {
        int hashCode = this.f65500a.hashCode();
        int hashCode2 = this.f65501b.hashCode();
        boolean z = this.f65502c;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "JavaDefaultQualifiers(nullabilityQualifier=" + this.f65500a + ", qualifierApplicabilityTypes=" + this.f65501b + ", affectsTypeParameterBasedTypes=" + this.f65502c + ')';
    }
}
