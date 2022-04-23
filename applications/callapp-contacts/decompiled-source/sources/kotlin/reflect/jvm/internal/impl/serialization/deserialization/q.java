package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/q.class */
public final class q<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f38458a;

    /* renamed from: b  reason: collision with root package name */
    private final T f38459b;

    /* renamed from: c  reason: collision with root package name */
    private final String f38460c;

    /* renamed from: d  reason: collision with root package name */
    private final a f38461d;

    public q(T t, T t2, String filePath, a classId) {
        p.d(filePath, "filePath");
        p.d(classId, "classId");
        this.f38458a = t;
        this.f38459b = t2;
        this.f38460c = filePath;
        this.f38461d = classId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return p.a(this.f38458a, qVar.f38458a) && p.a(this.f38459b, qVar.f38459b) && p.a((Object) this.f38460c, (Object) qVar.f38460c) && p.a(this.f38461d, qVar.f38461d);
    }

    public final int hashCode() {
        T t = this.f38458a;
        int i = 0;
        int hashCode = t == null ? 0 : t.hashCode();
        T t2 = this.f38459b;
        if (t2 != null) {
            i = t2.hashCode();
        }
        return (((((hashCode * 31) + i) * 31) + this.f38460c.hashCode()) * 31) + this.f38461d.hashCode();
    }

    public final String toString() {
        return "IncompatibleVersionErrorData(actualVersion=" + this.f38458a + ", expectedVersion=" + this.f38459b + ", filePath=" + this.f38460c + ", classId=" + this.f38461d + ')';
    }
}
