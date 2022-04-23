package kotlin.reflect.jvm.internal.a;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.ab;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0010\b\n\u0002\b\u0005\u001aI\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u00062\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH��¢\u0006\u0002\u0010\u000b\u001a$\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0002\u001a\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0002*\u0004\u0018\u00010\u00022\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0002¨\u0006\u0014"}, d2 = {"createAnnotationInstance", "T", "", "annotationClass", "Ljava/lang/Class;", "values", "", "", "methods", "", "Ljava/lang/reflect/Method;", "(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;", "throwIllegalArgumentType", "", "index", "", "name", "expectedJvmType", "transformKotlinToJvm", "expectedType", "kotlin-reflection"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b.class */
public final class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"equals", "", "T", "", "other", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b$a.class */
    public static final class a extends r implements Function1<Object, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f36834a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f36835b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Map f36836c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Class cls, List list, Map map) {
            super(1);
            this.f36834a = cls;
            this.f36835b = list;
            this.f36836c = map;
        }

        public final boolean a(Object obj) {
            boolean z;
            boolean z2;
            Annotation annotation = (Annotation) (!(obj instanceof Annotation) ? null : obj);
            Class cls = null;
            if (annotation != null) {
                kotlin.reflect.c a2 = kotlin.jvm.a.a(annotation);
                cls = null;
                if (a2 != null) {
                    cls = kotlin.jvm.a.a(a2);
                }
            }
            if (!p.a(cls, this.f36834a)) {
                return false;
            }
            List<Method> list = this.f36835b;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (Method method : list) {
                    Object obj2 = this.f36836c.get(method.getName());
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
                        z2 = p.a(obj2, invoke);
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

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(Object obj) {
            return Boolean.valueOf(a(obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0010��\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b$b.class */
    public static final class C0615b extends r implements Function0<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f36837a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0615b(Map map) {
            super(0);
            this.f36837a = map;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Integer invoke() {
            int i = 0;
            for (Map.Entry entry : this.f36837a.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                i += (value instanceof boolean[] ? Arrays.hashCode((boolean[]) value) : value instanceof char[] ? Arrays.hashCode((char[]) value) : value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value instanceof short[] ? Arrays.hashCode((short[]) value) : value instanceof int[] ? Arrays.hashCode((int[]) value) : value instanceof float[] ? Arrays.hashCode((float[]) value) : value instanceof long[] ? Arrays.hashCode((long[]) value) : value instanceof double[] ? Arrays.hashCode((double[]) value) : value instanceof Object[] ? Arrays.hashCode((Object[]) value) : value.hashCode()) ^ (str.hashCode() * 127);
            }
            return Integer.valueOf(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0003*\u00020\u00012\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0005\u001a\n \u0002*\u0004\u0018\u00010\u00060\u00062,\u0010\u0007\u001a(\u0012\f\u0012\n \u0002*\u0004\u0018\u00010\u00010\u0001 \u0002*\u0014\u0012\u000e\b\u0001\u0012\n \u0002*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\b0\bH\n¢\u0006\u0004\b\t\u0010\n"}, d2 = {"<anonymous>", "", "kotlin.jvm.PlatformType", "T", "<anonymous parameter 0>", "method", "Ljava/lang/reflect/Method;", "args", "", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b$c.class */
    public static final class c implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f36838a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Lazy f36839b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ KProperty f36840c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Lazy f36841d;
        final /* synthetic */ KProperty e;
        final /* synthetic */ a f;
        final /* synthetic */ Map g;

        c(Class cls, Lazy lazy, KProperty kProperty, Lazy lazy2, KProperty kProperty2, a aVar, Map map) {
            this.f36838a = cls;
            this.f36839b = lazy;
            this.f36840c = kProperty;
            this.f36841d = lazy2;
            this.e = kProperty2;
            this.f = aVar;
            this.g = map;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            p.b(method, "method");
            String name = method.getName();
            if (name != null) {
                int hashCode = name.hashCode();
                if (hashCode != -1776922004) {
                    if (hashCode != 147696667) {
                        if (hashCode == 1444986633 && name.equals("annotationType")) {
                            return this.f36838a;
                        }
                    } else if (name.equals("hashCode")) {
                        return this.f36841d.a();
                    }
                } else if (name.equals("toString")) {
                    return this.f36839b.a();
                }
            }
            if (p.a((Object) name, (Object) "equals") && objArr != null && objArr.length == 1) {
                return Boolean.valueOf(this.f.a(i.f(objArr)));
            }
            if (this.g.containsKey(name)) {
                return this.g.get(name);
            }
            StringBuilder sb = new StringBuilder("Method is not supported: ");
            sb.append(method);
            sb.append(" (args: ");
            Object[] objArr2 = objArr;
            if (objArr == null) {
                objArr2 = new Object[0];
            }
            sb.append(i.i(objArr2));
            sb.append(')');
            throw new ab(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b$d.class */
    public static final class d extends r implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f36842a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f36843b;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\r\n��\n\u0002\u0010��\n��\n\u0002\u0010&\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00030\u0005H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "T", "", "entry", "", "", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/b$d$a.class */
        static final class a extends r implements Function1<Map.Entry<? extends String, ? extends Object>, CharSequence> {

            /* renamed from: a  reason: collision with root package name */
            public static final a f36844a = new a();

            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ CharSequence invoke(Map.Entry<? extends String, ? extends Object> entry) {
                Map.Entry<? extends String, ? extends Object> entry2 = entry;
                p.d(entry2, "entry");
                String str = (String) entry2.getKey();
                Object value = entry2.getValue();
                String arrays = value instanceof boolean[] ? Arrays.toString((boolean[]) value) : value instanceof char[] ? Arrays.toString((char[]) value) : value instanceof byte[] ? Arrays.toString((byte[]) value) : value instanceof short[] ? Arrays.toString((short[]) value) : value instanceof int[] ? Arrays.toString((int[]) value) : value instanceof float[] ? Arrays.toString((float[]) value) : value instanceof long[] ? Arrays.toString((long[]) value) : value instanceof double[] ? Arrays.toString((double[]) value) : value instanceof Object[] ? Arrays.toString((Object[]) value) : value.toString();
                return str + '=' + arrays;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Class cls, Map map) {
            super(0);
            this.f36842a = cls;
            this.f36843b = map;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ String invoke() {
            StringBuilder sb = new StringBuilder();
            sb.append('@');
            sb.append(this.f36842a.getCanonicalName());
            n.a(this.f36843b.entrySet(), sb, ", ", "(", ")", 0, null, a.f36844a, 48);
            String sb2 = sb.toString();
            p.b(sb2, "StringBuilder().apply(builderAction).toString()");
            return sb2;
        }
    }

    public static /* synthetic */ Object a(Class cls, Map map) {
        Set<String> keySet = map.keySet();
        ArrayList arrayList = new ArrayList(n.a(keySet, 10));
        for (String str : keySet) {
            arrayList.add(cls.getDeclaredMethod(str, new Class[0]));
        }
        return a(cls, map, arrayList);
    }

    public static final <T> T a(Class<T> annotationClass, Map<String, ? extends Object> values, List<Method> methods) {
        p.d(annotationClass, "annotationClass");
        p.d(values, "values");
        p.d(methods, "methods");
        a aVar = new a(annotationClass, methods, values);
        Class[] clsArr = {annotationClass};
        T t = (T) Proxy.newProxyInstance(annotationClass.getClassLoader(), clsArr, new c(annotationClass, h.a(new d(annotationClass, values)), null, h.a(new C0615b(values)), null, aVar, values));
        Objects.requireNonNull(t, "null cannot be cast to non-null type T");
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Object a(Object obj, Class<?> cls) {
        Object obj2;
        if (obj instanceof Class) {
            return null;
        }
        if (obj instanceof kotlin.reflect.c) {
            obj2 = kotlin.jvm.a.a((kotlin.reflect.c) obj);
        } else {
            obj2 = obj;
            if (obj instanceof Object[]) {
                obj2 = (Object[]) obj;
                if (obj2 instanceof Class[]) {
                    return null;
                }
                if (obj2 instanceof kotlin.reflect.c[]) {
                    Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.reflect.KClass<*>>");
                    kotlin.reflect.c[] cVarArr = (kotlin.reflect.c[]) obj;
                    ArrayList arrayList = new ArrayList(cVarArr.length);
                    for (kotlin.reflect.c cVar : cVarArr) {
                        arrayList.add(kotlin.jvm.a.a(cVar));
                    }
                    obj2 = arrayList.toArray(new Class[0]);
                    Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
        }
        if (cls.isInstance(obj2)) {
            return obj2;
        }
        return null;
    }
}
