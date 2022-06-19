package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.C18524p;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/a.class */
final class C19086a {

    /* renamed from: a */
    public static final C19086a f64807a = new C19086a();

    /* renamed from: b */
    private static C19087a f64808b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a.class */
    public static final class C19087a {

        /* renamed from: a */
        final Method f64809a;

        /* renamed from: b */
        final Method f64810b;

        public C19087a(Method method, Method method2) {
            this.f64809a = method;
            this.f64810b = method2;
        }
    }

    private C19086a() {
    }

    /* renamed from: a */
    public static List<String> m2661a(Member member) {
        Method method;
        C18524p.m3840d(member, "member");
        C19087a c19087a = f64808b;
        C19087a c19087a2 = c19087a;
        if (c19087a == null) {
            c19087a2 = m2660b(member);
            f64808b = c19087a2;
        }
        Method method2 = c19087a2.f64809a;
        if (method2 == null || (method = c19087a2.f64810b) == null) {
            return null;
        }
        Object invoke = method2.invoke(member, new Object[0]);
        Objects.requireNonNull(invoke, "null cannot be cast to non-null type kotlin.Array<*>");
        Object[] objArr = (Object[]) invoke;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            Object invoke2 = method.invoke(obj, new Object[0]);
            Objects.requireNonNull(invoke2, "null cannot be cast to non-null type kotlin.String");
            arrayList.add((String) invoke2);
        }
        return arrayList;
    }

    /* renamed from: b */
    private static C19087a m2660b(Member member) {
        C18524p.m3840d(member, "member");
        Class<?> cls = member.getClass();
        try {
            return new C19087a(cls.getMethod("getParameters", new Class[0]), C19088b.m2659a(cls).loadClass("java.lang.reflect.Parameter").getMethod("getName", new Class[0]));
        } catch (NoSuchMethodException e) {
            return new C19087a(null, null);
        }
    }
}
