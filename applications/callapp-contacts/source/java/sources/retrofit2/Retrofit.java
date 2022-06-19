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
import retrofit2.AbstractC21040b;
import retrofit2.AbstractC21074e;
import retrofit2.AbstractC21080g;
import retrofit2.C21030a;
import retrofit2.C21124o;
import retrofit2.C21129s;
import retrofit2.p606b.AbstractC21043b;
import retrofit2.p606b.AbstractC21046e;
import retrofit2.p606b.AbstractC21047f;
import retrofit2.p606b.AbstractC21048g;
import retrofit2.p606b.AbstractC21049h;
import retrofit2.p606b.AbstractC21052k;
import retrofit2.p606b.AbstractC21053l;
import retrofit2.p606b.AbstractC21054m;
import retrofit2.p606b.AbstractC21055n;
import retrofit2.p606b.AbstractC21056o;
import retrofit2.p606b.AbstractC21057p;
/* loaded from: classes5-dex2jar.jar:retrofit2/Retrofit.class */
public final class Retrofit {

    /* renamed from: a */
    final Call.Factory f67641a;

    /* renamed from: b */
    final HttpUrl f67642b;

    /* renamed from: c */
    final List<AbstractC21074e.AbstractC21075a> f67643c;

    /* renamed from: d */
    final List<AbstractC21040b.AbstractC21041a> f67644d;

    /* renamed from: e */
    final Executor f67645e;

    /* renamed from: f */
    final boolean f67646f;

    /* renamed from: g */
    private final Map<Method, AbstractC21126p<?>> f67647g = new ConcurrentHashMap();

    /* renamed from: retrofit2.Retrofit$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/Retrofit$a.class */
    public static final class C21029a {

        /* renamed from: a */
        private final C21119m f67652a;

        /* renamed from: b */
        private Call.Factory f67653b;

        /* renamed from: c */
        private HttpUrl f67654c;

        /* renamed from: d */
        private final List<AbstractC21074e.AbstractC21075a> f67655d;

        /* renamed from: e */
        private final List<AbstractC21040b.AbstractC21041a> f67656e;

        /* renamed from: f */
        private Executor f67657f;

        /* renamed from: g */
        private boolean f67658g;

        public C21029a() {
            this(C21119m.m40a());
        }

        C21029a(Retrofit retrofit) {
            this.f67655d = new ArrayList();
            this.f67656e = new ArrayList();
            C21119m m40a = C21119m.m40a();
            this.f67652a = m40a;
            this.f67653b = retrofit.f67641a;
            this.f67654c = retrofit.f67642b;
            int size = retrofit.f67643c.size();
            int m36d = m40a.m36d();
            for (int i = 1; i < size - m36d; i++) {
                this.f67655d.add(retrofit.f67643c.get(i));
            }
            int size2 = retrofit.f67644d.size();
            int i2 = this.f67652a.f67773a ? 2 : 1;
            for (int i3 = 0; i3 < size2 - i2; i3++) {
                this.f67656e.add(retrofit.f67644d.get(i3));
            }
            this.f67657f = retrofit.f67645e;
            this.f67658g = retrofit.f67646f;
        }

        C21029a(C21119m c21119m) {
            this.f67655d = new ArrayList();
            this.f67656e = new ArrayList();
            this.f67652a = c21119m;
        }

        /* renamed from: a */
        private C21029a m99a(Call.Factory factory) {
            Objects.requireNonNull(factory, "factory == null");
            this.f67653b = factory;
            return this;
        }

        /* renamed from: a */
        private C21029a m98a(HttpUrl httpUrl) {
            Objects.requireNonNull(httpUrl, "baseUrl == null");
            List<String> pathSegments = httpUrl.pathSegments();
            if ("".equals(pathSegments.get(pathSegments.size() - 1))) {
                this.f67654c = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: ".concat(String.valueOf(httpUrl)));
        }

        /* renamed from: a */
        public final C21029a m100a(String str) {
            Objects.requireNonNull(str, "baseUrl == null");
            return m98a(HttpUrl.get(str));
        }

        /* renamed from: a */
        public final C21029a m97a(OkHttpClient okHttpClient) {
            Objects.requireNonNull(okHttpClient, "client == null");
            return m99a((Call.Factory) okHttpClient);
        }

        /* renamed from: a */
        public final C21029a m96a(AbstractC21074e.AbstractC21075a abstractC21075a) {
            List<AbstractC21074e.AbstractC21075a> list = this.f67655d;
            Objects.requireNonNull(abstractC21075a, "factory == null");
            list.add(abstractC21075a);
            return this;
        }

        /* renamed from: a */
        public final Retrofit m101a() {
            if (this.f67654c != null) {
                Call.Factory factory = this.f67653b;
                OkHttpClient okHttpClient = factory;
                if (factory == null) {
                    okHttpClient = new OkHttpClient();
                }
                Executor executor = this.f67657f;
                Executor executor2 = executor;
                if (executor == null) {
                    executor2 = this.f67652a.mo33b();
                }
                ArrayList arrayList = new ArrayList(this.f67656e);
                arrayList.addAll(this.f67652a.m38a(executor2));
                ArrayList arrayList2 = new ArrayList(this.f67655d.size() + 1 + this.f67652a.m36d());
                arrayList2.add(new C21030a());
                arrayList2.addAll(this.f67655d);
                arrayList2.addAll(this.f67652a.m37c());
                return new Retrofit(okHttpClient, this.f67654c, Collections.unmodifiableList(arrayList2), Collections.unmodifiableList(arrayList), executor2, this.f67658g);
            }
            throw new IllegalStateException("Base URL required.");
        }
    }

    Retrofit(Call.Factory factory, HttpUrl httpUrl, List<AbstractC21074e.AbstractC21075a> list, List<AbstractC21040b.AbstractC21041a> list2, Executor executor, boolean z) {
        this.f67641a = factory;
        this.f67642b = httpUrl;
        this.f67643c = list;
        this.f67644d = list2;
        this.f67645e = executor;
        this.f67646f = z;
    }

    /* renamed from: b */
    private <T> AbstractC21074e<T, RequestBody> m103b(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "parameterAnnotations == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        int indexOf = this.f67643c.indexOf(null) + 1;
        int size = this.f67643c.size();
        for (int i = indexOf; i < size; i++) {
            AbstractC21074e<T, RequestBody> abstractC21074e = (AbstractC21074e<T, RequestBody>) this.f67643c.get(i).mo68a(type, annotationArr, annotationArr2, this);
            if (abstractC21074e != null) {
                return abstractC21074e;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        sb.append("  Tried:");
        int size2 = this.f67643c.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f67643c.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: b */
    private void m105b(Class<?> cls) {
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
            if (!this.f67646f) {
                return;
            }
            C21119m m40a = C21119m.m40a();
            for (Method method : cls.getDeclaredMethods()) {
                if (!m40a.m39a(method) && !Modifier.isStatic(method.getModifiers())) {
                    m108a(method);
                }
            }
            return;
        }
        throw new IllegalArgumentException("API declarations must be interfaces.");
    }

    /* renamed from: a */
    public final <T> T m109a(final Class<T> cls) {
        m105b(cls);
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: retrofit2.Retrofit.1

            /* renamed from: c */
            private final C21119m f67650c = C21119m.m40a();

            /* renamed from: d */
            private final Object[] f67651d = new Object[0];

            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                if (method.getDeclaringClass() == Object.class) {
                    return method.invoke(this, objArr);
                }
                if (this.f67650c.m39a(method)) {
                    return this.f67650c.mo34a(method, cls, obj, objArr);
                }
                AbstractC21126p<?> m108a = Retrofit.this.m108a(method);
                if (objArr == null) {
                    objArr = this.f67651d;
                }
                return m108a.mo18a(objArr);
            }
        });
    }

    /* renamed from: a */
    public final <T> AbstractC21074e<ResponseBody, T> m107a(Type type, Annotation[] annotationArr) {
        return m104b(type, annotationArr);
    }

    /* renamed from: a */
    public final <T> AbstractC21074e<T, RequestBody> m106a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return m103b(type, annotationArr, annotationArr2);
    }

    /* renamed from: a */
    final AbstractC21126p<?> m108a(Method method) {
        AbstractC21126p<?> abstractC21126p;
        Annotation[] annotationArr;
        boolean z;
        Type type;
        Annotation[] annotationArr2;
        AbstractC21126p<?> abstractC21126p2 = this.f67647g.get(method);
        if (abstractC21126p2 != null) {
            return abstractC21126p2;
        }
        synchronized (this.f67647g) {
            AbstractC21126p<?> abstractC21126p3 = this.f67647g.get(method);
            abstractC21126p = abstractC21126p3;
            if (abstractC21126p3 == null) {
                C21124o.C21125a c21125a = new C21124o.C21125a(this, method);
                for (Annotation annotation : c21125a.f67806c) {
                    if (annotation instanceof AbstractC21043b) {
                        c21125a.m20a("DELETE", ((AbstractC21043b) annotation).m92a(), false);
                    } else if (annotation instanceof AbstractC21047f) {
                        c21125a.m20a("GET", ((AbstractC21047f) annotation).m88a(), false);
                    } else if (annotation instanceof AbstractC21048g) {
                        c21125a.m20a("HEAD", ((AbstractC21048g) annotation).m87a(), false);
                    } else if (annotation instanceof AbstractC21055n) {
                        c21125a.m20a("PATCH", ((AbstractC21055n) annotation).m80a(), true);
                    } else if (annotation instanceof AbstractC21056o) {
                        c21125a.m20a("POST", ((AbstractC21056o) annotation).m79a(), true);
                    } else if (annotation instanceof AbstractC21057p) {
                        c21125a.m20a("PUT", ((AbstractC21057p) annotation).m78a(), true);
                    } else if (annotation instanceof AbstractC21054m) {
                        c21125a.m20a("OPTIONS", ((AbstractC21054m) annotation).m81a(), false);
                    } else if (annotation instanceof AbstractC21049h) {
                        AbstractC21049h abstractC21049h = (AbstractC21049h) annotation;
                        c21125a.m20a(abstractC21049h.m86a(), abstractC21049h.m85b(), abstractC21049h.m84c());
                    } else if (annotation instanceof AbstractC21052k) {
                        String[] m82a = ((AbstractC21052k) annotation).m82a();
                        if (m82a.length == 0) {
                            throw C21129s.m13a(c21125a.f67805b, "@Headers annotation is empty.", new Object[0]);
                        }
                        c21125a.f67822s = c21125a.m19a(m82a);
                    } else if (annotation instanceof AbstractC21053l) {
                        if (c21125a.f67819p) {
                            throw C21129s.m13a(c21125a.f67805b, "Only one encoding annotation is allowed.", new Object[0]);
                        }
                        c21125a.f67820q = true;
                    } else if (!(annotation instanceof AbstractC21046e)) {
                        continue;
                    } else if (c21125a.f67820q) {
                        throw C21129s.m13a(c21125a.f67805b, "Only one encoding annotation is allowed.", new Object[0]);
                    } else {
                        c21125a.f67819p = true;
                    }
                }
                if (c21125a.f67817n == null) {
                    throw C21129s.m13a(c21125a.f67805b, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
                }
                if (!c21125a.f67818o) {
                    if (c21125a.f67820q) {
                        throw C21129s.m13a(c21125a.f67805b, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                    if (c21125a.f67819p) {
                        throw C21129s.m13a(c21125a.f67805b, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                }
                int length = c21125a.f67807d.length;
                c21125a.f67825v = new AbstractC21101l[length];
                int i = 0;
                while (i < length) {
                    c21125a.f67825v[i] = c21125a.m23a(i, c21125a.f67808e[i], c21125a.f67807d[i], i == length - 1);
                    i++;
                }
                if (c21125a.f67821r == null && !c21125a.f67816m) {
                    throw C21129s.m13a(c21125a.f67805b, "Missing either @%s URL or @Url parameter.", c21125a.f67817n);
                }
                if (!c21125a.f67819p && !c21125a.f67820q && !c21125a.f67818o && c21125a.f67811h) {
                    throw C21129s.m13a(c21125a.f67805b, "Non-body HTTP method cannot contain @Body.", new Object[0]);
                }
                if (c21125a.f67819p && !c21125a.f67809f) {
                    throw C21129s.m13a(c21125a.f67805b, "Form-encoded method must contain at least one @Field.", new Object[0]);
                }
                if (c21125a.f67820q && !c21125a.f67810g) {
                    throw C21129s.m13a(c21125a.f67805b, "Multipart method must contain at least one @Part.", new Object[0]);
                }
                C21124o c21124o = new C21124o(c21125a);
                Type genericReturnType = method.getGenericReturnType();
                if (C21129s.m0d(genericReturnType)) {
                    throw C21129s.m13a(method, "Method return type must not include a type variable or wildcard: %s", genericReturnType);
                }
                if (genericReturnType == Void.TYPE) {
                    throw C21129s.m13a(method, "Service methods cannot return void.", new Object[0]);
                }
                boolean z2 = c21124o.f67792b;
                Annotation[] annotations = method.getAnnotations();
                if (z2) {
                    Type[] genericParameterTypes = method.getGenericParameterTypes();
                    Type m10a = C21129s.m10a((ParameterizedType) genericParameterTypes[genericParameterTypes.length - 1]);
                    if (C21129s.m9a(m10a) != Response.class || !(m10a instanceof ParameterizedType)) {
                        z = false;
                    } else {
                        m10a = C21129s.m16a(0, (ParameterizedType) m10a);
                        z = true;
                    }
                    type = new C21129s.C21131b(null, Call.class, m10a);
                    annotationArr2 = C21128r.m17a(annotations);
                } else {
                    type = method.getGenericReturnType();
                    z = false;
                    annotationArr2 = annotations;
                }
                AbstractC21040b m61a = AbstractC21080g.m61a(this, method, type, annotationArr2);
                Type mo66a = m61a.mo66a();
                if (mo66a == Response.class) {
                    throw C21129s.m13a(method, "'" + C21129s.m9a(mo66a).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
                } else if (mo66a == Response.class) {
                    throw C21129s.m13a(method, "Response must include generic type (e.g., Response<String>)", new Object[0]);
                } else {
                    if (c21124o.f67791a.equals("HEAD") && !Void.class.equals(mo66a)) {
                        throw C21129s.m13a(method, "HEAD method must use Void as response type.", new Object[0]);
                    }
                    AbstractC21074e m62a = AbstractC21080g.m62a(this, method, mo66a);
                    Call.Factory factory = this.f67641a;
                    abstractC21126p = !z2 ? new AbstractC21080g.C21081a<>(c21124o, factory, m62a, m61a) : z ? new AbstractC21080g.C21083c(c21124o, factory, m62a, m61a) : new AbstractC21080g.C21082b(c21124o, factory, m62a, m61a, false);
                    this.f67647g.put(method, abstractC21126p);
                }
            }
        }
        return abstractC21126p;
    }

    /* renamed from: b */
    public final <T> AbstractC21074e<ResponseBody, T> m104b(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int indexOf = this.f67643c.indexOf(null) + 1;
        int size = this.f67643c.size();
        for (int i = indexOf; i < size; i++) {
            AbstractC21074e<ResponseBody, T> abstractC21074e = (AbstractC21074e<ResponseBody, T>) this.f67643c.get(i).mo45a(type, annotationArr, this);
            if (abstractC21074e != null) {
                return abstractC21074e;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        sb.append("  Tried:");
        int size2 = this.f67643c.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f67643c.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: c */
    public final <T> AbstractC21074e<T, String> m102c(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int size = this.f67643c.size();
        for (int i = 0; i < size; i++) {
            this.f67643c.get(i);
        }
        return C21030a.C21034d.f67663a;
    }
}
