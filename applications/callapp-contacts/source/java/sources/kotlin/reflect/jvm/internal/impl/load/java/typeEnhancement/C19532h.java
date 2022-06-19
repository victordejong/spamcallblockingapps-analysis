package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h.class */
public final class C19532h {

    /* renamed from: a */
    public final EnumC19531g f65526a;

    /* renamed from: b */
    final boolean f65527b;

    public C19532h(EnumC19531g qualifier, boolean z) {
        C18524p.m3840d(qualifier, "qualifier");
        this.f65526a = qualifier;
        this.f65527b = z;
    }

    public /* synthetic */ C19532h(EnumC19531g enumC19531g, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(enumC19531g, (i & 2) != 0 ? false : z);
    }

    /* renamed from: a */
    public static C19532h m2030a(EnumC19531g qualifier, boolean z) {
        C18524p.m3840d(qualifier, "qualifier");
        return new C19532h(qualifier, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C19532h)) {
            return false;
        }
        C19532h c19532h = (C19532h) obj;
        return this.f65526a == c19532h.f65526a && this.f65527b == c19532h.f65527b;
    }

    public final int hashCode() {
        int hashCode = this.f65526a.hashCode();
        boolean z = this.f65527b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "NullabilityQualifierWithMigrationStatus(qualifier=" + this.f65526a + ", isForWarningOnly=" + this.f65527b + ')';
    }
}
