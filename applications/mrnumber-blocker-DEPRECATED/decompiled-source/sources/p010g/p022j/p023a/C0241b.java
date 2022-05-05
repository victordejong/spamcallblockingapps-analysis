package p010g.p022j.p023a;

import java.lang.reflect.Method;
/* renamed from: g.j.a.b */
/* loaded from: classes2-dex2jar.jar:g/j/a/b.class */
class C0241b {

    /* renamed from: g.j.a.b$a */
    /* loaded from: classes2-dex2jar.jar:g/j/a/b$a.class */
    enum EnumC0242a {
        Picasso252,
        Picasso271828,
        None
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static EnumC0242a m582a() {
        Method[] declaredMethods;
        Class<?> b = m581b("com.squareup.picasso.Picasso");
        if (b != null) {
            for (Method method : b.getDeclaredMethods()) {
                if (method.getName().equals("with")) {
                    return EnumC0242a.Picasso252;
                }
                if (method.getName().equals("get")) {
                    return EnumC0242a.Picasso271828;
                }
            }
        }
        return EnumC0242a.None;
    }

    /* renamed from: b */
    private static Class<?> m581b(String str) {
        return Class.forName(str);
    }
}
