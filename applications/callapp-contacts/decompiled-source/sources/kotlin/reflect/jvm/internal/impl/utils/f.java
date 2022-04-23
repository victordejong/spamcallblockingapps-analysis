package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final String f38521a;

    /* renamed from: b  reason: collision with root package name */
    public final int f38522b;

    public f(String number, int i) {
        p.d(number, "number");
        this.f38521a = number;
        this.f38522b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return p.a((Object) this.f38521a, (Object) fVar.f38521a) && this.f38522b == fVar.f38522b;
    }

    public final int hashCode() {
        return (this.f38521a.hashCode() * 31) + this.f38522b;
    }

    public final String toString() {
        return "NumberWithRadix(number=" + this.f38521a + ", radix=" + this.f38522b + ')';
    }
}
