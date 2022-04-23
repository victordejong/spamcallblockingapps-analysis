package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/h.class */
public final class h<T> {

    /* renamed from: a  reason: collision with root package name */
    private final k<T> f38072a;

    /* renamed from: b  reason: collision with root package name */
    private int f38073b;

    /* renamed from: c  reason: collision with root package name */
    private T f38074c;

    public final void a() {
        if (this.f38074c == null) {
            this.f38073b++;
        }
    }

    public final void a(T objectType) {
        p.d(objectType, "objectType");
        b(objectType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(T type) {
        p.d(type, "type");
        if (this.f38074c == null) {
            int i = this.f38073b;
            T t = type;
            if (i > 0) {
                t = this.f38072a.a(p.a(kotlin.h.p.a((CharSequence) "[", i), (Object) this.f38072a.b((k<T>) type)));
            }
            this.f38074c = t;
        }
    }
}
