package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.w;
import kotlin.reflect.jvm.internal.impl.load.java.d.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.i;
import kotlin.reflect.jvm.internal.impl.load.java.d.j;
import kotlin.reflect.jvm.internal.impl.load.java.d.w;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/l.class */
public final class l extends w implements j {

    /* renamed from: a  reason: collision with root package name */
    final Type f37477a;

    /* renamed from: c  reason: collision with root package name */
    private final i f37478c;

    public l(Type reflectType) {
        j jVar;
        p.d(reflectType, "reflectType");
        this.f37477a = reflectType;
        Type type = this.f37477a;
        if (type instanceof Class) {
            jVar = new j((Class) type);
        } else if (type instanceof TypeVariable) {
            jVar = new x((TypeVariable) type);
        } else if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            Objects.requireNonNull(rawType, "null cannot be cast to non-null type java.lang.Class<*>");
            jVar = new j((Class) rawType);
        } else {
            throw new IllegalStateException("Not a classifier type (" + type.getClass() + "): " + type);
        }
        this.f37478c = jVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.w
    public final Type a() {
        return this.f37477a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.w, kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final a a(b fqName) {
        p.d(fqName, "fqName");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final Collection<a> b() {
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final boolean c() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.j
    public final i d() {
        return this.f37478c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.j
    public final String e() {
        throw new UnsupportedOperationException(p.a("Type not found: ", (Object) this.f37477a));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.j
    public final String f() {
        return this.f37477a.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.j
    public final boolean g() {
        Type type = this.f37477a;
        if (!(type instanceof Class)) {
            return false;
        }
        TypeVariable[] typeParameters = ((Class) type).getTypeParameters();
        p.b(typeParameters, "getTypeParameters()");
        return (typeParameters.length == 0) ^ true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.j
    public final List<w> h() {
        List<Type> a2 = b.a(this.f37477a);
        ArrayList arrayList = new ArrayList(n.a((Iterable) a2, 10));
        for (Type type : a2) {
            arrayList.add(w.a.a(type));
        }
        return arrayList;
    }
}
