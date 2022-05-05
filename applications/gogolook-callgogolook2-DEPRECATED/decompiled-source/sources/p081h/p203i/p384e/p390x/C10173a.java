package p081h.p203i.p384e.p390x;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import p081h.p203i.p384e.p386w.C10123a;
import p081h.p203i.p384e.p386w.C10124b;
/* renamed from: h.i.e.x.a */
/* loaded from: classes2-dex2jar.jar:h/i/e/x/a.class */
public class C10173a<T> {
    public final int hashCode;
    public final Class<? super T> rawType;
    public final Type type;

    public C10173a() {
        this.type = m13275b(getClass());
        this.rawType = (Class<? super T>) C10124b.m13336e(this.type);
        this.hashCode = this.type.hashCode();
    }

    public C10173a(Type type) {
        C10123a.m13355a(type);
        this.type = C10124b.m13341b(type);
        this.rawType = (Class<? super T>) C10124b.m13336e(this.type);
        this.hashCode = this.type.hashCode();
    }

    /* renamed from: a */
    public static <T> C10173a<T> m13279a(Class<T> cls) {
        return new C10173a<>(cls);
    }

    /* renamed from: a */
    public static C10173a<?> m13278a(Type type) {
        return new C10173a<>(type);
    }

    /* renamed from: a */
    public static C10173a<?> m13277a(Type type, Type... typeArr) {
        return new C10173a<>(C10124b.m13344a((Type) null, type, typeArr));
    }

    /* renamed from: b */
    public static Type m13275b(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return C10124b.m13341b(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    /* renamed from: a */
    public final Class<? super T> m13280a() {
        return this.rawType;
    }

    /* renamed from: b */
    public final Type m13276b() {
        return this.type;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C10173a) && C10124b.m13345a(this.type, ((C10173a) obj).type);
    }

    public final int hashCode() {
        return this.hashCode;
    }

    public final String toString() {
        return C10124b.m13333h(this.type);
    }
}
