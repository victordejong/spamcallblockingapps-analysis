package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final g f37924a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f37925b;

    public h(g qualifier, boolean z) {
        p.d(qualifier, "qualifier");
        this.f37924a = qualifier;
        this.f37925b = z;
    }

    public /* synthetic */ h(g gVar, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, (i & 2) != 0 ? false : z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static h a(g qualifier, boolean z) {
        p.d(qualifier, "qualifier");
        return new h(qualifier, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f37924a == hVar.f37924a && this.f37925b == hVar.f37925b;
    }

    public final int hashCode() {
        int hashCode = this.f37924a.hashCode();
        boolean z = this.f37925b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "NullabilityQualifierWithMigrationStatus(qualifier=" + this.f37924a + ", isForWarningOnly=" + this.f37925b + ')';
    }
}
