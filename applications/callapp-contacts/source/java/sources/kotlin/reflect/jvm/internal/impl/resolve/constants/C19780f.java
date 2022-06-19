package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/f.class */
public final class C19780f {

    /* renamed from: a */
    public final C18960a f65964a;

    /* renamed from: b */
    public final int f65965b;

    public C19780f(C18960a classId, int i) {
        C18524p.m3840d(classId, "classId");
        this.f65964a = classId;
        this.f65965b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C19780f)) {
            return false;
        }
        C19780f c19780f = (C19780f) obj;
        return C18524p.m3850a(this.f65964a, c19780f.f65964a) && this.f65965b == c19780f.f65965b;
    }

    public final int hashCode() {
        return (this.f65964a.hashCode() * 31) + this.f65965b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = this.f65965b;
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("kotlin/Array<");
        }
        sb.append(this.f65964a);
        int i3 = this.f65965b;
        for (int i4 = 0; i4 < i3; i4++) {
            sb.append(">");
        }
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
