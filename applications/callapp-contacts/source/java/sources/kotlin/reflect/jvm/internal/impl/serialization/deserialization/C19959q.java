package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.q */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/q.class */
public final class C19959q<T> {

    /* renamed from: a */
    private final T f66290a;

    /* renamed from: b */
    private final T f66291b;

    /* renamed from: c */
    private final String f66292c;

    /* renamed from: d */
    private final C18960a f66293d;

    public C19959q(T t, T t2, String filePath, C18960a classId) {
        C18524p.m3840d(filePath, "filePath");
        C18524p.m3840d(classId, "classId");
        this.f66290a = t;
        this.f66291b = t2;
        this.f66292c = filePath;
        this.f66293d = classId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C19959q)) {
            return false;
        }
        C19959q c19959q = (C19959q) obj;
        return C18524p.m3850a(this.f66290a, c19959q.f66290a) && C18524p.m3850a(this.f66291b, c19959q.f66291b) && C18524p.m3850a((Object) this.f66292c, (Object) c19959q.f66292c) && C18524p.m3850a(this.f66293d, c19959q.f66293d);
    }

    public final int hashCode() {
        T t = this.f66290a;
        int i = 0;
        int hashCode = t == null ? 0 : t.hashCode();
        T t2 = this.f66291b;
        if (t2 != null) {
            i = t2.hashCode();
        }
        return (((((hashCode * 31) + i) * 31) + this.f66292c.hashCode()) * 31) + this.f66293d.hashCode();
    }

    public final String toString() {
        return "IncompatibleVersionErrorData(actualVersion=" + this.f66290a + ", expectedVersion=" + this.f66291b + ", filePath=" + this.f66292c + ", classId=" + this.f66293d + ')';
    }
}
