package kotlin.reflect.jvm.internal.impl.descriptors.d.a;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/l.class */
final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final l f37448a = new l();

    private l() {
    }

    public static String a(Constructor<?> constructor) {
        p.d(constructor, "constructor");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        p.b(parameterTypes, "constructor.parameterTypes");
        int length = parameterTypes.length;
        int i = 0;
        while (i < length) {
            Class<?> parameterType = parameterTypes[i];
            i++;
            p.b(parameterType, "parameterType");
            sb.append(b.f(parameterType));
        }
        sb.append(")V");
        String sb2 = sb.toString();
        p.b(sb2, "sb.toString()");
        return sb2;
    }

    public static String a(Field field) {
        p.d(field, "field");
        Class<?> type = field.getType();
        p.b(type, "field.type");
        return b.f(type);
    }

    public static String a(Method method) {
        p.d(method, "method");
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        Class<?>[] parameterTypes = method.getParameterTypes();
        p.b(parameterTypes, "method.parameterTypes");
        int length = parameterTypes.length;
        int i = 0;
        while (i < length) {
            Class<?> parameterType = parameterTypes[i];
            i++;
            p.b(parameterType, "parameterType");
            sb.append(b.f(parameterType));
        }
        sb.append(")");
        Class<?> returnType = method.getReturnType();
        p.b(returnType, "method.returnType");
        sb.append(b.f(returnType));
        String sb2 = sb.toString();
        p.b(sb2, "sb.toString()");
        return sb2;
    }
}
