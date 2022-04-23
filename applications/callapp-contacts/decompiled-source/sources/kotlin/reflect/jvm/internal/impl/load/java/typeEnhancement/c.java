package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c.class */
public final class c<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f37913a;

    /* renamed from: b  reason: collision with root package name */
    final g f37914b;

    public c(T t, g gVar) {
        this.f37913a = t;
        this.f37914b = gVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return p.a(this.f37913a, cVar.f37913a) && p.a(this.f37914b, cVar.f37914b);
    }

    public final int hashCode() {
        T t = this.f37913a;
        int i = 0;
        int hashCode = t == null ? 0 : t.hashCode();
        g gVar = this.f37914b;
        if (gVar != null) {
            i = gVar.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "EnhancementResult(result=" + this.f37913a + ", enhancementAnnotations=" + this.f37914b + ')';
    }
}
