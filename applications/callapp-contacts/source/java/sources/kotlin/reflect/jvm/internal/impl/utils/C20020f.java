package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.C18524p;
/* renamed from: kotlin.reflect.jvm.internal.impl.utils.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/f.class */
public final class C20020f {

    /* renamed from: a */
    public final String f66376a;

    /* renamed from: b */
    public final int f66377b;

    public C20020f(String number, int i) {
        C18524p.m3840d(number, "number");
        this.f66376a = number;
        this.f66377b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C20020f)) {
            return false;
        }
        C20020f c20020f = (C20020f) obj;
        return C18524p.m3850a((Object) this.f66376a, (Object) c20020f.f66376a) && this.f66377b == c20020f.f66377b;
    }

    public final int hashCode() {
        return (this.f66376a.hashCode() * 31) + this.f66377b;
    }

    public final String toString() {
        return "NumberWithRadix(number=" + this.f66376a + ", radix=" + this.f66377b + ')';
    }
}
