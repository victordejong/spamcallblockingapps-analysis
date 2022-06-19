package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.p521c.AbstractC18332d;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import retrofit2.AbstractC21101l;
import retrofit2.p606b.AbstractC21042a;
import retrofit2.p606b.AbstractC21044c;
import retrofit2.p606b.AbstractC21045d;
import retrofit2.p606b.AbstractC21050i;
import retrofit2.p606b.AbstractC21051j;
import retrofit2.p606b.AbstractC21058q;
import retrofit2.p606b.AbstractC21059r;
import retrofit2.p606b.AbstractC21060s;
import retrofit2.p606b.AbstractC21061t;
import retrofit2.p606b.AbstractC21062u;
import retrofit2.p606b.AbstractC21063v;
import retrofit2.p606b.AbstractC21065x;
import retrofit2.p606b.AbstractC21066y;
/* renamed from: retrofit2.o */
/* loaded from: classes5-dex2jar.jar:retrofit2/o.class */
public final class C21124o {

    /* renamed from: a */
    final String f67791a;

    /* renamed from: b */
    final boolean f67792b;

    /* renamed from: c */
    private final Method f67793c;

    /* renamed from: d */
    private final HttpUrl f67794d;

    /* renamed from: e */
    private final String f67795e;

    /* renamed from: f */
    private final Headers f67796f;

    /* renamed from: g */
    private final MediaType f67797g;

    /* renamed from: h */
    private final boolean f67798h;

    /* renamed from: i */
    private final boolean f67799i;

    /* renamed from: j */
    private final boolean f67800j;

    /* renamed from: k */
    private final AbstractC21101l<?>[] f67801k;

    /* renamed from: retrofit2.o$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/o$a.class */
    public static final class C21125a {

        /* renamed from: x */
        private static final Pattern f67802x = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

        /* renamed from: y */
        private static final Pattern f67803y = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

        /* renamed from: a */
        final Retrofit f67804a;

        /* renamed from: b */
        final Method f67805b;

        /* renamed from: c */
        final Annotation[] f67806c;

        /* renamed from: d */
        final Annotation[][] f67807d;

        /* renamed from: e */
        final Type[] f67808e;

        /* renamed from: f */
        boolean f67809f;

        /* renamed from: g */
        boolean f67810g;

        /* renamed from: h */
        boolean f67811h;

        /* renamed from: i */
        boolean f67812i;

        /* renamed from: j */
        boolean f67813j;

        /* renamed from: k */
        boolean f67814k;

        /* renamed from: l */
        boolean f67815l;

        /* renamed from: m */
        boolean f67816m;

        /* renamed from: n */
        String f67817n;

        /* renamed from: o */
        boolean f67818o;

        /* renamed from: p */
        boolean f67819p;

        /* renamed from: q */
        boolean f67820q;

        /* renamed from: r */
        String f67821r;

        /* renamed from: s */
        Headers f67822s;

        /* renamed from: t */
        MediaType f67823t;

        /* renamed from: u */
        Set<String> f67824u;

        /* renamed from: v */
        AbstractC21101l<?>[] f67825v;

        /* renamed from: w */
        boolean f67826w;

        public C21125a(Retrofit retrofit, Method method) {
            this.f67804a = retrofit;
            this.f67805b = method;
            this.f67806c = method.getAnnotations();
            this.f67808e = method.getGenericParameterTypes();
            this.f67807d = method.getParameterAnnotations();
        }

        /* renamed from: a */
        private static Class<?> m22a(Class<?> cls) {
            if (Boolean.TYPE == cls) {
                return Boolean.class;
            }
            if (Byte.TYPE == cls) {
                return Byte.class;
            }
            if (Character.TYPE == cls) {
                return Character.class;
            }
            if (Double.TYPE == cls) {
                return Double.class;
            }
            if (Float.TYPE == cls) {
                return Float.class;
            }
            if (Integer.TYPE == cls) {
                return Integer.class;
            }
            if (Long.TYPE == cls) {
                return Long.class;
            }
            Class<?> cls2 = cls;
            if (Short.TYPE == cls) {
                cls2 = Short.class;
            }
            return cls2;
        }

        /* renamed from: a */
        private static Set<String> m21a(String str) {
            Matcher matcher = f67802x.matcher(str);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            return linkedHashSet;
        }

        /* renamed from: a */
        private AbstractC21101l<?> m24a(int i, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof AbstractC21066y) {
                m25a(i, type);
                if (this.f67816m) {
                    throw C21129s.m14a(this.f67805b, i, "Multiple @Url method annotations found.", new Object[0]);
                }
                if (this.f67812i) {
                    throw C21129s.m14a(this.f67805b, i, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f67813j) {
                    throw C21129s.m14a(this.f67805b, i, "A @Url parameter must not come after a @Query.", new Object[0]);
                }
                if (this.f67814k) {
                    throw C21129s.m14a(this.f67805b, i, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                }
                if (this.f67815l) {
                    throw C21129s.m14a(this.f67805b, i, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                }
                if (this.f67821r != null) {
                    throw C21129s.m14a(this.f67805b, i, "@Url cannot be used with @%s URL", this.f67817n);
                }
                this.f67816m = true;
                if (type != HttpUrl.class && type != String.class && type != URI.class && (!(type instanceof Class) || !"android.net.Uri".equals(((Class) type).getName()))) {
                    throw C21129s.m14a(this.f67805b, i, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                }
                return new AbstractC21101l.C21117n(this.f67805b, i);
            } else if (annotation instanceof AbstractC21060s) {
                m25a(i, type);
                if (this.f67813j) {
                    throw C21129s.m14a(this.f67805b, i, "A @Path parameter must not come after a @Query.", new Object[0]);
                }
                if (this.f67814k) {
                    throw C21129s.m14a(this.f67805b, i, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                }
                if (this.f67815l) {
                    throw C21129s.m14a(this.f67805b, i, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                }
                if (this.f67816m) {
                    throw C21129s.m14a(this.f67805b, i, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f67821r == null) {
                    throw C21129s.m14a(this.f67805b, i, "@Path can only be used with relative url on @%s", this.f67817n);
                }
                this.f67812i = true;
                AbstractC21060s abstractC21060s = (AbstractC21060s) annotation;
                String m74a = abstractC21060s.m74a();
                if (!f67803y.matcher(m74a).matches()) {
                    throw C21129s.m14a(this.f67805b, i, "@Path parameter name must match %s. Found: %s", f67802x.pattern(), m74a);
                }
                if (!this.f67824u.contains(m74a)) {
                    throw C21129s.m14a(this.f67805b, i, "URL \"%s\" does not contain \"{%s}\".", this.f67821r, m74a);
                }
                return new AbstractC21101l.C21112i(this.f67805b, i, m74a, this.f67804a.m102c(type, annotationArr), abstractC21060s.m73b());
            } else if (annotation instanceof AbstractC21061t) {
                m25a(i, type);
                AbstractC21061t abstractC21061t = (AbstractC21061t) annotation;
                String m72a = abstractC21061t.m72a();
                boolean m71b = abstractC21061t.m71b();
                Class<?> m9a = C21129s.m9a(type);
                this.f67813j = true;
                if (!Iterable.class.isAssignableFrom(m9a)) {
                    return m9a.isArray() ? new AbstractC21101l.C21113j(m72a, this.f67804a.m102c(m22a(m9a.getComponentType()), annotationArr), m71b).m42b() : new AbstractC21101l.C21113j(m72a, this.f67804a.m102c(type, annotationArr), m71b);
                } else if (type instanceof ParameterizedType) {
                    return new AbstractC21101l.C21113j(m72a, this.f67804a.m102c(C21129s.m16a(0, (ParameterizedType) type), annotationArr), m71b).m43a();
                } else {
                    throw C21129s.m14a(this.f67805b, i, m9a.getSimpleName() + " must include generic type (e.g., " + m9a.getSimpleName() + "<String>)", new Object[0]);
                }
            } else if (annotation instanceof AbstractC21063v) {
                m25a(i, type);
                boolean m69a = ((AbstractC21063v) annotation).m69a();
                Class<?> m9a2 = C21129s.m9a(type);
                this.f67814k = true;
                if (!Iterable.class.isAssignableFrom(m9a2)) {
                    return m9a2.isArray() ? new AbstractC21101l.C21115l(this.f67804a.m102c(m22a(m9a2.getComponentType()), annotationArr), m69a).m42b() : new AbstractC21101l.C21115l(this.f67804a.m102c(type, annotationArr), m69a);
                } else if (type instanceof ParameterizedType) {
                    return new AbstractC21101l.C21115l(this.f67804a.m102c(C21129s.m16a(0, (ParameterizedType) type), annotationArr), m69a).m43a();
                } else {
                    throw C21129s.m14a(this.f67805b, i, m9a2.getSimpleName() + " must include generic type (e.g., " + m9a2.getSimpleName() + "<String>)", new Object[0]);
                }
            } else if (annotation instanceof AbstractC21062u) {
                m25a(i, type);
                Class<?> m9a3 = C21129s.m9a(type);
                this.f67815l = true;
                if (!Map.class.isAssignableFrom(m9a3)) {
                    throw C21129s.m14a(this.f67805b, i, "@QueryMap parameter type must be Map.", new Object[0]);
                }
                Type m8a = C21129s.m8a(type, m9a3, (Class<?>) Map.class);
                if (!(m8a instanceof ParameterizedType)) {
                    throw C21129s.m14a(this.f67805b, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType = (ParameterizedType) m8a;
                Type m16a = C21129s.m16a(0, parameterizedType);
                if (String.class != m16a) {
                    throw C21129s.m14a(this.f67805b, i, "@QueryMap keys must be of type String: ".concat(String.valueOf(m16a)), new Object[0]);
                }
                return new AbstractC21101l.C21114k(this.f67805b, i, this.f67804a.m102c(C21129s.m16a(1, parameterizedType), annotationArr), ((AbstractC21062u) annotation).m70a());
            } else if (annotation instanceof AbstractC21050i) {
                m25a(i, type);
                String m83a = ((AbstractC21050i) annotation).m83a();
                Class<?> m9a4 = C21129s.m9a(type);
                if (!Iterable.class.isAssignableFrom(m9a4)) {
                    return m9a4.isArray() ? new AbstractC21101l.C21107d(m83a, this.f67804a.m102c(m22a(m9a4.getComponentType()), annotationArr)).m42b() : new AbstractC21101l.C21107d(m83a, this.f67804a.m102c(type, annotationArr));
                } else if (type instanceof ParameterizedType) {
                    return new AbstractC21101l.C21107d(m83a, this.f67804a.m102c(C21129s.m16a(0, (ParameterizedType) type), annotationArr)).m43a();
                } else {
                    throw C21129s.m14a(this.f67805b, i, m9a4.getSimpleName() + " must include generic type (e.g., " + m9a4.getSimpleName() + "<String>)", new Object[0]);
                }
            } else if (annotation instanceof AbstractC21051j) {
                if (type == Headers.class) {
                    return new AbstractC21101l.C21109f(this.f67805b, i);
                }
                m25a(i, type);
                Class<?> m9a5 = C21129s.m9a(type);
                if (!Map.class.isAssignableFrom(m9a5)) {
                    throw C21129s.m14a(this.f67805b, i, "@HeaderMap parameter type must be Map.", new Object[0]);
                }
                Type m8a2 = C21129s.m8a(type, m9a5, (Class<?>) Map.class);
                if (!(m8a2 instanceof ParameterizedType)) {
                    throw C21129s.m14a(this.f67805b, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) m8a2;
                Type m16a2 = C21129s.m16a(0, parameterizedType2);
                if (String.class != m16a2) {
                    throw C21129s.m14a(this.f67805b, i, "@HeaderMap keys must be of type String: ".concat(String.valueOf(m16a2)), new Object[0]);
                }
                return new AbstractC21101l.C21108e(this.f67805b, i, this.f67804a.m102c(C21129s.m16a(1, parameterizedType2), annotationArr));
            } else if (annotation instanceof AbstractC21044c) {
                m25a(i, type);
                if (!this.f67819p) {
                    throw C21129s.m14a(this.f67805b, i, "@Field parameters can only be used with form encoding.", new Object[0]);
                }
                AbstractC21044c abstractC21044c = (AbstractC21044c) annotation;
                String m91a = abstractC21044c.m91a();
                boolean m90b = abstractC21044c.m90b();
                this.f67809f = true;
                Class<?> m9a6 = C21129s.m9a(type);
                if (!Iterable.class.isAssignableFrom(m9a6)) {
                    return m9a6.isArray() ? new AbstractC21101l.C21105b(m91a, this.f67804a.m102c(m22a(m9a6.getComponentType()), annotationArr), m90b).m42b() : new AbstractC21101l.C21105b(m91a, this.f67804a.m102c(type, annotationArr), m90b);
                } else if (type instanceof ParameterizedType) {
                    return new AbstractC21101l.C21105b(m91a, this.f67804a.m102c(C21129s.m16a(0, (ParameterizedType) type), annotationArr), m90b).m43a();
                } else {
                    throw C21129s.m14a(this.f67805b, i, m9a6.getSimpleName() + " must include generic type (e.g., " + m9a6.getSimpleName() + "<String>)", new Object[0]);
                }
            } else if (annotation instanceof AbstractC21045d) {
                m25a(i, type);
                if (!this.f67819p) {
                    throw C21129s.m14a(this.f67805b, i, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                }
                Class<?> m9a7 = C21129s.m9a(type);
                if (!Map.class.isAssignableFrom(m9a7)) {
                    throw C21129s.m14a(this.f67805b, i, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                Type m8a3 = C21129s.m8a(type, m9a7, (Class<?>) Map.class);
                if (!(m8a3 instanceof ParameterizedType)) {
                    throw C21129s.m14a(this.f67805b, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType3 = (ParameterizedType) m8a3;
                Type m16a3 = C21129s.m16a(0, parameterizedType3);
                if (String.class != m16a3) {
                    throw C21129s.m14a(this.f67805b, i, "@FieldMap keys must be of type String: ".concat(String.valueOf(m16a3)), new Object[0]);
                }
                AbstractC21074e m102c = this.f67804a.m102c(C21129s.m16a(1, parameterizedType3), annotationArr);
                this.f67809f = true;
                return new AbstractC21101l.C21106c(this.f67805b, i, m102c, ((AbstractC21045d) annotation).m89a());
            } else if (annotation instanceof AbstractC21058q) {
                m25a(i, type);
                if (!this.f67820q) {
                    throw C21129s.m14a(this.f67805b, i, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                }
                AbstractC21058q abstractC21058q = (AbstractC21058q) annotation;
                this.f67810g = true;
                String m77a = abstractC21058q.m77a();
                Class<?> m9a8 = C21129s.m9a(type);
                if (m77a.isEmpty()) {
                    if (Iterable.class.isAssignableFrom(m9a8)) {
                        if (!(type instanceof ParameterizedType)) {
                            throw C21129s.m14a(this.f67805b, i, m9a8.getSimpleName() + " must include generic type (e.g., " + m9a8.getSimpleName() + "<String>)", new Object[0]);
                        } else {
                            if (!MultipartBody.Part.class.isAssignableFrom(C21129s.m9a(C21129s.m16a(0, (ParameterizedType) type)))) {
                                throw C21129s.m14a(this.f67805b, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                            }
                            return AbstractC21101l.C21116m.f67768a.m43a();
                        }
                    } else if (m9a8.isArray()) {
                        if (!MultipartBody.Part.class.isAssignableFrom(m9a8.getComponentType())) {
                            throw C21129s.m14a(this.f67805b, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        }
                        return AbstractC21101l.C21116m.f67768a.m42b();
                    } else if (MultipartBody.Part.class.isAssignableFrom(m9a8)) {
                        return AbstractC21101l.C21116m.f67768a;
                    } else {
                        throw C21129s.m14a(this.f67805b, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                }
                Headers m617of = Headers.m617of("Content-Disposition", "form-data; name=\"" + m77a + "\"", "Content-Transfer-Encoding", abstractC21058q.m76b());
                if (Iterable.class.isAssignableFrom(m9a8)) {
                    if (!(type instanceof ParameterizedType)) {
                        throw C21129s.m14a(this.f67805b, i, m9a8.getSimpleName() + " must include generic type (e.g., " + m9a8.getSimpleName() + "<String>)", new Object[0]);
                    } else {
                        Type m16a4 = C21129s.m16a(0, (ParameterizedType) type);
                        if (MultipartBody.Part.class.isAssignableFrom(C21129s.m9a(m16a4))) {
                            throw C21129s.m14a(this.f67805b, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        }
                        return new AbstractC21101l.C21110g(this.f67805b, i, m617of, this.f67804a.m106a(m16a4, annotationArr, this.f67806c)).m43a();
                    }
                }
                if (!m9a8.isArray()) {
                    if (MultipartBody.Part.class.isAssignableFrom(m9a8)) {
                        throw C21129s.m14a(this.f67805b, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    return new AbstractC21101l.C21110g(this.f67805b, i, m617of, this.f67804a.m106a(type, annotationArr, this.f67806c));
                }
                Class<?> m22a = m22a(m9a8.getComponentType());
                if (MultipartBody.Part.class.isAssignableFrom(m22a)) {
                    throw C21129s.m14a(this.f67805b, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new AbstractC21101l.C21110g(this.f67805b, i, m617of, this.f67804a.m106a(m22a, annotationArr, this.f67806c)).m42b();
            } else if (annotation instanceof AbstractC21059r) {
                m25a(i, type);
                if (!this.f67820q) {
                    throw C21129s.m14a(this.f67805b, i, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                }
                this.f67810g = true;
                Class<?> m9a9 = C21129s.m9a(type);
                if (!Map.class.isAssignableFrom(m9a9)) {
                    throw C21129s.m14a(this.f67805b, i, "@PartMap parameter type must be Map.", new Object[0]);
                }
                Type m8a4 = C21129s.m8a(type, m9a9, (Class<?>) Map.class);
                if (!(m8a4 instanceof ParameterizedType)) {
                    throw C21129s.m14a(this.f67805b, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType4 = (ParameterizedType) m8a4;
                Type m16a5 = C21129s.m16a(0, parameterizedType4);
                if (String.class != m16a5) {
                    throw C21129s.m14a(this.f67805b, i, "@PartMap keys must be of type String: ".concat(String.valueOf(m16a5)), new Object[0]);
                }
                Type m16a6 = C21129s.m16a(1, parameterizedType4);
                if (MultipartBody.Part.class.isAssignableFrom(C21129s.m9a(m16a6))) {
                    throw C21129s.m14a(this.f67805b, i, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                }
                return new AbstractC21101l.C21111h(this.f67805b, i, this.f67804a.m106a(m16a6, annotationArr, this.f67806c), ((AbstractC21059r) annotation).m75a());
            } else if (!(annotation instanceof AbstractC21042a)) {
                if (!(annotation instanceof AbstractC21065x)) {
                    return null;
                } else {
                    m25a(i, type);
                    Class<?> m9a10 = C21129s.m9a(type);
                    for (int i2 = i - 1; i2 >= 0; i2--) {
                        AbstractC21101l<?> abstractC21101l = this.f67825v[i2];
                        if ((abstractC21101l instanceof AbstractC21101l.C21118o) && ((AbstractC21101l.C21118o) abstractC21101l).f67771a.equals(m9a10)) {
                            throw C21129s.m14a(this.f67805b, i, "@Tag type " + m9a10.getName() + " is duplicate of parameter #" + (i2 + 1) + " and would always overwrite its value.", new Object[0]);
                        }
                    }
                    return new AbstractC21101l.C21118o(m9a10);
                }
            } else {
                m25a(i, type);
                if (this.f67819p || this.f67820q) {
                    throw C21129s.m14a(this.f67805b, i, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                }
                if (this.f67811h) {
                    throw C21129s.m14a(this.f67805b, i, "Multiple @Body method annotations found.", new Object[0]);
                }
                try {
                    AbstractC21074e m106a = this.f67804a.m106a(type, annotationArr, this.f67806c);
                    this.f67811h = true;
                    return new AbstractC21101l.C21104a(this.f67805b, i, m106a);
                } catch (RuntimeException e) {
                    throw C21129s.m12a(this.f67805b, e, i, "Unable to create @Body converter for %s", type);
                }
            }
        }

        /* renamed from: a */
        private void m25a(int i, Type type) {
            if (!C21129s.m0d(type)) {
                return;
            }
            throw C21129s.m14a(this.f67805b, i, "Parameter type must not include a type variable or wildcard: %s", type);
        }

        /* renamed from: a */
        public final Headers m19a(String[] strArr) {
            Headers.Builder builder = new Headers.Builder();
            for (String str : strArr) {
                int indexOf = str.indexOf(58);
                if (indexOf == -1 || indexOf == 0 || indexOf == str.length() - 1) {
                    throw C21129s.m13a(this.f67805b, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String substring = str.substring(0, indexOf);
                String trim = str.substring(indexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(substring)) {
                    try {
                        this.f67823t = MediaType.get(trim);
                    } catch (IllegalArgumentException e) {
                        throw C21129s.m11a(this.f67805b, e, "Malformed content type: %s", trim);
                    }
                } else {
                    builder.add(substring, trim);
                }
            }
            return builder.build();
        }

        /* renamed from: a */
        public final AbstractC21101l<?> m23a(int i, Type type, Annotation[] annotationArr, boolean z) {
            AbstractC21101l<?> abstractC21101l;
            if (annotationArr != null) {
                int length = annotationArr.length;
                AbstractC21101l<?> abstractC21101l2 = null;
                int i2 = 0;
                while (true) {
                    abstractC21101l = abstractC21101l2;
                    if (i2 >= length) {
                        break;
                    }
                    AbstractC21101l<?> m24a = m24a(i, type, annotationArr, annotationArr[i2]);
                    AbstractC21101l<?> abstractC21101l3 = abstractC21101l2;
                    if (m24a != null) {
                        if (abstractC21101l2 != null) {
                            throw C21129s.m14a(this.f67805b, i, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                        }
                        abstractC21101l3 = m24a;
                    }
                    i2++;
                    abstractC21101l2 = abstractC21101l3;
                }
            } else {
                abstractC21101l = null;
            }
            if (abstractC21101l == null) {
                if (z) {
                    try {
                        if (C21129s.m9a(type) == AbstractC18332d.class) {
                            this.f67826w = true;
                            return null;
                        }
                    } catch (NoClassDefFoundError e) {
                    }
                }
                throw C21129s.m14a(this.f67805b, i, "No Retrofit annotation found.", new Object[0]);
            }
            return abstractC21101l;
        }

        /* renamed from: a */
        public final void m20a(String str, String str2, boolean z) {
            String str3 = this.f67817n;
            if (str3 == null) {
                this.f67817n = str;
                this.f67818o = z;
                if (str2.isEmpty()) {
                    return;
                }
                int indexOf = str2.indexOf(63);
                if (indexOf != -1 && indexOf < str2.length() - 1) {
                    String substring = str2.substring(indexOf + 1);
                    if (f67802x.matcher(substring).find()) {
                        throw C21129s.m13a(this.f67805b, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
                    }
                }
                this.f67821r = str2;
                this.f67824u = m21a(str2);
                return;
            }
            throw C21129s.m13a(this.f67805b, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
        }
    }

    public C21124o(C21125a c21125a) {
        this.f67793c = c21125a.f67805b;
        this.f67794d = c21125a.f67804a.f67642b;
        this.f67791a = c21125a.f67817n;
        this.f67795e = c21125a.f67821r;
        this.f67796f = c21125a.f67822s;
        this.f67797g = c21125a.f67823t;
        this.f67798h = c21125a.f67818o;
        this.f67799i = c21125a.f67819p;
        this.f67800j = c21125a.f67820q;
        this.f67801k = c21125a.f67825v;
        this.f67792b = c21125a.f67826w;
    }

    /* renamed from: a */
    public final Request m26a(Object[] objArr) throws IOException {
        AbstractC21101l<?>[] abstractC21101lArr = this.f67801k;
        int length = objArr.length;
        if (length != abstractC21101lArr.length) {
            throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + abstractC21101lArr.length + ")");
        }
        C21122n c21122n = new C21122n(this.f67791a, this.f67794d, this.f67795e, this.f67796f, this.f67797g, this.f67798h, this.f67799i, this.f67800j);
        int i = length;
        if (this.f67792b) {
            i = length - 1;
        }
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(objArr[i2]);
            abstractC21101lArr[i2].mo41a(c21122n, objArr[i2]);
        }
        return c21122n.m32a().tag(C21084h.class, new C21084h(this.f67793c, arrayList)).build();
    }
}
