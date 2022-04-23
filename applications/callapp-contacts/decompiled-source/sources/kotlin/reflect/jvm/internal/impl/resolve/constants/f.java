package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final a f38249a;

    /* renamed from: b  reason: collision with root package name */
    public final int f38250b;

    public f(a classId, int i) {
        p.d(classId, "classId");
        this.f38249a = classId;
        this.f38250b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return p.a(this.f38249a, fVar.f38249a) && this.f38250b == fVar.f38250b;
    }

    public final int hashCode() {
        return (this.f38249a.hashCode() * 31) + this.f38250b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f38250b;
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("kotlin/Array<");
        }
        sb.append(this.f38249a);
        int i3 = this.f38250b;
        for (int i4 = 0; i4 < i3; i4++) {
            sb.append(">");
        }
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
