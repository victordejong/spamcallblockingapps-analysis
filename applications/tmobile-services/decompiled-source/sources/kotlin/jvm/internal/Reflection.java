package kotlin.jvm.internal;

import java.util.Collections;
import kotlin.SinceKotlin;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/Reflection.class */
public class Reflection {

    /* renamed from: a */
    private static final ReflectionFactory f20753a;

    static {
        ReflectionFactory reflectionFactory = null;
        try {
            reflectionFactory = (ReflectionFactory) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException e) {
        }
        if (reflectionFactory == null) {
            reflectionFactory = new ReflectionFactory();
        }
        f20753a = reflectionFactory;
    }

    /* renamed from: a */
    public static KFunction m1810a(FunctionReference functionReference) {
        f20753a.m1798a(functionReference);
        return functionReference;
    }

    /* renamed from: b */
    public static KClass m1809b(Class cls) {
        return f20753a.m1797b(cls);
    }

    @SinceKotlin
    /* renamed from: c */
    public static KDeclarationContainer m1808c(Class cls) {
        return f20753a.m1796c(cls, "");
    }

    /* renamed from: d */
    public static KMutableProperty0 m1807d(MutablePropertyReference0 mutablePropertyReference0) {
        f20753a.m1795d(mutablePropertyReference0);
        return mutablePropertyReference0;
    }

    /* renamed from: e */
    public static KMutableProperty1 m1806e(MutablePropertyReference1 mutablePropertyReference1) {
        f20753a.m1794e(mutablePropertyReference1);
        return mutablePropertyReference1;
    }

    /* renamed from: f */
    public static KMutableProperty2 m1805f(MutablePropertyReference2 mutablePropertyReference2) {
        f20753a.m1793f(mutablePropertyReference2);
        return mutablePropertyReference2;
    }

    @SinceKotlin
    /* renamed from: g */
    public static KType m1804g(Class cls) {
        return f20753a.m1787l(m1809b(cls), Collections.emptyList(), true);
    }

    /* renamed from: h */
    public static KProperty0 m1803h(PropertyReference0 propertyReference0) {
        f20753a.m1792g(propertyReference0);
        return propertyReference0;
    }

    /* renamed from: i */
    public static KProperty1 m1802i(PropertyReference1 propertyReference1) {
        f20753a.m1791h(propertyReference1);
        return propertyReference1;
    }

    /* renamed from: j */
    public static KProperty2 m1801j(PropertyReference2 propertyReference2) {
        f20753a.m1790i(propertyReference2);
        return propertyReference2;
    }

    @SinceKotlin
    /* renamed from: k */
    public static String m1800k(FunctionBase functionBase) {
        return f20753a.m1789j(functionBase);
    }

    @SinceKotlin
    /* renamed from: l */
    public static String m1799l(Lambda lambda) {
        return f20753a.m1788k(lambda);
    }
}
