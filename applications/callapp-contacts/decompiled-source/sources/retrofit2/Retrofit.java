package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import retrofit2.a;
import retrofit2.b;
import retrofit2.b.f;
import retrofit2.b.g;
import retrofit2.b.h;
import retrofit2.b.k;
import retrofit2.b.l;
import retrofit2.b.m;
import retrofit2.b.n;
import retrofit2.b.p;
import retrofit2.e;
import retrofit2.g;
import retrofit2.o;
import retrofit2.s;
/* loaded from: classes5-dex2jar.jar:retrofit2/Retrofit.class */
public final class Retrofit {

    /* renamed from: a  reason: collision with root package name */
    final Call.Factory f39407a;

    /* renamed from: b  reason: collision with root package name */
    final HttpUrl f39408b;

    /* renamed from: c  reason: collision with root package name */
    final List<e.a> f39409c;

    /* renamed from: d  reason: collision with root package name */
    final List<b.a> f39410d;
    final Executor e;
    final boolean f;
    private final Map<Method, p<?>> g = new ConcurrentHashMap();

    /* loaded from: classes5-dex2jar.jar:retrofit2/Retrofit$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final m f39415a;

        /* renamed from: b  reason: collision with root package name */
        private Call.Factory f39416b;

        /* renamed from: c  reason: collision with root package name */
        private HttpUrl f39417c;

        /* renamed from: d  reason: collision with root package name */
        private final List<e.a> f39418d;
        private final List<b.a> e;
        private Executor f;
        private boolean g;

        public a() {
            this(m.a());
        }

        a(Retrofit retrofit) {
            this.f39418d = new ArrayList();
            this.e = new ArrayList();
            m a2 = m.a();
            this.f39415a = a2;
            this.f39416b = retrofit.f39407a;
            this.f39417c = retrofit.f39408b;
            int size = retrofit.f39409c.size();
            int d2 = a2.d();
            int i = 1;
            for (int i2 = 1; i2 < size - d2; i2++) {
                this.f39418d.add(retrofit.f39409c.get(i2));
            }
            int size2 = retrofit.f39410d.size();
            i = this.f39415a.f39528a ? 2 : i;
            for (int i3 = 0; i3 < size2 - i; i3++) {
                this.e.add(retrofit.f39410d.get(i3));
            }
            this.f = retrofit.e;
            this.g = retrofit.f;
        }

        a(m mVar) {
            this.f39418d = new ArrayList();
            this.e = new ArrayList();
            this.f39415a = mVar;
        }

        private a a(Call.Factory factory) {
            Objects.requireNonNull(factory, "factory == null");
            this.f39416b = factory;
            return this;
        }

        private a a(HttpUrl httpUrl) {
            Objects.requireNonNull(httpUrl, "baseUrl == null");
            List<String> pathSegments = httpUrl.pathSegments();
            if ("".equals(pathSegments.get(pathSegments.size() - 1))) {
                this.f39417c = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: ".concat(String.valueOf(httpUrl)));
        }

        public final a a(String str) {
            Objects.requireNonNull(str, "baseUrl == null");
            return a(HttpUrl.get(str));
        }

        public final a a(OkHttpClient okHttpClient) {
            Objects.requireNonNull(okHttpClient, "client == null");
            return a((Call.Factory) okHttpClient);
        }

        public final a a(e.a aVar) {
            List<e.a> list = this.f39418d;
            Objects.requireNonNull(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        public final Retrofit a() {
            if (this.f39417c != null) {
                Call.Factory factory = this.f39416b;
                Call.Factory factory2 = factory;
                if (factory == null) {
                    factory2 = new OkHttpClient();
                }
                Executor executor = this.f;
                Executor executor2 = executor;
                if (executor == null) {
                    executor2 = this.f39415a.b();
                }
                ArrayList arrayList = new ArrayList(this.e);
                arrayList.addAll(this.f39415a.a(executor2));
                ArrayList arrayList2 = new ArrayList(this.f39418d.size() + 1 + this.f39415a.d());
                arrayList2.add(new retrofit2.a());
                arrayList2.addAll(this.f39418d);
                arrayList2.addAll(this.f39415a.c());
                return new Retrofit(factory2, this.f39417c, Collections.unmodifiableList(arrayList2), Collections.unmodifiableList(arrayList), executor2, this.g);
            }
            throw new IllegalStateException("Base URL required.");
        }
    }

    Retrofit(Call.Factory factory, HttpUrl httpUrl, List<e.a> list, List<b.a> list2, Executor executor, boolean z) {
        this.f39407a = factory;
        this.f39408b = httpUrl;
        this.f39409c = list;
        this.f39410d = list2;
        this.e = executor;
        this.f = z;
    }

    private <T> e<T, RequestBody> b(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "parameterAnnotations == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        int indexOf = this.f39409c.indexOf(null) + 1;
        int size = this.f39409c.size();
        for (int i = indexOf; i < size; i++) {
            e<T, RequestBody> eVar = (e<T, RequestBody>) this.f39409c.get(i).a(type, annotationArr, annotationArr2, this);
            if (eVar != null) {
                return eVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        sb.append("  Tried:");
        int size2 = this.f39409c.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f39409c.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    private void b(Class<?> cls) {
        Method[] declaredMethods;
        if (cls.isInterface()) {
            ArrayDeque arrayDeque = new ArrayDeque(1);
            arrayDeque.add(cls);
            while (!arrayDeque.isEmpty()) {
                Class<?> cls2 = (Class) arrayDeque.removeFirst();
                if (cls2.getTypeParameters().length != 0) {
                    StringBuilder sb = new StringBuilder("Type parameters are unsupported on ");
                    sb.append(cls2.getName());
                    if (cls2 != cls) {
                        sb.append(" which is an interface of ");
                        sb.append(cls.getName());
                    }
                    throw new IllegalArgumentException(sb.toString());
                }
                Collections.addAll(arrayDeque, cls2.getInterfaces());
            }
            if (this.f) {
                m a2 = m.a();
                for (Method method : cls.getDeclaredMethods()) {
                    if (!a2.a(method) && !Modifier.isStatic(method.getModifiers())) {
                        a(method);
                    }
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("API declarations must be interfaces.");
    }

    public final <T> T a(final Class<T> cls) {
        b(cls);
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: retrofit2.Retrofit.1

            /* renamed from: c  reason: collision with root package name */
            private final m f39413c = m.a();

            /* renamed from: d  reason: collision with root package name */
            private final Object[] f39414d = new Object[0];

            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                if (method.getDeclaringClass() == Object.class) {
                    return method.invoke(this, objArr);
                }
                if (this.f39413c.a(method)) {
                    return this.f39413c.a(method, cls, obj, objArr);
                }
                p<?> a2 = Retrofit.this.a(method);
                if (objArr == null) {
                    objArr = this.f39414d;
                }
                return a2.a(objArr);
            }
        });
    }

    public final <T> e<ResponseBody, T> a(Type type, Annotation[] annotationArr) {
        return b(type, annotationArr);
    }

    public final <T> e<T, RequestBody> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return b(type, annotationArr, annotationArr2);
    }

    final p<?> a(Method method) {
        p<?> pVar;
        Annotation[] annotationArr;
        boolean z;
        Type type;
        Annotation[] annotationArr2;
        p<?> pVar2 = this.g.get(method);
        if (pVar2 != null) {
            return pVar2;
        }
        synchronized (this.g) {
            p<?> pVar3 = this.g.get(method);
            pVar = pVar3;
            if (pVar3 == null) {
                o.a aVar = new o.a(this, method);
                for (Annotation annotation : aVar.f39543c) {
                    if (annotation instanceof retrofit2.b.b) {
                        aVar.a("DELETE", ((retrofit2.b.b) annotation).a(), false);
                    } else if (annotation instanceof f) {
                        aVar.a("GET", ((f) annotation).a(), false);
                    } else if (annotation instanceof g) {
                        aVar.a("HEAD", ((g) annotation).a(), false);
                    } else if (annotation instanceof n) {
                        aVar.a("PATCH", ((n) annotation).a(), true);
                    } else if (annotation instanceof retrofit2.b.o) {
                        aVar.a("POST", ((retrofit2.b.o) annotation).a(), true);
                    } else if (annotation instanceof p) {
                        aVar.a("PUT", ((p) annotation).a(), true);
                    } else if (annotation instanceof m) {
                        aVar.a("OPTIONS", ((m) annotation).a(), false);
                    } else if (annotation instanceof h) {
                        h hVar = (h) annotation;
                        aVar.a(hVar.a(), hVar.b(), hVar.c());
                    } else if (annotation instanceof k) {
                        String[] a2 = ((k) annotation).a();
                        if (a2.length != 0) {
                            aVar.s = aVar.a(a2);
                        } else {
                            throw s.a(aVar.f39542b, "@Headers annotation is empty.", new Object[0]);
                        }
                    } else if (annotation instanceof l) {
                        if (!aVar.p) {
                            aVar.q = true;
                        } else {
                            throw s.a(aVar.f39542b, "Only one encoding annotation is allowed.", new Object[0]);
                        }
                    } else if (!(annotation instanceof retrofit2.b.e)) {
                        continue;
                    } else if (!aVar.q) {
                        aVar.p = true;
                    } else {
                        throw s.a(aVar.f39542b, "Only one encoding annotation is allowed.", new Object[0]);
                    }
                }
                if (aVar.n != null) {
                    if (!aVar.o) {
                        if (aVar.q) {
                            throw s.a(aVar.f39542b, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                        } else if (aVar.p) {
                            throw s.a(aVar.f39542b, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                        }
                    }
                    int length = aVar.f39544d.length;
                    aVar.v = new l[length];
                    int i = 0;
                    while (i < length) {
                        aVar.v[i] = aVar.a(i, aVar.e[i], aVar.f39544d[i], i == length - 1);
                        i++;
                    }
                    if (aVar.r == null && !aVar.m) {
                        throw s.a(aVar.f39542b, "Missing either @%s URL or @Url parameter.", aVar.n);
                    }
                    if (!aVar.p && !aVar.q && !aVar.o && aVar.h) {
                        throw s.a(aVar.f39542b, "Non-body HTTP method cannot contain @Body.", new Object[0]);
                    }
                    if (aVar.p && !aVar.f) {
                        throw s.a(aVar.f39542b, "Form-encoded method must contain at least one @Field.", new Object[0]);
                    }
                    if (aVar.q && !aVar.g) {
                        throw s.a(aVar.f39542b, "Multipart method must contain at least one @Part.", new Object[0]);
                    }
                    o oVar = new o(aVar);
                    Type genericReturnType = method.getGenericReturnType();
                    if (s.d(genericReturnType)) {
                        throw s.a(method, "Method return type must not include a type variable or wildcard: %s", genericReturnType);
                    } else if (genericReturnType != Void.TYPE) {
                        boolean z2 = oVar.f39538b;
                        Annotation[] annotations = method.getAnnotations();
                        if (z2) {
                            Type[] genericParameterTypes = method.getGenericParameterTypes();
                            Type a3 = s.a((ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]);
                            if (s.a(a3) != Response.class || !(a3 instanceof ParameterizedType)) {
                                z = false;
                            } else {
                                a3 = s.a(0, (ParameterizedType) a3);
                                z = true;
                            }
                            type = new s.b(null, Call.class, a3);
                            annotationArr2 = r.a(annotations);
                        } else {
                            type = method.getGenericReturnType();
                            z = false;
                            annotationArr2 = annotations;
                        }
                        b a4 = g.a(this, method, type, annotationArr2);
                        Type a5 = a4.a();
                        if (a5 == Response.class) {
                            throw s.a(method, "'" + s.a(a5).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
                        } else if (a5 != Response.class) {
                            if (oVar.f39537a.equals("HEAD") && !Void.class.equals(a5)) {
                                throw s.a(method, "HEAD method must use Void as response type.", new Object[0]);
                            }
                            e a6 = g.a(this, method, a5);
                            Call.Factory factory = this.f39407a;
                            pVar = !z2 ? new g.a<>(oVar, factory, a6, a4) : z ? new g.c<>(oVar, factory, a6, a4) : new g.b<>(oVar, factory, a6, a4, false);
                            this.g.put(method, pVar);
                        } else {
                            throw s.a(method, "Response must include generic type (e.g., Response<String>)", new Object[0]);
                        }
                    } else {
                        throw s.a(method, "Service methods cannot return void.", new Object[0]);
                    }
                } else {
                    throw s.a(aVar.f39542b, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
                }
            }
        }
        return pVar;
    }

    public final <T> e<ResponseBody, T> b(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int indexOf = this.f39409c.indexOf(null) + 1;
        int size = this.f39409c.size();
        for (int i = indexOf; i < size; i++) {
            e<ResponseBody, T> eVar = (e<ResponseBody, T>) this.f39409c.get(i).a(type, annotationArr, this);
            if (eVar != null) {
                return eVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        sb.append("  Tried:");
        int size2 = this.f39409c.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f39409c.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public final <T> e<T, String> c(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int size = this.f39409c.size();
        for (int i = 0; i < size; i++) {
            this.f39409c.get(i);
        }
        return a.d.f39430a;
    }
}
