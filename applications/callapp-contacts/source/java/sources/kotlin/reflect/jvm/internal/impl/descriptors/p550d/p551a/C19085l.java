package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.a.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/l.class */
final class C19085l {

    /* renamed from: a */
    public static final C19085l f64806a = new C19085l();

    private C19085l() {
    }

    /* renamed from: a */
    public static String m2664a(Constructor<?> constructor) {
        C18524p.m3840d(constructor, "constructor");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        C18524p.m3843b(parameterTypes, "constructor.parameterTypes");
        int length = parameterTypes.length;
        int i = 0;
        while (i < length) {
            Class<?> parameterType = parameterTypes[i];
            i++;
            C18524p.m3843b(parameterType, "parameterType");
            sb.append(C19088b.m2653f(parameterType));
        }
        sb.append(")V");
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "sb.toString()");
        return sb2;
    }

    /* renamed from: a */
    public static String m2663a(Field field) {
        C18524p.m3840d(field, "field");
        Class<?> type = field.getType();
        C18524p.m3843b(type, "field.type");
        return C19088b.m2653f(type);
    }

    /* renamed from: a */
    public static String m2662a(Method method) {
        C18524p.m3840d(method, "method");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        Class<?>[] parameterTypes = method.getParameterTypes();
        C18524p.m3843b(parameterTypes, "method.parameterTypes");
        int length = parameterTypes.length;
        int i = 0;
        while (i < length) {
            Class<?> parameterType = parameterTypes[i];
            i++;
            C18524p.m3843b(parameterType, "parameterType");
            sb.append(C19088b.m2653f(parameterType));
        }
        sb.append(")");
        Class<?> returnType = method.getReturnType();
        C18524p.m3843b(returnType, "method.returnType");
        sb.append(C19088b.m2653f(returnType));
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "sb.toString()");
        return sb2;
    }
}
