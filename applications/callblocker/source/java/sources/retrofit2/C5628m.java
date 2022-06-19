package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import okhttp3.AbstractC5402ab;
import okhttp3.AbstractC5406ad;
import okhttp3.AbstractC5415e;
import okhttp3.C5541t;
import okhttp3.C5550x;
import retrofit2.AbstractC5587c;
import retrofit2.AbstractC5590e;
import retrofit2.C5556a;
import retrofit2.C5631n;
/* renamed from: retrofit2.m */
/* loaded from: classes-dex2jar.jar:retrofit2/m.class */
public final class C5628m {

    /* renamed from: a */
    final AbstractC5415e.AbstractC5416a f23323a;

    /* renamed from: b */
    final C5541t f23324b;

    /* renamed from: c */
    final List<AbstractC5590e.AbstractC5591a> f23325c;

    /* renamed from: d */
    final List<AbstractC5587c.AbstractC5588a> f23326d;
    @Nullable

    /* renamed from: e */
    final Executor f23327e;

    /* renamed from: f */
    final boolean f23328f;

    /* renamed from: g */
    private final Map<Method, C5631n<?, ?>> f23329g = new ConcurrentHashMap();

    /* renamed from: retrofit2.m$a */
    /* loaded from: classes-dex2jar.jar:retrofit2/m$a.class */
    public static final class C5630a {

        /* renamed from: a */
        private final C5621j f23333a;
        @Nullable

        /* renamed from: b */
        private AbstractC5415e.AbstractC5416a f23334b;

        /* renamed from: c */
        private C5541t f23335c;

        /* renamed from: d */
        private final List<AbstractC5590e.AbstractC5591a> f23336d;

        /* renamed from: e */
        private final List<AbstractC5587c.AbstractC5588a> f23337e;
        @Nullable

        /* renamed from: f */
        private Executor f23338f;

        /* renamed from: g */
        private boolean f23339g;

        public C5630a() {
            this(C5621j.m77a());
        }

        C5630a(C5621j c5621j) {
            this.f23336d = new ArrayList();
            this.f23337e = new ArrayList();
            this.f23333a = c5621j;
        }

        /* renamed from: a */
        public C5630a m39a(String str) {
            C5633o.m15a(str, "baseUrl == null");
            C5541t m249e = C5541t.m249e(str);
            if (m249e == null) {
                throw new IllegalArgumentException("Illegal URL: " + str);
            }
            return m37a(m249e);
        }

        /* renamed from: a */
        public C5630a m38a(AbstractC5415e.AbstractC5416a abstractC5416a) {
            this.f23334b = (AbstractC5415e.AbstractC5416a) C5633o.m15a(abstractC5416a, "factory == null");
            return this;
        }

        /* renamed from: a */
        public C5630a m37a(C5541t c5541t) {
            C5633o.m15a(c5541t, "baseUrl == null");
            List<String> m244j = c5541t.m244j();
            if (!"".equals(m244j.get(m244j.size() - 1))) {
                throw new IllegalArgumentException("baseUrl must end in /: " + c5541t);
            }
            this.f23335c = c5541t;
            return this;
        }

        /* renamed from: a */
        public C5630a m36a(C5550x c5550x) {
            return m38a((AbstractC5415e.AbstractC5416a) C5633o.m15a(c5550x, "client == null"));
        }

        /* renamed from: a */
        public C5628m m40a() {
            if (this.f23335c == null) {
                throw new IllegalStateException("Base URL required.");
            }
            AbstractC5415e.AbstractC5416a abstractC5416a = this.f23334b;
            C5550x c5550x = abstractC5416a;
            if (abstractC5416a == null) {
                c5550x = new C5550x();
            }
            Executor executor = this.f23338f;
            Executor executor2 = executor;
            if (executor == null) {
                executor2 = this.f23333a.mo74b();
            }
            ArrayList arrayList = new ArrayList(this.f23337e);
            arrayList.add(this.f23333a.mo75a(executor2));
            ArrayList arrayList2 = new ArrayList(this.f23336d.size() + 1);
            arrayList2.add(new C5556a());
            arrayList2.addAll(this.f23336d);
            return new C5628m(c5550x, this.f23335c, Collections.unmodifiableList(arrayList2), Collections.unmodifiableList(arrayList), executor2, this.f23339g);
        }
    }

    C5628m(AbstractC5415e.AbstractC5416a abstractC5416a, C5541t c5541t, List<AbstractC5590e.AbstractC5591a> list, List<AbstractC5587c.AbstractC5588a> list2, @Nullable Executor executor, boolean z) {
        this.f23323a = abstractC5416a;
        this.f23324b = c5541t;
        this.f23325c = list;
        this.f23326d = list2;
        this.f23327e = executor;
        this.f23328f = z;
    }

    /* renamed from: b */
    private void m43b(Class<?> cls) {
        Method[] declaredMethods;
        C5621j m77a = C5621j.m77a();
        for (Method method : cls.getDeclaredMethods()) {
            if (!m77a.mo73a(method)) {
                m50a(method);
            }
        }
    }

    /* renamed from: a */
    public <T> T m51a(final Class<T> cls) {
        C5633o.m16a((Class) cls);
        if (this.f23328f) {
            m43b(cls);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: retrofit2.m.1

            /* renamed from: c */
            private final C5621j f23332c = C5621j.m77a();

            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, @Nullable Object[] objArr) {
                Object m32a;
                if (method.getDeclaringClass() == Object.class) {
                    m32a = method.invoke(this, objArr);
                } else if (this.f23332c.mo73a(method)) {
                    m32a = this.f23332c.mo72a(method, cls, obj, objArr);
                } else {
                    C5631n<?, ?> m50a = C5628m.this.m50a(method);
                    m32a = m50a.m32a(new C5600h(m50a, objArr));
                }
                return m32a;
            }
        });
    }

    /* renamed from: a */
    public AbstractC5415e.AbstractC5416a m52a() {
        return this.f23323a;
    }

    /* renamed from: a */
    public AbstractC5587c<?, ?> m49a(Type type, Annotation[] annotationArr) {
        return m47a((AbstractC5587c.AbstractC5588a) null, type, annotationArr);
    }

    /* renamed from: a */
    public AbstractC5587c<?, ?> m47a(@Nullable AbstractC5587c.AbstractC5588a abstractC5588a, Type type, Annotation[] annotationArr) {
        C5633o.m15a(type, "returnType == null");
        C5633o.m15a(annotationArr, "annotations == null");
        int indexOf = this.f23326d.indexOf(abstractC5588a) + 1;
        int size = this.f23326d.size();
        for (int i = indexOf; i < size; i++) {
            AbstractC5587c<?, ?> mo108a = this.f23326d.get(i).mo108a(type, annotationArr, this);
            if (mo108a != null) {
                return mo108a;
            }
        }
        StringBuilder append = new StringBuilder("Could not locate call adapter for ").append(type).append(".\n");
        if (abstractC5588a != null) {
            append.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                append.append("\n   * ").append(this.f23326d.get(i2).getClass().getName());
            }
            append.append('\n');
        }
        append.append("  Tried:");
        int size2 = this.f23326d.size();
        while (indexOf < size2) {
            append.append("\n   * ").append(this.f23326d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(append.toString());
    }

    /* renamed from: a */
    public <T> AbstractC5590e<T, AbstractC5402ab> m48a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return m45a(null, type, annotationArr, annotationArr2);
    }

    /* renamed from: a */
    public <T> AbstractC5590e<AbstractC5406ad, T> m46a(@Nullable AbstractC5590e.AbstractC5591a abstractC5591a, Type type, Annotation[] annotationArr) {
        C5633o.m15a(type, "type == null");
        C5633o.m15a(annotationArr, "annotations == null");
        int indexOf = this.f23325c.indexOf(abstractC5591a) + 1;
        int size = this.f23325c.size();
        for (int i = indexOf; i < size; i++) {
            AbstractC5590e<AbstractC5406ad, T> abstractC5590e = (AbstractC5590e<AbstractC5406ad, T>) this.f23325c.get(i).mo112a(type, annotationArr, this);
            if (abstractC5590e != null) {
                return abstractC5590e;
            }
        }
        StringBuilder append = new StringBuilder("Could not locate ResponseBody converter for ").append(type).append(".\n");
        if (abstractC5591a != null) {
            append.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                append.append("\n   * ").append(this.f23325c.get(i2).getClass().getName());
            }
            append.append('\n');
        }
        append.append("  Tried:");
        int size2 = this.f23325c.size();
        while (indexOf < size2) {
            append.append("\n   * ").append(this.f23325c.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(append.toString());
    }

    /* renamed from: a */
    public <T> AbstractC5590e<T, AbstractC5402ab> m45a(@Nullable AbstractC5590e.AbstractC5591a abstractC5591a, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        C5633o.m15a(type, "type == null");
        C5633o.m15a(annotationArr, "parameterAnnotations == null");
        C5633o.m15a(annotationArr2, "methodAnnotations == null");
        int indexOf = this.f23325c.indexOf(abstractC5591a) + 1;
        int size = this.f23325c.size();
        for (int i = indexOf; i < size; i++) {
            AbstractC5590e<T, AbstractC5402ab> abstractC5590e = (AbstractC5590e<T, AbstractC5402ab>) this.f23325c.get(i).mo111a(type, annotationArr, annotationArr2, this);
            if (abstractC5590e != null) {
                return abstractC5590e;
            }
        }
        StringBuilder append = new StringBuilder("Could not locate RequestBody converter for ").append(type).append(".\n");
        if (abstractC5591a != null) {
            append.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                append.append("\n   * ").append(this.f23325c.get(i2).getClass().getName());
            }
            append.append('\n');
        }
        append.append("  Tried:");
        int size2 = this.f23325c.size();
        while (indexOf < size2) {
            append.append("\n   * ").append(this.f23325c.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(append.toString());
    }

    /* renamed from: a */
    C5631n<?, ?> m50a(Method method) {
        C5631n c5631n = this.f23329g.get(method);
        if (c5631n == null) {
            synchronized (this.f23329g) {
                C5631n c5631n2 = this.f23329g.get(method);
                c5631n = c5631n2;
                if (c5631n2 == null) {
                    c5631n = new C5631n.C5632a(this, method).m30a();
                    this.f23329g.put(method, c5631n);
                }
            }
        }
        return c5631n;
    }

    /* renamed from: b */
    public C5541t m44b() {
        return this.f23324b;
    }

    /* renamed from: b */
    public <T> AbstractC5590e<AbstractC5406ad, T> m42b(Type type, Annotation[] annotationArr) {
        return m46a((AbstractC5590e.AbstractC5591a) null, type, annotationArr);
    }

    /* renamed from: c */
    public <T> AbstractC5590e<T, String> m41c(Type type, Annotation[] annotationArr) {
        C5556a.C5560d c5560d;
        C5633o.m15a(type, "type == null");
        C5633o.m15a(annotationArr, "annotations == null");
        int size = this.f23325c.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c5560d = C5556a.C5560d.f23250a;
                break;
            }
            AbstractC5590e<?, String> m110b = this.f23325c.get(i).m110b(type, annotationArr, this);
            if (m110b != null) {
                c5560d = m110b;
                break;
            }
            i++;
        }
        return c5560d;
    }
}
