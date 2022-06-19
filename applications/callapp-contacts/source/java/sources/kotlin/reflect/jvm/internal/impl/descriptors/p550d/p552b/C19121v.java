package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.reflect.Type;
import java.util.Collection;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19412u;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.EnumC19767d;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.v */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/v.class */
public final class C19121v extends AbstractC19122w implements AbstractC19412u {

    /* renamed from: a */
    private final Class<?> f64844a;

    /* renamed from: c */
    private final Collection<AbstractC19389a> f64845c = C18297z.f63400a;

    /* renamed from: d */
    private final boolean f64846d;

    public C19121v(Class<?> reflectType) {
        C18524p.m3840d(reflectType, "reflectType");
        this.f64844a = reflectType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ Type mo2637a() {
        return this.f64844a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: b */
    public final Collection<AbstractC19389a> mo2220b() {
        return this.f64845c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: c */
    public final boolean mo2219c() {
        return this.f64846d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19412u
    /* renamed from: d */
    public final EnumC18946h mo2179d() {
        if (C18524p.m3850a(this.f64844a, Void.TYPE)) {
            return null;
        }
        return EnumC19767d.get(this.f64844a.getName()).getPrimitiveType();
    }
}
