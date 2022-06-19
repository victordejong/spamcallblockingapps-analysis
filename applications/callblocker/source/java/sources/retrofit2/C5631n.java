package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.AbstractC5402ab;
import okhttp3.AbstractC5406ad;
import okhttp3.AbstractC5415e;
import okhttp3.C5404ac;
import okhttp3.C5539s;
import okhttp3.C5541t;
import okhttp3.C5546v;
import okhttp3.C5547w;
import retrofit2.AbstractC5605i;
import retrofit2.p198a.AbstractC5562a;
import retrofit2.p198a.AbstractC5563b;
import retrofit2.p198a.AbstractC5564c;
import retrofit2.p198a.AbstractC5565d;
import retrofit2.p198a.AbstractC5566e;
import retrofit2.p198a.AbstractC5567f;
import retrofit2.p198a.AbstractC5568g;
import retrofit2.p198a.AbstractC5569h;
import retrofit2.p198a.AbstractC5570i;
import retrofit2.p198a.AbstractC5571j;
import retrofit2.p198a.AbstractC5572k;
import retrofit2.p198a.AbstractC5573l;
import retrofit2.p198a.AbstractC5574m;
import retrofit2.p198a.AbstractC5575n;
import retrofit2.p198a.AbstractC5576o;
import retrofit2.p198a.AbstractC5577p;
import retrofit2.p198a.AbstractC5578q;
import retrofit2.p198a.AbstractC5579r;
import retrofit2.p198a.AbstractC5580s;
import retrofit2.p198a.AbstractC5581t;
import retrofit2.p198a.AbstractC5582u;
import retrofit2.p198a.AbstractC5583v;
import retrofit2.p198a.AbstractC5585x;
/* renamed from: retrofit2.n */
/* loaded from: classes-dex2jar.jar:retrofit2/n.class */
public final class C5631n<R, T> {

    /* renamed from: a */
    static final Pattern f23340a = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

    /* renamed from: b */
    static final Pattern f23341b = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

    /* renamed from: c */
    private final AbstractC5415e.AbstractC5416a f23342c;

    /* renamed from: d */
    private final AbstractC5587c<R, T> f23343d;

    /* renamed from: e */
    private final C5541t f23344e;

    /* renamed from: f */
    private final AbstractC5590e<AbstractC5406ad, R> f23345f;

    /* renamed from: g */
    private final String f23346g;

    /* renamed from: h */
    private final String f23347h;

    /* renamed from: i */
    private final C5539s f23348i;

    /* renamed from: j */
    private final C5546v f23349j;

    /* renamed from: k */
    private final boolean f23350k;

    /* renamed from: l */
    private final boolean f23351l;

    /* renamed from: m */
    private final boolean f23352m;

    /* renamed from: n */
    private final AbstractC5605i<?>[] f23353n;

    /* renamed from: retrofit2.n$a */
    /* loaded from: classes-dex2jar.jar:retrofit2/n$a.class */
    public static final class C5632a<T, R> {

        /* renamed from: a */
        final C5628m f23354a;

        /* renamed from: b */
        final Method f23355b;

        /* renamed from: c */
        final Annotation[] f23356c;

        /* renamed from: d */
        final Annotation[][] f23357d;

        /* renamed from: e */
        final Type[] f23358e;

        /* renamed from: f */
        Type f23359f;

        /* renamed from: g */
        boolean f23360g;

        /* renamed from: h */
        boolean f23361h;

        /* renamed from: i */
        boolean f23362i;

        /* renamed from: j */
        boolean f23363j;

        /* renamed from: k */
        boolean f23364k;

        /* renamed from: l */
        boolean f23365l;

        /* renamed from: m */
        String f23366m;

        /* renamed from: n */
        boolean f23367n;

        /* renamed from: o */
        boolean f23368o;

        /* renamed from: p */
        boolean f23369p;

        /* renamed from: q */
        String f23370q;

        /* renamed from: r */
        C5539s f23371r;

        /* renamed from: s */
        C5546v f23372s;

        /* renamed from: t */
        Set<String> f23373t;

        /* renamed from: u */
        AbstractC5605i<?>[] f23374u;

        /* renamed from: v */
        AbstractC5590e<AbstractC5406ad, T> f23375v;

        /* renamed from: w */
        AbstractC5587c<T, R> f23376w;

        public C5632a(C5628m c5628m, Method method) {
            this.f23354a = c5628m;
            this.f23355b = method;
            this.f23356c = method.getAnnotations();
            this.f23358e = method.getGenericParameterTypes();
            this.f23357d = method.getParameterAnnotations();
        }

        /* renamed from: a */
        private RuntimeException m28a(int i, String str, Object... objArr) {
            return m24a(str + " (parameter #" + (i + 1) + ")", objArr);
        }

        /* renamed from: a */
        private RuntimeException m24a(String str, Object... objArr) {
            return m22a((Throwable) null, str, objArr);
        }

        /* renamed from: a */
        private RuntimeException m23a(Throwable th, int i, String str, Object... objArr) {
            return m22a(th, str + " (parameter #" + (i + 1) + ")", objArr);
        }

        /* renamed from: a */
        private RuntimeException m22a(Throwable th, String str, Object... objArr) {
            return new IllegalArgumentException(String.format(str, objArr) + "\n    for method " + this.f23355b.getDeclaringClass().getSimpleName() + "." + this.f23355b.getName(), th);
        }

        /* renamed from: a */
        private C5539s m20a(String[] strArr) {
            C5539s.C5540a c5540a = new C5539s.C5540a();
            for (String str : strArr) {
                int indexOf = str.indexOf(58);
                if (indexOf == -1 || indexOf == 0 || indexOf == str.length() - 1) {
                    throw m24a("@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String substring = str.substring(0, indexOf);
                String trim = str.substring(indexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(substring)) {
                    C5546v m209a = C5546v.m209a(trim);
                    if (m209a == null) {
                        throw m24a("Malformed content type: %s", trim);
                    }
                    this.f23372s = m209a;
                } else {
                    c5540a.m274a(substring, trim);
                }
            }
            return c5540a.m276a();
        }

        /* renamed from: a */
        private AbstractC5605i<?> m27a(int i, Type type, Annotation[] annotationArr) {
            AbstractC5605i<?> abstractC5605i = null;
            for (Annotation annotation : annotationArr) {
                AbstractC5605i<?> m26a = m26a(i, type, annotationArr, annotation);
                if (m26a != null) {
                    if (abstractC5605i != null) {
                        throw m28a(i, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                    }
                    abstractC5605i = m26a;
                }
            }
            if (abstractC5605i == null) {
                throw m28a(i, "No Retrofit annotation found.", new Object[0]);
            }
            return abstractC5605i;
        }

        /* renamed from: a */
        private AbstractC5605i<?> m26a(int i, Type type, Annotation[] annotationArr, Annotation annotation) {
            AbstractC5605i abstractC5605i;
            if (annotation instanceof AbstractC5585x) {
                if (this.f23365l) {
                    throw m28a(i, "Multiple @Url method annotations found.", new Object[0]);
                }
                if (this.f23363j) {
                    throw m28a(i, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f23364k) {
                    throw m28a(i, "A @Url parameter must not come after a @Query", new Object[0]);
                }
                if (this.f23370q != null) {
                    throw m28a(i, "@Url cannot be used with @%s URL", this.f23366m);
                }
                this.f23365l = true;
                if (type != C5541t.class && type != String.class && type != URI.class && (!(type instanceof Class) || !"android.net.Uri".equals(((Class) type).getName()))) {
                    throw m28a(i, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                }
                abstractC5605i = new AbstractC5605i.C5620m();
            } else if (annotation instanceof AbstractC5580s) {
                if (this.f23364k) {
                    throw m28a(i, "A @Path parameter must not come after a @Query.", new Object[0]);
                }
                if (this.f23365l) {
                    throw m28a(i, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f23370q == null) {
                    throw m28a(i, "@Path can only be used with relative url on @%s", this.f23366m);
                }
                this.f23363j = true;
                AbstractC5580s abstractC5580s = (AbstractC5580s) annotation;
                String m120a = abstractC5580s.m120a();
                m29a(i, m120a);
                abstractC5605i = new AbstractC5605i.C5615h(m120a, this.f23354a.m41c(type, annotationArr), abstractC5580s.m119b());
            } else if (annotation instanceof AbstractC5581t) {
                AbstractC5581t abstractC5581t = (AbstractC5581t) annotation;
                String m118a = abstractC5581t.m118a();
                boolean m117b = abstractC5581t.m117b();
                Class<?> m13a = C5633o.m13a(type);
                this.f23364k = true;
                if (!Iterable.class.isAssignableFrom(m13a)) {
                    abstractC5605i = m13a.isArray() ? new AbstractC5605i.C5616i(m118a, this.f23354a.m41c(C5631n.m35a(m13a.getComponentType()), annotationArr), m117b).m85b() : new AbstractC5605i.C5616i(m118a, this.f23354a.m41c(type, annotationArr), m117b);
                } else if (!(type instanceof ParameterizedType)) {
                    throw m28a(i, m13a.getSimpleName() + " must include generic type (e.g., " + m13a.getSimpleName() + "<String>)", new Object[0]);
                } else {
                    abstractC5605i = new AbstractC5605i.C5616i(m118a, this.f23354a.m41c(C5633o.m17a(0, (ParameterizedType) type), annotationArr), m117b).m86a();
                }
            } else if (annotation instanceof AbstractC5583v) {
                boolean m115a = ((AbstractC5583v) annotation).m115a();
                Class<?> m13a2 = C5633o.m13a(type);
                this.f23364k = true;
                if (!Iterable.class.isAssignableFrom(m13a2)) {
                    abstractC5605i = m13a2.isArray() ? new AbstractC5605i.C5618k(this.f23354a.m41c(C5631n.m35a(m13a2.getComponentType()), annotationArr), m115a).m85b() : new AbstractC5605i.C5618k(this.f23354a.m41c(type, annotationArr), m115a);
                } else if (!(type instanceof ParameterizedType)) {
                    throw m28a(i, m13a2.getSimpleName() + " must include generic type (e.g., " + m13a2.getSimpleName() + "<String>)", new Object[0]);
                } else {
                    abstractC5605i = new AbstractC5605i.C5618k(this.f23354a.m41c(C5633o.m17a(0, (ParameterizedType) type), annotationArr), m115a).m86a();
                }
            } else if (annotation instanceof AbstractC5582u) {
                Class<?> m13a3 = C5633o.m13a(type);
                if (!Map.class.isAssignableFrom(m13a3)) {
                    throw m28a(i, "@QueryMap parameter type must be Map.", new Object[0]);
                }
                Type m3b = C5633o.m3b(type, m13a3, Map.class);
                if (!(m3b instanceof ParameterizedType)) {
                    throw m28a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType = (ParameterizedType) m3b;
                Type m17a = C5633o.m17a(0, parameterizedType);
                if (String.class != m17a) {
                    throw m28a(i, "@QueryMap keys must be of type String: " + m17a, new Object[0]);
                }
                abstractC5605i = new AbstractC5605i.C5617j(this.f23354a.m41c(C5633o.m17a(1, parameterizedType), annotationArr), ((AbstractC5582u) annotation).m116a());
            } else if (annotation instanceof AbstractC5570i) {
                String m129a = ((AbstractC5570i) annotation).m129a();
                Class<?> m13a4 = C5633o.m13a(type);
                if (!Iterable.class.isAssignableFrom(m13a4)) {
                    abstractC5605i = m13a4.isArray() ? new AbstractC5605i.C5611d(m129a, this.f23354a.m41c(C5631n.m35a(m13a4.getComponentType()), annotationArr)).m85b() : new AbstractC5605i.C5611d(m129a, this.f23354a.m41c(type, annotationArr));
                } else if (!(type instanceof ParameterizedType)) {
                    throw m28a(i, m13a4.getSimpleName() + " must include generic type (e.g., " + m13a4.getSimpleName() + "<String>)", new Object[0]);
                } else {
                    abstractC5605i = new AbstractC5605i.C5611d(m129a, this.f23354a.m41c(C5633o.m17a(0, (ParameterizedType) type), annotationArr)).m86a();
                }
            } else if (annotation instanceof AbstractC5571j) {
                Class<?> m13a5 = C5633o.m13a(type);
                if (!Map.class.isAssignableFrom(m13a5)) {
                    throw m28a(i, "@HeaderMap parameter type must be Map.", new Object[0]);
                }
                Type m3b2 = C5633o.m3b(type, m13a5, Map.class);
                if (!(m3b2 instanceof ParameterizedType)) {
                    throw m28a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) m3b2;
                Type m17a2 = C5633o.m17a(0, parameterizedType2);
                if (String.class != m17a2) {
                    throw m28a(i, "@HeaderMap keys must be of type String: " + m17a2, new Object[0]);
                }
                abstractC5605i = new AbstractC5605i.C5612e(this.f23354a.m41c(C5633o.m17a(1, parameterizedType2), annotationArr));
            } else if (annotation instanceof AbstractC5564c) {
                if (!this.f23368o) {
                    throw m28a(i, "@Field parameters can only be used with form encoding.", new Object[0]);
                }
                AbstractC5564c abstractC5564c = (AbstractC5564c) annotation;
                String m140a = abstractC5564c.m140a();
                boolean m138b = abstractC5564c.m138b();
                this.f23360g = true;
                Class<?> m13a6 = C5633o.m13a(type);
                if (!Iterable.class.isAssignableFrom(m13a6)) {
                    abstractC5605i = m13a6.isArray() ? new AbstractC5605i.C5609b(m140a, this.f23354a.m41c(C5631n.m35a(m13a6.getComponentType()), annotationArr), m138b).m85b() : new AbstractC5605i.C5609b(m140a, this.f23354a.m41c(type, annotationArr), m138b);
                } else if (!(type instanceof ParameterizedType)) {
                    throw m28a(i, m13a6.getSimpleName() + " must include generic type (e.g., " + m13a6.getSimpleName() + "<String>)", new Object[0]);
                } else {
                    abstractC5605i = new AbstractC5605i.C5609b(m140a, this.f23354a.m41c(C5633o.m17a(0, (ParameterizedType) type), annotationArr), m138b).m86a();
                }
            } else if (annotation instanceof AbstractC5565d) {
                if (!this.f23368o) {
                    throw m28a(i, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                }
                Class<?> m13a7 = C5633o.m13a(type);
                if (!Map.class.isAssignableFrom(m13a7)) {
                    throw m28a(i, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                Type m3b3 = C5633o.m3b(type, m13a7, Map.class);
                if (!(m3b3 instanceof ParameterizedType)) {
                    throw m28a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType3 = (ParameterizedType) m3b3;
                Type m17a3 = C5633o.m17a(0, parameterizedType3);
                if (String.class != m17a3) {
                    throw m28a(i, "@FieldMap keys must be of type String: " + m17a3, new Object[0]);
                }
                AbstractC5590e<T, String> m41c = this.f23354a.m41c(C5633o.m17a(1, parameterizedType3), annotationArr);
                this.f23360g = true;
                abstractC5605i = new AbstractC5605i.C5610c(m41c, ((AbstractC5565d) annotation).m137a());
            } else if (annotation instanceof AbstractC5578q) {
                if (!this.f23369p) {
                    throw m28a(i, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                }
                AbstractC5578q abstractC5578q = (AbstractC5578q) annotation;
                this.f23361h = true;
                String m123a = abstractC5578q.m123a();
                Class<?> m13a8 = C5633o.m13a(type);
                if (!m123a.isEmpty()) {
                    C5539s m281a = C5539s.m281a("Content-Disposition", "form-data; name=\"" + m123a + "\"", "Content-Transfer-Encoding", abstractC5578q.m122b());
                    if (Iterable.class.isAssignableFrom(m13a8)) {
                        if (!(type instanceof ParameterizedType)) {
                            throw m28a(i, m13a8.getSimpleName() + " must include generic type (e.g., " + m13a8.getSimpleName() + "<String>)", new Object[0]);
                        }
                        Type m17a4 = C5633o.m17a(0, (ParameterizedType) type);
                        if (C5547w.C5549b.class.isAssignableFrom(C5633o.m13a(m17a4))) {
                            throw m28a(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        }
                        abstractC5605i = new AbstractC5605i.C5613f(m281a, this.f23354a.m48a(m17a4, annotationArr, this.f23356c)).m86a();
                    } else if (m13a8.isArray()) {
                        Class<?> m35a = C5631n.m35a(m13a8.getComponentType());
                        if (C5547w.C5549b.class.isAssignableFrom(m35a)) {
                            throw m28a(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        }
                        abstractC5605i = new AbstractC5605i.C5613f(m281a, this.f23354a.m48a(m35a, annotationArr, this.f23356c)).m85b();
                    } else if (C5547w.C5549b.class.isAssignableFrom(m13a8)) {
                        throw m28a(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    } else {
                        abstractC5605i = new AbstractC5605i.C5613f(m281a, this.f23354a.m48a(type, annotationArr, this.f23356c));
                    }
                } else if (Iterable.class.isAssignableFrom(m13a8)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw m28a(i, m13a8.getSimpleName() + " must include generic type (e.g., " + m13a8.getSimpleName() + "<String>)", new Object[0]);
                    }
                    if (!C5547w.C5549b.class.isAssignableFrom(C5633o.m13a(C5633o.m17a(0, (ParameterizedType) type)))) {
                        throw m28a(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    abstractC5605i = AbstractC5605i.C5619l.f23304a.m86a();
                } else if (m13a8.isArray()) {
                    if (!C5547w.C5549b.class.isAssignableFrom(m13a8.getComponentType())) {
                        throw m28a(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    abstractC5605i = AbstractC5605i.C5619l.f23304a.m85b();
                } else if (!C5547w.C5549b.class.isAssignableFrom(m13a8)) {
                    throw m28a(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                } else {
                    abstractC5605i = AbstractC5605i.C5619l.f23304a;
                }
            } else if (annotation instanceof AbstractC5579r) {
                if (!this.f23369p) {
                    throw m28a(i, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                }
                this.f23361h = true;
                Class<?> m13a9 = C5633o.m13a(type);
                if (!Map.class.isAssignableFrom(m13a9)) {
                    throw m28a(i, "@PartMap parameter type must be Map.", new Object[0]);
                }
                Type m3b4 = C5633o.m3b(type, m13a9, Map.class);
                if (!(m3b4 instanceof ParameterizedType)) {
                    throw m28a(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType4 = (ParameterizedType) m3b4;
                Type m17a5 = C5633o.m17a(0, parameterizedType4);
                if (String.class != m17a5) {
                    throw m28a(i, "@PartMap keys must be of type String: " + m17a5, new Object[0]);
                }
                Type m17a6 = C5633o.m17a(1, parameterizedType4);
                if (C5547w.C5549b.class.isAssignableFrom(C5633o.m13a(m17a6))) {
                    throw m28a(i, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                }
                abstractC5605i = new AbstractC5605i.C5614g(this.f23354a.m48a(m17a6, annotationArr, this.f23356c), ((AbstractC5579r) annotation).m121a());
            } else if (!(annotation instanceof AbstractC5562a)) {
                abstractC5605i = null;
            } else if (this.f23368o || this.f23369p) {
                throw m28a(i, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
            } else {
                if (this.f23362i) {
                    throw m28a(i, "Multiple @Body method annotations found.", new Object[0]);
                }
                try {
                    AbstractC5590e<T, AbstractC5402ab> m48a = this.f23354a.m48a(type, annotationArr, this.f23356c);
                    this.f23362i = true;
                    abstractC5605i = new AbstractC5605i.C5608a(m48a);
                } catch (RuntimeException e) {
                    throw m23a(e, i, "Unable to create @Body converter for %s", type);
                }
            }
            return abstractC5605i;
        }

        /* renamed from: a */
        private void m29a(int i, String str) {
            if (!C5631n.f23341b.matcher(str).matches()) {
                throw m28a(i, "@Path parameter name must match %s. Found: %s", C5631n.f23340a.pattern(), str);
            }
            if (this.f23373t.contains(str)) {
                return;
            }
            throw m28a(i, "URL \"%s\" does not contain \"{%s}\".", this.f23370q, str);
        }

        /* renamed from: a */
        private void m25a(String str, String str2, boolean z) {
            if (this.f23366m != null) {
                throw m24a("Only one HTTP method is allowed. Found: %s and %s.", this.f23366m, str);
            }
            this.f23366m = str;
            this.f23367n = z;
            if (str2.isEmpty()) {
                return;
            }
            int indexOf = str2.indexOf(63);
            if (indexOf != -1 && indexOf < str2.length() - 1) {
                String substring = str2.substring(indexOf + 1);
                if (C5631n.f23340a.matcher(substring).find()) {
                    throw m24a("URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
                }
            }
            this.f23370q = str2;
            this.f23373t = C5631n.m34a(str2);
        }

        /* renamed from: a */
        private void m21a(Annotation annotation) {
            if (annotation instanceof AbstractC5563b) {
                m25a("DELETE", ((AbstractC5563b) annotation).m142a(), false);
            } else if (annotation instanceof AbstractC5567f) {
                m25a("GET", ((AbstractC5567f) annotation).m134a(), false);
            } else if (annotation instanceof AbstractC5568g) {
                m25a("HEAD", ((AbstractC5568g) annotation).m133a(), false);
                if (Void.class.equals(this.f23359f)) {
                    return;
                }
                throw m24a("HEAD method must use Void as response type.", new Object[0]);
            } else if (annotation instanceof AbstractC5575n) {
                m25a("PATCH", ((AbstractC5575n) annotation).m126a(), true);
            } else if (annotation instanceof AbstractC5576o) {
                m25a("POST", ((AbstractC5576o) annotation).m125a(), true);
            } else if (annotation instanceof AbstractC5577p) {
                m25a("PUT", ((AbstractC5577p) annotation).m124a(), true);
            } else if (annotation instanceof AbstractC5574m) {
                m25a("OPTIONS", ((AbstractC5574m) annotation).m127a(), false);
            } else if (annotation instanceof AbstractC5569h) {
                AbstractC5569h abstractC5569h = (AbstractC5569h) annotation;
                m25a(abstractC5569h.m132a(), abstractC5569h.m131b(), abstractC5569h.m130c());
            } else if (annotation instanceof AbstractC5572k) {
                String[] m128a = ((AbstractC5572k) annotation).m128a();
                if (m128a.length == 0) {
                    throw m24a("@Headers annotation is empty.", new Object[0]);
                }
                this.f23371r = m20a(m128a);
            } else if (annotation instanceof AbstractC5573l) {
                if (this.f23368o) {
                    throw m24a("Only one encoding annotation is allowed.", new Object[0]);
                }
                this.f23369p = true;
            } else if (!(annotation instanceof AbstractC5566e)) {
            } else {
                if (this.f23369p) {
                    throw m24a("Only one encoding annotation is allowed.", new Object[0]);
                }
                this.f23368o = true;
            }
        }

        /* renamed from: b */
        private AbstractC5587c<T, R> m19b() {
            Type genericReturnType = this.f23355b.getGenericReturnType();
            if (C5633o.m1d(genericReturnType)) {
                throw m24a("Method return type must not include a type variable or wildcard: %s", genericReturnType);
            }
            if (genericReturnType == Void.TYPE) {
                throw m24a("Service methods cannot return void.", new Object[0]);
            }
            try {
                return (AbstractC5587c<T, R>) this.f23354a.m49a(genericReturnType, this.f23355b.getAnnotations());
            } catch (RuntimeException e) {
                throw m22a(e, "Unable to create call adapter for %s", genericReturnType);
            }
        }

        /* renamed from: c */
        private AbstractC5590e<AbstractC5406ad, T> m18c() {
            try {
                return this.f23354a.m42b(this.f23359f, this.f23355b.getAnnotations());
            } catch (RuntimeException e) {
                throw m22a(e, "Unable to create converter for %s", this.f23359f);
            }
        }

        /* renamed from: a */
        public C5631n m30a() {
            this.f23376w = m19b();
            this.f23359f = this.f23376w.mo107a();
            if (this.f23359f == C5627l.class || this.f23359f == C5404ac.class) {
                throw m24a("'" + C5633o.m13a(this.f23359f).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
            }
            this.f23375v = m18c();
            for (Annotation annotation : this.f23356c) {
                m21a(annotation);
            }
            if (this.f23366m == null) {
                throw m24a("HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
            }
            if (!this.f23367n) {
                if (this.f23369p) {
                    throw m24a("Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
                if (this.f23368o) {
                    throw m24a("FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
            }
            int length = this.f23357d.length;
            this.f23374u = new AbstractC5605i[length];
            for (int i = 0; i < length; i++) {
                Type type = this.f23358e[i];
                if (C5633o.m1d(type)) {
                    throw m28a(i, "Parameter type must not include a type variable or wildcard: %s", type);
                }
                Annotation[] annotationArr = this.f23357d[i];
                if (annotationArr == null) {
                    throw m28a(i, "No Retrofit annotation found.", new Object[0]);
                }
                this.f23374u[i] = m27a(i, type, annotationArr);
            }
            if (this.f23370q == null && !this.f23365l) {
                throw m24a("Missing either @%s URL or @Url parameter.", this.f23366m);
            }
            if (!this.f23368o && !this.f23369p && !this.f23367n && this.f23362i) {
                throw m24a("Non-body HTTP method cannot contain @Body.", new Object[0]);
            }
            if (this.f23368o && !this.f23360g) {
                throw m24a("Form-encoded method must contain at least one @Field.", new Object[0]);
            }
            if (this.f23369p && !this.f23361h) {
                throw m24a("Multipart method must contain at least one @Part.", new Object[0]);
            }
            return new C5631n(this);
        }
    }

    C5631n(C5632a<R, T> c5632a) {
        this.f23342c = c5632a.f23354a.m52a();
        this.f23343d = c5632a.f23376w;
        this.f23344e = c5632a.f23354a.m44b();
        this.f23345f = c5632a.f23375v;
        this.f23346g = c5632a.f23366m;
        this.f23347h = c5632a.f23370q;
        this.f23348i = c5632a.f23371r;
        this.f23349j = c5632a.f23372s;
        this.f23350k = c5632a.f23367n;
        this.f23351l = c5632a.f23368o;
        this.f23352m = c5632a.f23369p;
        this.f23353n = c5632a.f23374u;
    }

    /* renamed from: a */
    static Class<?> m35a(Class<?> cls) {
        Class<?> cls2;
        if (Boolean.TYPE == cls) {
            cls2 = Boolean.class;
        } else if (Byte.TYPE == cls) {
            cls2 = Byte.class;
        } else if (Character.TYPE == cls) {
            cls2 = Character.class;
        } else if (Double.TYPE == cls) {
            cls2 = Double.class;
        } else if (Float.TYPE == cls) {
            cls2 = Float.class;
        } else if (Integer.TYPE == cls) {
            cls2 = Integer.class;
        } else if (Long.TYPE == cls) {
            cls2 = Long.class;
        } else {
            cls2 = cls;
            if (Short.TYPE == cls) {
                cls2 = Short.class;
            }
        }
        return cls2;
    }

    /* renamed from: a */
    static Set<String> m34a(String str) {
        Matcher matcher = f23340a.matcher(str);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (matcher.find()) {
            linkedHashSet.add(matcher.group(1));
        }
        return linkedHashSet;
    }

    /* renamed from: a */
    public R m33a(AbstractC5406ad abstractC5406ad) {
        return this.f23345f.mo113a(abstractC5406ad);
    }

    /* renamed from: a */
    public T m32a(AbstractC5586b<R> abstractC5586b) {
        return this.f23343d.mo106a(abstractC5586b);
    }

    /* renamed from: a */
    public AbstractC5415e m31a(@Nullable Object... objArr) {
        C5625k c5625k = new C5625k(this.f23346g, this.f23344e, this.f23347h, this.f23348i, this.f23349j, this.f23350k, this.f23351l, this.f23352m);
        AbstractC5605i<?>[] abstractC5605iArr = this.f23353n;
        int length = objArr != null ? objArr.length : 0;
        if (length != abstractC5605iArr.length) {
            throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + abstractC5605iArr.length + ")");
        }
        for (int i = 0; i < length; i++) {
            abstractC5605iArr[i].mo78a(c5625k, objArr[i]);
        }
        return this.f23342c.mo199a(c5625k.m71a());
    }
}
