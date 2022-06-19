package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c.class */
public final class C19524c<T> {

    /* renamed from: a */
    final T f65513a;

    /* renamed from: b */
    final AbstractC18983g f65514b;

    public C19524c(T t, AbstractC18983g abstractC18983g) {
        this.f65513a = t;
        this.f65514b = abstractC18983g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C19524c)) {
            return false;
        }
        C19524c c19524c = (C19524c) obj;
        return C18524p.m3850a(this.f65513a, c19524c.f65513a) && C18524p.m3850a(this.f65514b, c19524c.f65514b);
    }

    public final int hashCode() {
        T t = this.f65513a;
        int i = 0;
        int hashCode = t == null ? 0 : t.hashCode();
        AbstractC18983g abstractC18983g = this.f65514b;
        if (abstractC18983g != null) {
            i = abstractC18983g.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "EnhancementResult(result=" + this.f65513a + ", enhancementAnnotations=" + this.f65514b + ')';
    }
}
