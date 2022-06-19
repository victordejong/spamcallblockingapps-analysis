package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/h.class */
public final class C19631h<T> {

    /* renamed from: a */
    private final AbstractC19638k<T> f65732a;

    /* renamed from: b */
    private int f65733b;

    /* renamed from: c */
    private T f65734c;

    /* renamed from: a */
    public final void m1905a() {
        if (this.f65734c == null) {
            this.f65733b++;
        }
    }

    /* renamed from: a */
    public final void m1904a(T objectType) {
        C18524p.m3840d(objectType, "objectType");
        m1903b(objectType);
    }

    /* renamed from: b */
    public void m1903b(T type) {
        C18524p.m3840d(type, "type");
        if (this.f65734c == null) {
            int i = this.f65733b;
            T t = type;
            if (i > 0) {
                t = this.f65732a.mo1890a(C18524p.m3847a(C18425p.m3965a((CharSequence) "[", i), (Object) this.f65732a.mo1887b((AbstractC19638k<T>) type)));
            }
            this.f65734c = t;
        }
    }
}
