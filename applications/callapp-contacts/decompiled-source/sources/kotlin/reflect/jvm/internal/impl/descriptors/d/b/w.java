package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/w.class */
public abstract class w implements kotlin.reflect.jvm.internal.impl.load.java.d.w {

    /* renamed from: b  reason: collision with root package name */
    public static final a f37488b = new a(null);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static w a(Type type) {
            p.d(type, "type");
            boolean z = type instanceof Class;
            if (z) {
                Class cls = (Class) type;
                if (cls.isPrimitive()) {
                    return new v(cls);
                }
            }
            return ((type instanceof GenericArrayType) || (z && ((Class) type).isArray())) ? new i(type) : type instanceof WildcardType ? new z((WildcardType) type) : new l(type);
        }
    }

    protected abstract Type a();

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public kotlin.reflect.jvm.internal.impl.load.java.d.a a(b fqName) {
        Object obj;
        w wVar = this;
        p.d(wVar, "this");
        p.d(fqName, "fqName");
        Iterator<T> it2 = wVar.b().iterator();
        while (true) {
            obj = null;
            b bVar = null;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            kotlin.reflect.jvm.internal.impl.c.a b2 = ((kotlin.reflect.jvm.internal.impl.load.java.d.a) next).b();
            if (b2 != null) {
                bVar = b2.f();
            }
            if (p.a(bVar, fqName)) {
                obj = next;
                break;
            }
        }
        return (kotlin.reflect.jvm.internal.impl.load.java.d.a) obj;
    }

    public boolean equals(Object obj) {
        return (obj instanceof w) && p.a(a(), ((w) obj).a());
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String toString() {
        return getClass().getName() + ": " + a();
    }
}
