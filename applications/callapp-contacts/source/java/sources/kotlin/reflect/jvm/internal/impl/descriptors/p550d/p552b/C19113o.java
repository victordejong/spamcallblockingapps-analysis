package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19404m;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.o */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/o.class */
public final class C19113o extends AbstractC19092d implements AbstractC19404m {

    /* renamed from: b */
    private final Enum<?> f64839b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19113o(C18966e c18966e, Enum<?> value) {
        super(c18966e);
        C18524p.m3840d(value, "value");
        this.f64839b = value;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19404m
    /* renamed from: b */
    public final C18960a mo2197b() {
        Class<?> cls = this.f64839b.getClass();
        if (!cls.isEnum()) {
            cls = cls.getEnclosingClass();
        }
        Class<?> enumClass = cls;
        C18524p.m3843b(enumClass, "enumClass");
        return C19088b.m2654e(cls);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19404m
    /* renamed from: c */
    public final C18966e mo2196c() {
        return C18966e.m2719a(this.f64839b.name());
    }
}
