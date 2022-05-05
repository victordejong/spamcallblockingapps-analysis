package p655o;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import p655o.AbstractC15236c;
import p655o.AbstractC15246f;
import p655o.C15228a;
/* renamed from: o.s */
/* loaded from: classes3-dex2jar.jar:o/s.class */
public final class C15300s {

    /* renamed from: a */
    public final Map<Method, AbstractC15303t<?>> f33403a = new ConcurrentHashMap();

    /* renamed from: b */
    public final Call.Factory f33404b;

    /* renamed from: c */
    public final HttpUrl f33405c;

    /* renamed from: d */
    public final List<AbstractC15246f.AbstractC15247a> f33406d;

    /* renamed from: e */
    public final List<AbstractC15236c.AbstractC15237a> f33407e;
    @Nullable

    /* renamed from: f */
    public final Executor f33408f;

    /* renamed from: g */
    public final boolean f33409g;

    /* renamed from: o.s$a */
    /* loaded from: classes3-dex2jar.jar:o/s$a.class */
    public class C15301a implements InvocationHandler {

        /* renamed from: a */
        public final C15291o f33410a = C15291o.m126f();

        /* renamed from: b */
        public final Object[] f33411b = new Object[0];

        /* renamed from: c */
        public final /* synthetic */ Class f33412c;

        public C15301a(Class cls) {
            this.f33412c = cls;
        }

        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(Object obj, Method method, @Nullable Object[] objArr) throws Throwable {
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (this.f33410a.mo123a(method)) {
                return this.f33410a.mo122a(method, this.f33412c, obj, objArr);
            }
            AbstractC15303t<?> a = C15300s.this.m86a(method);
            if (objArr == null) {
                objArr = this.f33411b;
            }
            return a.mo70a(objArr);
        }
    }

    /* renamed from: o.s$b */
    /* loaded from: classes3-dex2jar.jar:o/s$b.class */
    public static final class C15302b {

        /* renamed from: a */
        public final C15291o f33414a;
        @Nullable

        /* renamed from: b */
        public Call.Factory f33415b;
        @Nullable

        /* renamed from: c */
        public HttpUrl f33416c;

        /* renamed from: d */
        public final List<AbstractC15246f.AbstractC15247a> f33417d;

        /* renamed from: e */
        public final List<AbstractC15236c.AbstractC15237a> f33418e;
        @Nullable

        /* renamed from: f */
        public Executor f33419f;

        /* renamed from: g */
        public boolean f33420g;

        public C15302b() {
            this(C15291o.m126f());
        }

        public C15302b(C15291o oVar) {
            this.f33417d = new ArrayList();
            this.f33418e = new ArrayList();
            this.f33414a = oVar;
        }

        public C15302b(C15300s sVar) {
            this.f33417d = new ArrayList();
            this.f33418e = new ArrayList();
            this.f33414a = C15291o.m126f();
            this.f33415b = sVar.f33404b;
            this.f33416c = sVar.f33405c;
            int size = sVar.f33406d.size();
            int d = this.f33414a.mo119d();
            for (int i = 1; i < size - d; i++) {
                this.f33417d.add(sVar.f33406d.get(i));
            }
            int size2 = sVar.f33407e.size();
            int a = this.f33414a.mo124a();
            for (int i2 = 0; i2 < size2 - a; i2++) {
                this.f33418e.add(sVar.f33407e.get(i2));
            }
            this.f33419f = sVar.f33408f;
            this.f33420g = sVar.f33409g;
        }

        /* renamed from: a */
        public C15302b m76a(String str) {
            C15306w.m66a(str, "baseUrl == null");
            m73a(HttpUrl.get(str));
            return this;
        }

        /* renamed from: a */
        public C15302b m75a(AbstractC15246f.AbstractC15247a aVar) {
            List<AbstractC15246f.AbstractC15247a> list = this.f33417d;
            C15306w.m66a(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        /* renamed from: a */
        public C15302b m74a(Call.Factory factory) {
            C15306w.m66a(factory, "factory == null");
            this.f33415b = factory;
            return this;
        }

        /* renamed from: a */
        public C15302b m73a(HttpUrl httpUrl) {
            C15306w.m66a(httpUrl, "baseUrl == null");
            List<String> pathSegments = httpUrl.pathSegments();
            if ("".equals(pathSegments.get(pathSegments.size() - 1))) {
                this.f33416c = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + httpUrl);
        }

        /* renamed from: a */
        public C15302b m72a(OkHttpClient okHttpClient) {
            C15306w.m66a(okHttpClient, "client == null");
            m74a((Call.Factory) okHttpClient);
            return this;
        }

        /* renamed from: a */
        public C15300s m77a() {
            if (this.f33416c != null) {
                Call.Factory factory = this.f33415b;
                Call.Factory factory2 = factory;
                if (factory == null) {
                    factory2 = new OkHttpClient();
                }
                Executor executor = this.f33419f;
                Executor executor2 = executor;
                if (executor == null) {
                    executor2 = this.f33414a.mo125b();
                }
                ArrayList arrayList = new ArrayList(this.f33418e);
                arrayList.addAll(this.f33414a.mo121a(executor2));
                ArrayList arrayList2 = new ArrayList(this.f33417d.size() + 1 + this.f33414a.mo119d());
                arrayList2.add(new C15228a());
                arrayList2.addAll(this.f33417d);
                arrayList2.addAll(this.f33414a.mo120c());
                return new C15300s(factory2, this.f33416c, Collections.unmodifiableList(arrayList2), Collections.unmodifiableList(arrayList), executor2, this.f33420g);
            }
            throw new IllegalStateException("Base URL required.");
        }
    }

    public C15300s(Call.Factory factory, HttpUrl httpUrl, List<AbstractC15246f.AbstractC15247a> list, List<AbstractC15236c.AbstractC15237a> list2, @Nullable Executor executor, boolean z) {
        this.f33404b = factory;
        this.f33405c = httpUrl;
        this.f33406d = list;
        this.f33407e = list2;
        this.f33408f = executor;
        this.f33409g = z;
    }

    /* renamed from: a */
    public <T> T m87a(Class<T> cls) {
        C15306w.m67a((Class) cls);
        if (this.f33409g) {
            m80b(cls);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new C15301a(cls));
    }

    /* renamed from: a */
    public AbstractC15236c<?, ?> m85a(Type type, Annotation[] annotationArr) {
        return m83a((AbstractC15236c.AbstractC15237a) null, type, annotationArr);
    }

    /* renamed from: a */
    public AbstractC15236c<?, ?> m83a(@Nullable AbstractC15236c.AbstractC15237a aVar, Type type, Annotation[] annotationArr) {
        C15306w.m66a(type, "returnType == null");
        C15306w.m66a(annotationArr, "annotations == null");
        int indexOf = this.f33407e.indexOf(aVar) + 1;
        int size = this.f33407e.size();
        for (int i = indexOf; i < size; i++) {
            AbstractC15236c<?, ?> a = this.f33407e.get(i).mo154a(type, annotationArr, this);
            if (a != null) {
                return a;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f33407e.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f33407e.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f33407e.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public <T> AbstractC15246f<T, RequestBody> m84a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return m81a(null, type, annotationArr, annotationArr2);
    }

    /* renamed from: a */
    public <T> AbstractC15246f<ResponseBody, T> m82a(@Nullable AbstractC15246f.AbstractC15247a aVar, Type type, Annotation[] annotationArr) {
        C15306w.m66a(type, "type == null");
        C15306w.m66a(annotationArr, "annotations == null");
        int indexOf = this.f33406d.indexOf(aVar) + 1;
        int size = this.f33406d.size();
        for (int i = indexOf; i < size; i++) {
            AbstractC15246f<ResponseBody, T> fVar = (AbstractC15246f<ResponseBody, T>) this.f33406d.get(i).mo44a(type, annotationArr, this);
            if (fVar != null) {
                return fVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f33406d.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f33406d.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f33406d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public <T> AbstractC15246f<T, RequestBody> m81a(@Nullable AbstractC15246f.AbstractC15247a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        C15306w.m66a(type, "type == null");
        C15306w.m66a(annotationArr, "parameterAnnotations == null");
        C15306w.m66a(annotationArr2, "methodAnnotations == null");
        int indexOf = this.f33406d.indexOf(aVar) + 1;
        int size = this.f33406d.size();
        for (int i = indexOf; i < size; i++) {
            AbstractC15246f<T, RequestBody> fVar = (AbstractC15246f<T, RequestBody>) this.f33406d.get(i).mo43a(type, annotationArr, annotationArr2, this);
            if (fVar != null) {
                return fVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f33406d.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f33406d.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f33406d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public C15302b m88a() {
        return new C15302b(this);
    }

    /* renamed from: a */
    public AbstractC15303t<?> m86a(Method method) {
        AbstractC15303t<?> tVar;
        AbstractC15303t<?> tVar2 = this.f33403a.get(method);
        if (tVar2 != null) {
            return tVar2;
        }
        synchronized (this.f33403a) {
            AbstractC15303t<?> tVar3 = this.f33403a.get(method);
            tVar = tVar3;
            if (tVar3 == null) {
                tVar = AbstractC15303t.m71a(this, method);
                this.f33403a.put(method, tVar);
            }
        }
        return tVar;
    }

    /* renamed from: b */
    public <T> AbstractC15246f<ResponseBody, T> m79b(Type type, Annotation[] annotationArr) {
        return m82a((AbstractC15246f.AbstractC15247a) null, type, annotationArr);
    }

    /* renamed from: b */
    public final void m80b(Class<?> cls) {
        Method[] declaredMethods;
        C15291o f = C15291o.m126f();
        for (Method method : cls.getDeclaredMethods()) {
            if (!f.mo123a(method) && !Modifier.isStatic(method.getModifiers())) {
                m86a(method);
            }
        }
    }

    /* renamed from: c */
    public <T> AbstractC15246f<T, String> m78c(Type type, Annotation[] annotationArr) {
        C15306w.m66a(type, "type == null");
        C15306w.m66a(annotationArr, "annotations == null");
        int size = this.f33406d.size();
        for (int i = 0; i < size; i++) {
            AbstractC15246f<T, String> fVar = (AbstractC15246f<T, String>) this.f33406d.get(i).m155b(type, annotationArr, this);
            if (fVar != null) {
                return fVar;
            }
        }
        return C15228a.C15232d.f33249a;
    }
}
