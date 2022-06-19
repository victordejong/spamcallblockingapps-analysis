package kotlin.reflect.jvm.internal.p535a;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.C18458a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.C18620ab;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0010\b\n\u0002\b\u0005\u001aI\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u00062\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH��¢\u0006\u0002\u0010\u000b\u001a$\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0002\u001a\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0002*\u0004\u0018\u00010\u00022\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0002¨\u0006\u0014"}, m4298d2 = {"createAnnotationInstance", "T", "", "annotationClass", "Ljava/lang/Class;", "values", "", "", "methods", "", "Ljava/lang/reflect/Method;", "(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;", "throwIllegalArgumentType", "", "index", "", "name", "expectedJvmType", "transformKotlinToJvm", "expectedType", "kotlin-reflection"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.a.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b.class */
public final class C18577b {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"equals", "", "T", "", "other", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b$a.class */
    public static final class C18578a extends AbstractC18526r implements Function1<Object, Boolean> {

        /* renamed from: a */
        final /* synthetic */ Class f63652a;

        /* renamed from: b */
        final /* synthetic */ List f63653b;

        /* renamed from: c */
        final /* synthetic */ Map f63654c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18578a(Class cls, List list, Map map) {
            super(1);
            this.f63652a = cls;
            this.f63653b = list;
            this.f63654c = map;
        }

        /* renamed from: a */
        public final boolean m3820a(Object obj) {
            boolean z;
            boolean z2;
            Annotation annotation = (Annotation) (!(obj instanceof Annotation) ? null : obj);
            Class cls = null;
            if (annotation != null) {
                AbstractC18551c m3894a = C18458a.m3894a(annotation);
                cls = null;
                if (m3894a != null) {
                    cls = C18458a.m3893a(m3894a);
                }
            }
            if (C18524p.m3850a(cls, this.f63652a)) {
                List<Method> list = this.f63653b;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    for (Method method : list) {
                        Object obj2 = this.f63654c.get(method.getName());
                        Object invoke = method.invoke(obj, new Object[0]);
                        if (obj2 instanceof boolean[]) {
                            Objects.requireNonNull(invoke, "null cannot be cast to non-null type kotlin.BooleanArray");
                            z2 = Arrays.equals((boolean[]) obj2, (boolean[]) invoke);
                        } else if (obj2 instanceof char[]) {
                            Objects.requireNonNull(invoke, "null cannot be cast to non-null type kotlin.CharArray");
                            z2 = Arrays.equals((char[]) obj2, (char[]) invoke);
                        } else if (obj2 instanceof byte[]) {
                            Objects.requireNonNull(invoke, "null cannot be cast to non-null type kotlin.ByteArray");
                            z2 = Arrays.equals((byte[]) obj2, (byte[]) invoke);
                        } else if (obj2 instanceof short[]) {
                            Objects.requireNonNull(invoke, "null cannot be cast to non-null type kotlin.ShortArray");
                            z2 = Arrays.equals((short[]) obj2, (short[]) invoke);
                        } else if (obj2 instanceof int[]) {
                            Objects.requireNonNull(invoke, "null cannot be cast to non-null type kotlin.IntArray");
                            z2 = Arrays.equals((int[]) obj2, (int[]) invoke);
                        } else if (obj2 instanceof float[]) {
                            Objects.requireNonNull(invoke, "null cannot be cast to non-null type kotlin.FloatArray");
                            z2 = Arrays.equals((float[]) obj2, (float[]) invoke);
                        } else if (obj2 instanceof long[]) {
                            Objects.requireNonNull(invoke, "null cannot be cast to non-null type kotlin.LongArray");
                            z2 = Arrays.equals((long[]) obj2, (long[]) invoke);
                        } else if (obj2 instanceof double[]) {
                            Objects.requireNonNull(invoke, "null cannot be cast to non-null type kotlin.DoubleArray");
                            z2 = Arrays.equals((double[]) obj2, (double[]) invoke);
                        } else if (obj2 instanceof Object[]) {
                            Objects.requireNonNull(invoke, "null cannot be cast to non-null type kotlin.Array<*>");
                            z2 = Arrays.equals((Object[]) obj2, (Object[]) invoke);
                        } else {
                            z2 = C18524p.m3850a(obj2, invoke);
                        }
                        if (!z2) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                return z;
            }
            return false;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(Object obj) {
            return Boolean.valueOf(m3820a(obj));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0010��\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.b$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b$b.class */
    public static final class C18579b extends AbstractC18526r implements Function0<Integer> {

        /* renamed from: a */
        final /* synthetic */ Map f63655a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18579b(Map map) {
            super(0);
            this.f63655a = map;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Integer invoke() {
            Iterator it2 = this.f63655a.entrySet().iterator();
            int i = 0;
            while (true) {
                int i2 = i;
                if (it2.hasNext()) {
                    Map.Entry entry = (Map.Entry) it2.next();
                    String str = (String) entry.getKey();
                    Object value = entry.getValue();
                    i = i2 + ((value instanceof boolean[] ? Arrays.hashCode((boolean[]) value) : value instanceof char[] ? Arrays.hashCode((char[]) value) : value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value instanceof short[] ? Arrays.hashCode((short[]) value) : value instanceof int[] ? Arrays.hashCode((int[]) value) : value instanceof float[] ? Arrays.hashCode((float[]) value) : value instanceof long[] ? Arrays.hashCode((long[]) value) : value instanceof double[] ? Arrays.hashCode((double[]) value) : value instanceof Object[] ? Arrays.hashCode((Object[]) value) : value.hashCode()) ^ (str.hashCode() * 127));
                } else {
                    return Integer.valueOf(i2);
                }
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0003*\u00020\u00012\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0005\u001a\n \u0002*\u0004\u0018\u00010\u00060\u00062,\u0010\u0007\u001a(\u0012\f\u0012\n \u0002*\u0004\u0018\u00010\u00010\u0001 \u0002*\u0014\u0012\u000e\b\u0001\u0012\n \u0002*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\b0\bH\n¢\u0006\u0004\b\t\u0010\n"}, m4298d2 = {"<anonymous>", "", "kotlin.jvm.PlatformType", "T", "<anonymous parameter 0>", "method", "Ljava/lang/reflect/Method;", "args", "", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.b$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b$c.class */
    public static final class C18580c implements InvocationHandler {

        /* renamed from: a */
        final /* synthetic */ Class f63656a;

        /* renamed from: b */
        final /* synthetic */ Lazy f63657b;

        /* renamed from: c */
        final /* synthetic */ KProperty f63658c;

        /* renamed from: d */
        final /* synthetic */ Lazy f63659d;

        /* renamed from: e */
        final /* synthetic */ KProperty f63660e;

        /* renamed from: f */
        final /* synthetic */ C18578a f63661f;

        /* renamed from: g */
        final /* synthetic */ Map f63662g;

        C18580c(Class cls, Lazy lazy, KProperty kProperty, Lazy lazy2, KProperty kProperty2, C18578a c18578a, Map map) {
            this.f63656a = cls;
            this.f63657b = lazy;
            this.f63658c = kProperty;
            this.f63659d = lazy2;
            this.f63660e = kProperty2;
            this.f63661f = c18578a;
            this.f63662g = map;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            C18524p.m3843b(method, "method");
            String name = method.getName();
            if (name != null) {
                int hashCode = name.hashCode();
                if (hashCode != -1776922004) {
                    if (hashCode != 147696667) {
                        if (hashCode == 1444986633 && name.equals("annotationType")) {
                            return this.f63656a;
                        }
                    } else if (name.equals("hashCode")) {
                        return this.f63659d.mo1102a();
                    }
                } else if (name.equals("toString")) {
                    return this.f63657b.mo1102a();
                }
            }
            if (!C18524p.m3850a((Object) name, (Object) "equals") || objArr == null || objArr.length != 1) {
                if (this.f63662g.containsKey(name)) {
                    return this.f63662g.get(name);
                }
                StringBuilder sb = new StringBuilder("Method is not supported: ");
                sb.append(method);
                sb.append(" (args: ");
                Object[] objArr2 = objArr;
                if (objArr == null) {
                    objArr2 = new Object[0];
                }
                sb.append(C18273i.m4183i(objArr2));
                sb.append(')');
                throw new C18620ab(sb.toString());
            }
            return Boolean.valueOf(this.f63661f.m3820a(C18273i.m4186f(objArr)));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.b$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b$d.class */
    public static final class C18581d extends AbstractC18526r implements Function0<String> {

        /* renamed from: a */
        final /* synthetic */ Class f63663a;

        /* renamed from: b */
        final /* synthetic */ Map f63664b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n��\n\u0002\u0010\r\n��\n\u0002\u0010��\n��\n\u0002\u0010&\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030\u0005H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "T", "", "entry", "", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.a.b$d$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b$d$a.class */
        static final class C18582a extends AbstractC18526r implements Function1<Map.Entry<? extends String, ? extends Object>, CharSequence> {

            /* renamed from: a */
            public static final C18582a f63665a = new C18582a();

            C18582a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ CharSequence invoke(Map.Entry<? extends String, ? extends Object> entry) {
                Map.Entry<? extends String, ? extends Object> entry2 = entry;
                C18524p.m3840d(entry2, "entry");
                String key = entry2.getKey();
                Object value = entry2.getValue();
                String arrays = value instanceof boolean[] ? Arrays.toString((boolean[]) value) : value instanceof char[] ? Arrays.toString((char[]) value) : value instanceof byte[] ? Arrays.toString((byte[]) value) : value instanceof short[] ? Arrays.toString((short[]) value) : value instanceof int[] ? Arrays.toString((int[]) value) : value instanceof float[] ? Arrays.toString((float[]) value) : value instanceof long[] ? Arrays.toString((long[]) value) : value instanceof double[] ? Arrays.toString((double[]) value) : value instanceof Object[] ? Arrays.toString((Object[]) value) : value.toString();
                return key + '=' + arrays;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18581d(Class cls, Map map) {
            super(0);
            this.f63663a = cls;
            this.f63664b = map;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ String invoke() {
            StringBuilder sb = new StringBuilder();
            sb.append('@');
            sb.append(this.f63663a.getCanonicalName());
            C18282n.m4150a(this.f63664b.entrySet(), sb, ", ", "(", ")", 0, null, C18582a.f63665a, 48);
            String sb2 = sb.toString();
            C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
            return sb2;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Object m3823a(Class cls, Map map) {
        Set<String> keySet = map.keySet();
        ArrayList arrayList = new ArrayList(C18282n.m4163a(keySet, 10));
        for (String str : keySet) {
            arrayList.add(cls.getDeclaredMethod(str, new Class[0]));
        }
        return m3822a(cls, map, arrayList);
    }

    /* renamed from: a */
    public static final <T> T m3822a(Class<T> annotationClass, Map<String, ? extends Object> values, List<Method> methods) {
        C18524p.m3840d(annotationClass, "annotationClass");
        C18524p.m3840d(values, "values");
        C18524p.m3840d(methods, "methods");
        C18578a c18578a = new C18578a(annotationClass, methods, values);
        Class[] clsArr = {annotationClass};
        T t = (T) Proxy.newProxyInstance(annotationClass.getClassLoader(), clsArr, new C18580c(annotationClass, C18399h.m3897a(new C18581d(annotationClass, values)), null, C18399h.m3897a(new C18579b(values)), null, c18578a, values));
        Objects.requireNonNull(t, "null cannot be cast to non-null type T");
        return t;
    }

    /* renamed from: a */
    public static final Object m3821a(Object obj, Class<?> cls) {
        Class cls2;
        if (obj instanceof Class) {
            return null;
        }
        if (obj instanceof AbstractC18551c) {
            cls2 = C18458a.m3893a((AbstractC18551c) obj);
        } else {
            cls2 = obj;
            if (obj instanceof Object[]) {
                cls2 = (Object[]) obj;
                if (cls2 instanceof Class[]) {
                    return null;
                }
                if (cls2 instanceof AbstractC18551c[]) {
                    Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.reflect.KClass<*>>");
                    AbstractC18551c[] abstractC18551cArr = (AbstractC18551c[]) obj;
                    ArrayList arrayList = new ArrayList(abstractC18551cArr.length);
                    for (AbstractC18551c abstractC18551c : abstractC18551cArr) {
                        arrayList.add(C18458a.m3893a(abstractC18551c));
                    }
                    cls2 = arrayList.toArray(new Class[0]);
                    Objects.requireNonNull(cls2, "null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
        }
        if (!cls.isInstance(cls2)) {
            return null;
        }
        return cls2;
    }
}
