package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.w;
import kotlin.reflect.jvm.internal.impl.load.java.d.h;
import kotlin.reflect.jvm.internal.impl.load.java.d.w;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/k.class */
public final class k extends d implements h {

    /* renamed from: b  reason: collision with root package name */
    private final Class<?> f37476b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(e eVar, Class<?> klass) {
        super(eVar);
        p.d(klass, "klass");
        this.f37476b = klass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.h
    public final w b() {
        w.a aVar = w.f37488b;
        return w.a.a(this.f37476b);
    }
}
