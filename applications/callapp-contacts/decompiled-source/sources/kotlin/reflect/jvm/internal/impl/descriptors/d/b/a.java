package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37449a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static C0672a f37450b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/a$a.class */
    public static final class C0672a {

        /* renamed from: a  reason: collision with root package name */
        final Method f37451a;

        /* renamed from: b  reason: collision with root package name */
        final Method f37452b;

        public C0672a(Method method, Method method2) {
            this.f37451a = method;
            this.f37452b = method2;
        }
    }

    private a() {
    }

    public static List<String> a(Member member) {
        Method method;
        p.d(member, "member");
        C0672a aVar = f37450b;
        C0672a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = b(member);
            f37450b = aVar2;
        }
        Method method2 = aVar2.f37451a;
        if (method2 == null || (method = aVar2.f37452b) == null) {
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

    private static C0672a b(Member member) {
        p.d(member, "member");
        Class<?> cls = member.getClass();
        try {
            return new C0672a(cls.getMethod("getParameters", new Class[0]), b.a(cls).loadClass("java.lang.reflect.Parameter").getMethod("getName", new Class[0]));
        } catch (NoSuchMethodException e) {
            return new C0672a(null, null);
        }
    }
}
