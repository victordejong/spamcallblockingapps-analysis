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
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import retrofit2.b.c;
import retrofit2.b.d;
import retrofit2.b.i;
import retrofit2.b.j;
import retrofit2.b.q;
import retrofit2.b.r;
import retrofit2.b.s;
import retrofit2.b.t;
import retrofit2.b.u;
import retrofit2.b.v;
import retrofit2.b.x;
import retrofit2.b.y;
import retrofit2.l;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:retrofit2/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    final String f39537a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f39538b;

    /* renamed from: c  reason: collision with root package name */
    private final Method f39539c;

    /* renamed from: d  reason: collision with root package name */
    private final HttpUrl f39540d;
    private final String e;
    private final Headers f;
    private final MediaType g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final l<?>[] k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:retrofit2/o$a.class */
    public static final class a {
        private static final Pattern x = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");
        private static final Pattern y = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

        /* renamed from: a  reason: collision with root package name */
        final Retrofit f39541a;

        /* renamed from: b  reason: collision with root package name */
        final Method f39542b;

        /* renamed from: c  reason: collision with root package name */
        final Annotation[] f39543c;

        /* renamed from: d  reason: collision with root package name */
        final Annotation[][] f39544d;
        final Type[] e;
        boolean f;
        boolean g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        String n;
        boolean o;
        boolean p;
        boolean q;
        String r;
        Headers s;
        MediaType t;
        Set<String> u;
        l<?>[] v;
        boolean w;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Retrofit retrofit, Method method) {
            this.f39541a = retrofit;
            this.f39542b = method;
            this.f39543c = method.getAnnotations();
            this.e = method.getGenericParameterTypes();
            this.f39544d = method.getParameterAnnotations();
        }

        private static Class<?> a(Class<?> cls) {
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

        private static Set<String> a(String str) {
            Matcher matcher = x.matcher(str);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            return linkedHashSet;
        }

        private l<?> a(int i, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof y) {
                a(i, type);
                if (this.m) {
                    throw s.a(this.f39542b, i, "Multiple @Url method annotations found.", new Object[0]);
                } else if (this.i) {
                    throw s.a(this.f39542b, i, "@Path parameters may not be used with @Url.", new Object[0]);
                } else if (this.j) {
                    throw s.a(this.f39542b, i, "A @Url parameter must not come after a @Query.", new Object[0]);
                } else if (this.k) {
                    throw s.a(this.f39542b, i, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                } else if (this.l) {
                    throw s.a(this.f39542b, i, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                } else if (this.r == null) {
                    this.m = true;
                    if (type == HttpUrl.class || type == String.class || type == URI.class || ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName()))) {
                        return new l.n(this.f39542b, i);
                    }
                    throw s.a(this.f39542b, i, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                } else {
                    throw s.a(this.f39542b, i, "@Url cannot be used with @%s URL", this.n);
                }
            } else if (annotation instanceof s) {
                a(i, type);
                if (this.j) {
                    throw s.a(this.f39542b, i, "A @Path parameter must not come after a @Query.", new Object[0]);
                } else if (this.k) {
                    throw s.a(this.f39542b, i, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                } else if (this.l) {
                    throw s.a(this.f39542b, i, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                } else if (this.m) {
                    throw s.a(this.f39542b, i, "@Path parameters may not be used with @Url.", new Object[0]);
                } else if (this.r != null) {
                    this.i = true;
                    s sVar = (s) annotation;
                    String a2 = sVar.a();
                    if (!y.matcher(a2).matches()) {
                        throw s.a(this.f39542b, i, "@Path parameter name must match %s. Found: %s", x.pattern(), a2);
                    } else if (this.u.contains(a2)) {
                        return new l.i(this.f39542b, i, a2, this.f39541a.c(type, annotationArr), sVar.b());
                    } else {
                        throw s.a(this.f39542b, i, "URL \"%s\" does not contain \"{%s}\".", this.r, a2);
                    }
                } else {
                    throw s.a(this.f39542b, i, "@Path can only be used with relative url on @%s", this.n);
                }
            } else if (annotation instanceof t) {
                a(i, type);
                t tVar = (t) annotation;
                String a3 = tVar.a();
                boolean b2 = tVar.b();
                Class<?> a4 = s.a(type);
                this.j = true;
                if (!Iterable.class.isAssignableFrom(a4)) {
                    return a4.isArray() ? new l.j(a3, this.f39541a.c(a(a4.getComponentType()), annotationArr), b2).b() : new l.j(a3, this.f39541a.c(type, annotationArr), b2);
                }
                if (type instanceof ParameterizedType) {
                    return new l.j(a3, this.f39541a.c(s.a(0, (ParameterizedType) type), annotationArr), b2).a();
                }
                throw s.a(this.f39542b, i, a4.getSimpleName() + " must include generic type (e.g., " + a4.getSimpleName() + "<String>)", new Object[0]);
            } else if (annotation instanceof v) {
                a(i, type);
                boolean a5 = ((v) annotation).a();
                Class<?> a6 = s.a(type);
                this.k = true;
                if (!Iterable.class.isAssignableFrom(a6)) {
                    return a6.isArray() ? new l.C0757l(this.f39541a.c(a(a6.getComponentType()), annotationArr), a5).b() : new l.C0757l(this.f39541a.c(type, annotationArr), a5);
                }
                if (type instanceof ParameterizedType) {
                    return new l.C0757l(this.f39541a.c(s.a(0, (ParameterizedType) type), annotationArr), a5).a();
                }
                throw s.a(this.f39542b, i, a6.getSimpleName() + " must include generic type (e.g., " + a6.getSimpleName() + "<String>)", new Object[0]);
            } else if (annotation instanceof u) {
                a(i, type);
                Class<?> a7 = s.a(type);
                this.l = true;
                if (Map.class.isAssignableFrom(a7)) {
                    Type a8 = s.a(type, a7, (Class<?>) Map.class);
                    if (a8 instanceof ParameterizedType) {
                        ParameterizedType parameterizedType = (ParameterizedType) a8;
                        Type a9 = s.a(0, parameterizedType);
                        if (String.class == a9) {
                            return new l.k(this.f39542b, i, this.f39541a.c(s.a(1, parameterizedType), annotationArr), ((u) annotation).a());
                        }
                        throw s.a(this.f39542b, i, "@QueryMap keys must be of type String: ".concat(String.valueOf(a9)), new Object[0]);
                    }
                    throw s.a(this.f39542b, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                throw s.a(this.f39542b, i, "@QueryMap parameter type must be Map.", new Object[0]);
            } else if (annotation instanceof i) {
                a(i, type);
                String a10 = ((i) annotation).a();
                Class<?> a11 = s.a(type);
                if (!Iterable.class.isAssignableFrom(a11)) {
                    return a11.isArray() ? new l.d(a10, this.f39541a.c(a(a11.getComponentType()), annotationArr)).b() : new l.d(a10, this.f39541a.c(type, annotationArr));
                }
                if (type instanceof ParameterizedType) {
                    return new l.d(a10, this.f39541a.c(s.a(0, (ParameterizedType) type), annotationArr)).a();
                }
                throw s.a(this.f39542b, i, a11.getSimpleName() + " must include generic type (e.g., " + a11.getSimpleName() + "<String>)", new Object[0]);
            } else if (annotation instanceof j) {
                if (type == Headers.class) {
                    return new l.f(this.f39542b, i);
                }
                a(i, type);
                Class<?> a12 = s.a(type);
                if (Map.class.isAssignableFrom(a12)) {
                    Type a13 = s.a(type, a12, (Class<?>) Map.class);
                    if (a13 instanceof ParameterizedType) {
                        ParameterizedType parameterizedType2 = (ParameterizedType) a13;
                        Type a14 = s.a(0, parameterizedType2);
                        if (String.class == a14) {
                            return new l.e(this.f39542b, i, this.f39541a.c(s.a(1, parameterizedType2), annotationArr));
                        }
                        throw s.a(this.f39542b, i, "@HeaderMap keys must be of type String: ".concat(String.valueOf(a14)), new Object[0]);
                    }
                    throw s.a(this.f39542b, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                throw s.a(this.f39542b, i, "@HeaderMap parameter type must be Map.", new Object[0]);
            } else if (annotation instanceof c) {
                a(i, type);
                if (this.p) {
                    c cVar = (c) annotation;
                    String a15 = cVar.a();
                    boolean b3 = cVar.b();
                    this.f = true;
                    Class<?> a16 = s.a(type);
                    if (!Iterable.class.isAssignableFrom(a16)) {
                        return a16.isArray() ? new l.b(a15, this.f39541a.c(a(a16.getComponentType()), annotationArr), b3).b() : new l.b(a15, this.f39541a.c(type, annotationArr), b3);
                    }
                    if (type instanceof ParameterizedType) {
                        return new l.b(a15, this.f39541a.c(s.a(0, (ParameterizedType) type), annotationArr), b3).a();
                    }
                    throw s.a(this.f39542b, i, a16.getSimpleName() + " must include generic type (e.g., " + a16.getSimpleName() + "<String>)", new Object[0]);
                }
                throw s.a(this.f39542b, i, "@Field parameters can only be used with form encoding.", new Object[0]);
            } else if (annotation instanceof d) {
                a(i, type);
                if (this.p) {
                    Class<?> a17 = s.a(type);
                    if (Map.class.isAssignableFrom(a17)) {
                        Type a18 = s.a(type, a17, (Class<?>) Map.class);
                        if (a18 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType3 = (ParameterizedType) a18;
                            Type a19 = s.a(0, parameterizedType3);
                            if (String.class == a19) {
                                e c2 = this.f39541a.c(s.a(1, parameterizedType3), annotationArr);
                                this.f = true;
                                return new l.c(this.f39542b, i, c2, ((d) annotation).a());
                            }
                            throw s.a(this.f39542b, i, "@FieldMap keys must be of type String: ".concat(String.valueOf(a19)), new Object[0]);
                        }
                        throw s.a(this.f39542b, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw s.a(this.f39542b, i, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                throw s.a(this.f39542b, i, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
            } else if (annotation instanceof q) {
                a(i, type);
                if (this.q) {
                    q qVar = (q) annotation;
                    this.g = true;
                    String a20 = qVar.a();
                    Class<?> a21 = s.a(type);
                    if (!a20.isEmpty()) {
                        Headers of = Headers.of("Content-Disposition", "form-data; name=\"" + a20 + "\"", "Content-Transfer-Encoding", qVar.b());
                        if (Iterable.class.isAssignableFrom(a21)) {
                            if (type instanceof ParameterizedType) {
                                Type a22 = s.a(0, (ParameterizedType) type);
                                if (!MultipartBody.Part.class.isAssignableFrom(s.a(a22))) {
                                    return new l.g(this.f39542b, i, of, this.f39541a.a(a22, annotationArr, this.f39543c)).a();
                                }
                                throw s.a(this.f39542b, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                            }
                            throw s.a(this.f39542b, i, a21.getSimpleName() + " must include generic type (e.g., " + a21.getSimpleName() + "<String>)", new Object[0]);
                        } else if (a21.isArray()) {
                            Class<?> a23 = a(a21.getComponentType());
                            if (!MultipartBody.Part.class.isAssignableFrom(a23)) {
                                return new l.g(this.f39542b, i, of, this.f39541a.a(a23, annotationArr, this.f39543c)).b();
                            }
                            throw s.a(this.f39542b, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        } else if (!MultipartBody.Part.class.isAssignableFrom(a21)) {
                            return new l.g(this.f39542b, i, of, this.f39541a.a(type, annotationArr, this.f39543c));
                        } else {
                            throw s.a(this.f39542b, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        }
                    } else if (Iterable.class.isAssignableFrom(a21)) {
                        if (!(type instanceof ParameterizedType)) {
                            throw s.a(this.f39542b, i, a21.getSimpleName() + " must include generic type (e.g., " + a21.getSimpleName() + "<String>)", new Object[0]);
                        } else if (MultipartBody.Part.class.isAssignableFrom(s.a(s.a(0, (ParameterizedType) type)))) {
                            return l.m.f39523a.a();
                        } else {
                            throw s.a(this.f39542b, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        }
                    } else if (a21.isArray()) {
                        if (MultipartBody.Part.class.isAssignableFrom(a21.getComponentType())) {
                            return l.m.f39523a.b();
                        }
                        throw s.a(this.f39542b, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    } else if (MultipartBody.Part.class.isAssignableFrom(a21)) {
                        return l.m.f39523a;
                    } else {
                        throw s.a(this.f39542b, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                } else {
                    throw s.a(this.f39542b, i, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                }
            } else if (annotation instanceof r) {
                a(i, type);
                if (this.q) {
                    this.g = true;
                    Class<?> a24 = s.a(type);
                    if (Map.class.isAssignableFrom(a24)) {
                        Type a25 = s.a(type, a24, (Class<?>) Map.class);
                        if (a25 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType4 = (ParameterizedType) a25;
                            Type a26 = s.a(0, parameterizedType4);
                            if (String.class == a26) {
                                Type a27 = s.a(1, parameterizedType4);
                                if (!MultipartBody.Part.class.isAssignableFrom(s.a(a27))) {
                                    return new l.h(this.f39542b, i, this.f39541a.a(a27, annotationArr, this.f39543c), ((r) annotation).a());
                                }
                                throw s.a(this.f39542b, i, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                            }
                            throw s.a(this.f39542b, i, "@PartMap keys must be of type String: ".concat(String.valueOf(a26)), new Object[0]);
                        }
                        throw s.a(this.f39542b, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw s.a(this.f39542b, i, "@PartMap parameter type must be Map.", new Object[0]);
                }
                throw s.a(this.f39542b, i, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
            } else if (annotation instanceof retrofit2.b.a) {
                a(i, type);
                if (this.p || this.q) {
                    throw s.a(this.f39542b, i, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                } else if (!this.h) {
                    try {
                        e a28 = this.f39541a.a(type, annotationArr, this.f39543c);
                        this.h = true;
                        return new l.a(this.f39542b, i, a28);
                    } catch (RuntimeException e) {
                        throw s.a(this.f39542b, e, i, "Unable to create @Body converter for %s", type);
                    }
                } else {
                    throw s.a(this.f39542b, i, "Multiple @Body method annotations found.", new Object[0]);
                }
            } else if (!(annotation instanceof x)) {
                return null;
            } else {
                a(i, type);
                Class<?> a29 = s.a(type);
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    l<?> lVar = this.v[i2];
                    if ((lVar instanceof l.o) && ((l.o) lVar).f39526a.equals(a29)) {
                        throw s.a(this.f39542b, i, "@Tag type " + a29.getName() + " is duplicate of parameter #" + (i2 + 1) + " and would always overwrite its value.", new Object[0]);
                    }
                }
                return new l.o(a29);
            }
        }

        private void a(int i, Type type) {
            if (s.d(type)) {
                throw s.a(this.f39542b, i, "Parameter type must not include a type variable or wildcard: %s", type);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final Headers a(String[] strArr) {
            Headers.Builder builder = new Headers.Builder();
            for (String str : strArr) {
                int indexOf = str.indexOf(58);
                if (indexOf == -1 || indexOf == 0 || indexOf == str.length() - 1) {
                    throw s.a(this.f39542b, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String substring = str.substring(0, indexOf);
                String trim = str.substring(indexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(substring)) {
                    try {
                        this.t = MediaType.get(trim);
                    } catch (IllegalArgumentException e) {
                        throw s.a(this.f39542b, e, "Malformed content type: %s", trim);
                    }
                } else {
                    builder.add(substring, trim);
                }
            }
            return builder.build();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final l<?> a(int i, Type type, Annotation[] annotationArr, boolean z) {
            l<?> lVar;
            if (annotationArr != null) {
                int length = annotationArr.length;
                l<?> lVar2 = null;
                int i2 = 0;
                while (true) {
                    lVar = lVar2;
                    if (i2 >= length) {
                        break;
                    }
                    l<?> a2 = a(i, type, annotationArr, annotationArr[i2]);
                    lVar2 = lVar2;
                    if (a2 != null) {
                        if (lVar2 == null) {
                            lVar2 = a2;
                        } else {
                            throw s.a(this.f39542b, i, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                        }
                    }
                    i2++;
                }
            } else {
                lVar = null;
            }
            if (lVar != null) {
                return lVar;
            }
            if (z) {
                try {
                    if (s.a(type) == kotlin.c.d.class) {
                        this.w = true;
                        return null;
                    }
                } catch (NoClassDefFoundError e) {
                }
            }
            throw s.a(this.f39542b, i, "No Retrofit annotation found.", new Object[0]);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(String str, String str2, boolean z) {
            String str3 = this.n;
            if (str3 == null) {
                this.n = str;
                this.o = z;
                if (!str2.isEmpty()) {
                    int indexOf = str2.indexOf(63);
                    if (indexOf != -1 && indexOf < str2.length() - 1) {
                        String substring = str2.substring(indexOf + 1);
                        if (x.matcher(substring).find()) {
                            throw s.a(this.f39542b, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
                        }
                    }
                    this.r = str2;
                    this.u = a(str2);
                    return;
                }
                return;
            }
            throw s.a(this.f39542b, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(a aVar) {
        this.f39539c = aVar.f39542b;
        this.f39540d = aVar.f39541a.f39408b;
        this.f39537a = aVar.n;
        this.e = aVar.r;
        this.f = aVar.s;
        this.g = aVar.t;
        this.h = aVar.o;
        this.i = aVar.p;
        this.j = aVar.q;
        this.k = aVar.v;
        this.f39538b = aVar.w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Request a(Object[] objArr) throws IOException {
        l<?>[] lVarArr = this.k;
        int length = objArr.length;
        if (length == lVarArr.length) {
            n nVar = new n(this.f39537a, this.f39540d, this.e, this.f, this.g, this.h, this.i, this.j);
            int i = length;
            if (this.f39538b) {
                i = length - 1;
            }
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(objArr[i2]);
                lVarArr[i2].a(nVar, objArr[i2]);
            }
            return nVar.a().tag(h.class, new h(this.f39539c, arrayList)).build();
        }
        throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + lVarArr.length + ")");
    }
}
