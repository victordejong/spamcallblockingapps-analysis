package kotlin.jvm.internal;

import java.util.List;
import kotlin.SinceKotlin;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/ReflectionFactory.class */
public class ReflectionFactory {
    /* renamed from: a */
    public KFunction m1798a(FunctionReference functionReference) {
        return functionReference;
    }

    /* renamed from: b */
    public KClass m1797b(Class cls) {
        return new ClassReference(cls);
    }

    /* renamed from: c */
    public KDeclarationContainer m1796c(Class cls, String str) {
        return new PackageReference(cls, str);
    }

    /* renamed from: d */
    public KMutableProperty0 m1795d(MutablePropertyReference0 mutablePropertyReference0) {
        return mutablePropertyReference0;
    }

    /* renamed from: e */
    public KMutableProperty1 m1794e(MutablePropertyReference1 mutablePropertyReference1) {
        return mutablePropertyReference1;
    }

    /* renamed from: f */
    public KMutableProperty2 m1793f(MutablePropertyReference2 mutablePropertyReference2) {
        return mutablePropertyReference2;
    }

    /* renamed from: g */
    public KProperty0 m1792g(PropertyReference0 propertyReference0) {
        return propertyReference0;
    }

    /* renamed from: h */
    public KProperty1 m1791h(PropertyReference1 propertyReference1) {
        return propertyReference1;
    }

    /* renamed from: i */
    public KProperty2 m1790i(PropertyReference2 propertyReference2) {
        return propertyReference2;
    }

    @SinceKotlin
    /* renamed from: j */
    public String m1789j(FunctionBase functionBase) {
        String obj = functionBase.getClass().getGenericInterfaces()[0].toString();
        String str = obj;
        if (obj.startsWith("kotlin.jvm.functions.")) {
            str = obj.substring(21);
        }
        return str;
    }

    @SinceKotlin
    /* renamed from: k */
    public String m1788k(Lambda lambda) {
        return m1789j(lambda);
    }

    @SinceKotlin
    /* renamed from: l */
    public KType m1787l(KClassifier kClassifier, List<KTypeProjection> list, boolean z) {
        return new TypeReference(kClassifier, list, z);
    }
}
