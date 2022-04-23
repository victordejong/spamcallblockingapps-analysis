package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.reflect.Type;
import java.util.Collection;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.load.java.d.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.u;
import kotlin.reflect.jvm.internal.impl.resolve.c.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/v.class */
public final class v extends w implements u {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f37485a;

    /* renamed from: c  reason: collision with root package name */
    private final Collection<a> f37486c = z.f36608a;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f37487d;

    public v(Class<?> reflectType) {
        p.d(reflectType, "reflectType");
        this.f37485a = reflectType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.w
    protected final /* bridge */ /* synthetic */ Type a() {
        return this.f37485a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final Collection<a> b() {
        return this.f37486c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final boolean c() {
        return this.f37487d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.u
    public final h d() {
        if (p.a(this.f37485a, Void.TYPE)) {
            return null;
        }
        return d.get(this.f37485a.getName()).getPrimitiveType();
    }
}
