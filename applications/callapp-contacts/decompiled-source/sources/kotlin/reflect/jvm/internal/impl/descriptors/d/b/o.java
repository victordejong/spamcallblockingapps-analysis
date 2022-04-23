package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.load.java.d.m;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/o.class */
public final class o extends d implements m {

    /* renamed from: b  reason: collision with root package name */
    private final Enum<?> f37480b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(e eVar, Enum<?> value) {
        super(eVar);
        p.d(value, "value");
        this.f37480b = value;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.m
    public final a b() {
        Class<?> enumClass = this.f37480b.getClass();
        if (!enumClass.isEnum()) {
            enumClass = enumClass.getEnclosingClass();
        }
        p.b(enumClass, "enumClass");
        return b.e(enumClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.m
    public final e c() {
        return e.a(this.f37480b.name());
    }
}
