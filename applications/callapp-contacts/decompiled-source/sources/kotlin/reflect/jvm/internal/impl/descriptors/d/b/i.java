package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.Collection;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.w;
import kotlin.reflect.jvm.internal.impl.load.java.d.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.f;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/i.class */
public final class i extends w implements f {

    /* renamed from: a  reason: collision with root package name */
    private final Type f37464a;

    /* renamed from: c  reason: collision with root package name */
    private final w f37465c;

    /* renamed from: d  reason: collision with root package name */
    private final Collection<a> f37466d;
    private final boolean e;

    public i(Type reflectType) {
        w wVar;
        p.d(reflectType, "reflectType");
        this.f37464a = reflectType;
        if (reflectType instanceof GenericArrayType) {
            Type genericComponentType = ((GenericArrayType) reflectType).getGenericComponentType();
            p.b(genericComponentType, "genericComponentType");
            wVar = w.a.a(genericComponentType);
        } else {
            if (reflectType instanceof Class) {
                Class cls = (Class) reflectType;
                if (cls.isArray()) {
                    Class<?> componentType = cls.getComponentType();
                    p.b(componentType, "getComponentType()");
                    wVar = w.a.a(componentType);
                }
            }
            throw new IllegalArgumentException("Not an array type (" + reflectType.getClass() + "): " + reflectType);
        }
        this.f37465c = wVar;
        this.f37466d = z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.w
    protected final Type a() {
        return this.f37464a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final Collection<a> b() {
        return this.f37466d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final boolean c() {
        return this.e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.f
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.d.w d() {
        return this.f37465c;
    }
}
