package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.load.java.d.o;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/q.class */
public final class q extends d implements o {

    /* renamed from: b  reason: collision with root package name */
    private final Object f37482b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(e eVar, Object value) {
        super(eVar);
        p.d(value, "value");
        this.f37482b = value;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.o
    public final Object b() {
        return this.f37482b;
    }
}
