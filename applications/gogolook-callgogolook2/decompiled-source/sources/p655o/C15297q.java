package p655o;

import com.aotter.net.volley.toolbox.HttpClientStack;
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
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import p626l.p634w.AbstractC15044d;
import p655o.AbstractC15276n;
import p655o.p658y.AbstractC15313a;
import p655o.p658y.AbstractC15314b;
import p655o.p658y.AbstractC15315c;
import p655o.p658y.AbstractC15316d;
import p655o.p658y.AbstractC15317e;
import p655o.p658y.AbstractC15318f;
import p655o.p658y.AbstractC15319g;
import p655o.p658y.AbstractC15320h;
import p655o.p658y.AbstractC15321i;
import p655o.p658y.AbstractC15322j;
import p655o.p658y.AbstractC15323k;
import p655o.p658y.AbstractC15324l;
import p655o.p658y.AbstractC15325m;
import p655o.p658y.AbstractC15326n;
import p655o.p658y.AbstractC15327o;
import p655o.p658y.AbstractC15328p;
import p655o.p658y.AbstractC15329q;
import p655o.p658y.AbstractC15330r;
import p655o.p658y.AbstractC15331s;
import p655o.p658y.AbstractC15332t;
import p655o.p658y.AbstractC15334v;
/* renamed from: o.q */
/* loaded from: classes3-dex2jar.jar:o/q.class */
public final class C15297q {

    /* renamed from: a */
    public final Method f33364a;

    /* renamed from: b */
    public final HttpUrl f33365b;

    /* renamed from: c */
    public final String f33366c;
    @Nullable

    /* renamed from: d */
    public final String f33367d;
    @Nullable

    /* renamed from: e */
    public final Headers f33368e;
    @Nullable

    /* renamed from: f */
    public final MediaType f33369f;

    /* renamed from: g */
    public final boolean f33370g;

    /* renamed from: h */
    public final boolean f33371h;

    /* renamed from: i */
    public final boolean f33372i;

    /* renamed from: j */
    public final AbstractC15276n<?>[] f33373j;

    /* renamed from: k */
    public final boolean f33374k;

    /* renamed from: o.q$a */
    /* loaded from: classes3-dex2jar.jar:o/q$a.class */
    public static final class C15298a {

        /* renamed from: x */
        public static final Pattern f33375x = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

        /* renamed from: y */
        public static final Pattern f33376y = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

        /* renamed from: a */
        public final C15300s f33377a;

        /* renamed from: b */
        public final Method f33378b;

        /* renamed from: c */
        public final Annotation[] f33379c;

        /* renamed from: d */
        public final Annotation[][] f33380d;

        /* renamed from: e */
        public final Type[] f33381e;

        /* renamed from: f */
        public boolean f33382f;

        /* renamed from: g */
        public boolean f33383g;

        /* renamed from: h */
        public boolean f33384h;

        /* renamed from: i */
        public boolean f33385i;

        /* renamed from: j */
        public boolean f33386j;

        /* renamed from: k */
        public boolean f33387k;

        /* renamed from: l */
        public boolean f33388l;

        /* renamed from: m */
        public boolean f33389m;
        @Nullable

        /* renamed from: n */
        public String f33390n;

        /* renamed from: o */
        public boolean f33391o;

        /* renamed from: p */
        public boolean f33392p;

        /* renamed from: q */
        public boolean f33393q;
        @Nullable

        /* renamed from: r */
        public String f33394r;
        @Nullable

        /* renamed from: s */
        public Headers f33395s;
        @Nullable

        /* renamed from: t */
        public MediaType f33396t;
        @Nullable

        /* renamed from: u */
        public Set<String> f33397u;
        @Nullable

        /* renamed from: v */
        public AbstractC15276n<?>[] f33398v;

        /* renamed from: w */
        public boolean f33399w;

        public C15298a(C15300s sVar, Method method) {
            this.f33377a = sVar;
            this.f33378b = method;
            this.f33379c = method.getAnnotations();
            this.f33381e = method.getGenericParameterTypes();
            this.f33380d = method.getParameterAnnotations();
        }

        /* renamed from: a */
        public static Class<?> m100a(Class<?> cls) {
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
        public static Set<String> m99a(String str) {
            Matcher matcher = f33375x.matcher(str);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            return linkedHashSet;
        }

        @Nullable
        /* renamed from: a */
        public final AbstractC15276n<?> m102a(int i, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof AbstractC15334v) {
                m103a(i, type);
                if (this.f33389m) {
                    throw C15306w.m64a(this.f33378b, i, "Multiple @Url method annotations found.", new Object[0]);
                } else if (this.f33385i) {
                    throw C15306w.m64a(this.f33378b, i, "@Path parameters may not be used with @Url.", new Object[0]);
                } else if (this.f33386j) {
                    throw C15306w.m64a(this.f33378b, i, "A @Url parameter must not come after a @Query.", new Object[0]);
                } else if (this.f33387k) {
                    throw C15306w.m64a(this.f33378b, i, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                } else if (this.f33388l) {
                    throw C15306w.m64a(this.f33378b, i, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                } else if (this.f33394r == null) {
                    this.f33389m = true;
                    if (type == HttpUrl.class || type == String.class || type == URI.class || ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName()))) {
                        return new AbstractC15276n.C15290n(this.f33378b, i);
                    }
                    throw C15306w.m64a(this.f33378b, i, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
                } else {
                    throw C15306w.m64a(this.f33378b, i, "@Url cannot be used with @%s URL", this.f33390n);
                }
            } else if (annotation instanceof AbstractC15329q) {
                m103a(i, type);
                if (this.f33386j) {
                    throw C15306w.m64a(this.f33378b, i, "A @Path parameter must not come after a @Query.", new Object[0]);
                } else if (this.f33387k) {
                    throw C15306w.m64a(this.f33378b, i, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                } else if (this.f33388l) {
                    throw C15306w.m64a(this.f33378b, i, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                } else if (this.f33389m) {
                    throw C15306w.m64a(this.f33378b, i, "@Path parameters may not be used with @Url.", new Object[0]);
                } else if (this.f33394r != null) {
                    this.f33385i = true;
                    AbstractC15329q qVar = (AbstractC15329q) annotation;
                    String value = qVar.value();
                    m104a(i, value);
                    return new AbstractC15276n.C15285i(this.f33378b, i, value, this.f33377a.m78c(type, annotationArr), qVar.encoded());
                } else {
                    throw C15306w.m64a(this.f33378b, i, "@Path can only be used with relative url on @%s", this.f33390n);
                }
            } else if (annotation instanceof AbstractC15330r) {
                m103a(i, type);
                AbstractC15330r rVar = (AbstractC15330r) annotation;
                String value2 = rVar.value();
                boolean encoded = rVar.encoded();
                Class<?> b = C15306w.m50b(type);
                this.f33386j = true;
                if (!Iterable.class.isAssignableFrom(b)) {
                    return b.isArray() ? new AbstractC15276n.C15286j(value2, this.f33377a.m78c(m100a(b.getComponentType()), annotationArr), encoded).m135a() : new AbstractC15276n.C15286j(value2, this.f33377a.m78c(type, annotationArr), encoded);
                }
                if (type instanceof ParameterizedType) {
                    return new AbstractC15276n.C15286j(value2, this.f33377a.m78c(C15306w.m51b(0, (ParameterizedType) type), annotationArr), encoded).m134b();
                }
                Method method = this.f33378b;
                throw C15306w.m64a(method, i, b.getSimpleName() + " must include generic type (e.g., " + b.getSimpleName() + "<String>)", new Object[0]);
            } else if (annotation instanceof AbstractC15332t) {
                m103a(i, type);
                boolean encoded2 = ((AbstractC15332t) annotation).encoded();
                Class<?> b2 = C15306w.m50b(type);
                this.f33387k = true;
                if (!Iterable.class.isAssignableFrom(b2)) {
                    return b2.isArray() ? new AbstractC15276n.C15288l(this.f33377a.m78c(m100a(b2.getComponentType()), annotationArr), encoded2).m135a() : new AbstractC15276n.C15288l(this.f33377a.m78c(type, annotationArr), encoded2);
                }
                if (type instanceof ParameterizedType) {
                    return new AbstractC15276n.C15288l(this.f33377a.m78c(C15306w.m51b(0, (ParameterizedType) type), annotationArr), encoded2).m134b();
                }
                Method method2 = this.f33378b;
                throw C15306w.m64a(method2, i, b2.getSimpleName() + " must include generic type (e.g., " + b2.getSimpleName() + "<String>)", new Object[0]);
            } else if (annotation instanceof AbstractC15331s) {
                m103a(i, type);
                Class<?> b3 = C15306w.m50b(type);
                this.f33388l = true;
                if (Map.class.isAssignableFrom(b3)) {
                    Type b4 = C15306w.m49b(type, b3, Map.class);
                    if (b4 instanceof ParameterizedType) {
                        ParameterizedType parameterizedType = (ParameterizedType) b4;
                        Type b5 = C15306w.m51b(0, parameterizedType);
                        if (String.class == b5) {
                            return new AbstractC15276n.C15287k(this.f33378b, i, this.f33377a.m78c(C15306w.m51b(1, parameterizedType), annotationArr), ((AbstractC15331s) annotation).encoded());
                        }
                        Method method3 = this.f33378b;
                        throw C15306w.m64a(method3, i, "@QueryMap keys must be of type String: " + b5, new Object[0]);
                    }
                    throw C15306w.m64a(this.f33378b, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                throw C15306w.m64a(this.f33378b, i, "@QueryMap parameter type must be Map.", new Object[0]);
            } else if (annotation instanceof AbstractC15321i) {
                m103a(i, type);
                String value3 = ((AbstractC15321i) annotation).value();
                Class<?> b6 = C15306w.m50b(type);
                if (!Iterable.class.isAssignableFrom(b6)) {
                    return b6.isArray() ? new AbstractC15276n.C15282f(value3, this.f33377a.m78c(m100a(b6.getComponentType()), annotationArr)).m135a() : new AbstractC15276n.C15282f(value3, this.f33377a.m78c(type, annotationArr));
                }
                if (type instanceof ParameterizedType) {
                    return new AbstractC15276n.C15282f(value3, this.f33377a.m78c(C15306w.m51b(0, (ParameterizedType) type), annotationArr)).m134b();
                }
                Method method4 = this.f33378b;
                throw C15306w.m64a(method4, i, b6.getSimpleName() + " must include generic type (e.g., " + b6.getSimpleName() + "<String>)", new Object[0]);
            } else if (annotation instanceof AbstractC15315c) {
                m103a(i, type);
                if (this.f33392p) {
                    AbstractC15315c cVar = (AbstractC15315c) annotation;
                    String value4 = cVar.value();
                    boolean encoded3 = cVar.encoded();
                    this.f33382f = true;
                    Class<?> b7 = C15306w.m50b(type);
                    if (!Iterable.class.isAssignableFrom(b7)) {
                        return b7.isArray() ? new AbstractC15276n.C15280d(value4, this.f33377a.m78c(m100a(b7.getComponentType()), annotationArr), encoded3).m135a() : new AbstractC15276n.C15280d(value4, this.f33377a.m78c(type, annotationArr), encoded3);
                    }
                    if (type instanceof ParameterizedType) {
                        return new AbstractC15276n.C15280d(value4, this.f33377a.m78c(C15306w.m51b(0, (ParameterizedType) type), annotationArr), encoded3).m134b();
                    }
                    Method method5 = this.f33378b;
                    throw C15306w.m64a(method5, i, b7.getSimpleName() + " must include generic type (e.g., " + b7.getSimpleName() + "<String>)", new Object[0]);
                }
                throw C15306w.m64a(this.f33378b, i, "@Field parameters can only be used with form encoding.", new Object[0]);
            } else if (annotation instanceof AbstractC15316d) {
                m103a(i, type);
                if (this.f33392p) {
                    Class<?> b8 = C15306w.m50b(type);
                    if (Map.class.isAssignableFrom(b8)) {
                        Type b9 = C15306w.m49b(type, b8, Map.class);
                        if (b9 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType2 = (ParameterizedType) b9;
                            Type b10 = C15306w.m51b(0, parameterizedType2);
                            if (String.class == b10) {
                                AbstractC15246f c = this.f33377a.m78c(C15306w.m51b(1, parameterizedType2), annotationArr);
                                this.f33382f = true;
                                return new AbstractC15276n.C15281e(this.f33378b, i, c, ((AbstractC15316d) annotation).encoded());
                            }
                            Method method6 = this.f33378b;
                            throw C15306w.m64a(method6, i, "@FieldMap keys must be of type String: " + b10, new Object[0]);
                        }
                        throw C15306w.m64a(this.f33378b, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw C15306w.m64a(this.f33378b, i, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                throw C15306w.m64a(this.f33378b, i, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
            } else if (annotation instanceof AbstractC15327o) {
                m103a(i, type);
                if (this.f33393q) {
                    AbstractC15327o oVar = (AbstractC15327o) annotation;
                    this.f33383g = true;
                    String value5 = oVar.value();
                    Class<?> b11 = C15306w.m50b(type);
                    if (!value5.isEmpty()) {
                        Headers of = Headers.m41of("Content-Disposition", "form-data; name=\"" + value5 + "\"", "Content-Transfer-Encoding", oVar.encoding());
                        if (Iterable.class.isAssignableFrom(b11)) {
                            if (type instanceof ParameterizedType) {
                                Type b12 = C15306w.m51b(0, (ParameterizedType) type);
                                if (!MultipartBody.Part.class.isAssignableFrom(C15306w.m50b(b12))) {
                                    return new AbstractC15276n.C15283g(this.f33378b, i, of, this.f33377a.m84a(b12, annotationArr, this.f33379c)).m134b();
                                }
                                throw C15306w.m64a(this.f33378b, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                            }
                            Method method7 = this.f33378b;
                            throw C15306w.m64a(method7, i, b11.getSimpleName() + " must include generic type (e.g., " + b11.getSimpleName() + "<String>)", new Object[0]);
                        } else if (b11.isArray()) {
                            Class<?> a = m100a(b11.getComponentType());
                            if (!MultipartBody.Part.class.isAssignableFrom(a)) {
                                return new AbstractC15276n.C15283g(this.f33378b, i, of, this.f33377a.m84a(a, annotationArr, this.f33379c)).m135a();
                            }
                            throw C15306w.m64a(this.f33378b, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        } else if (!MultipartBody.Part.class.isAssignableFrom(b11)) {
                            return new AbstractC15276n.C15283g(this.f33378b, i, of, this.f33377a.m84a(type, annotationArr, this.f33379c));
                        } else {
                            throw C15306w.m64a(this.f33378b, i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        }
                    } else if (Iterable.class.isAssignableFrom(b11)) {
                        if (!(type instanceof ParameterizedType)) {
                            Method method8 = this.f33378b;
                            throw C15306w.m64a(method8, i, b11.getSimpleName() + " must include generic type (e.g., " + b11.getSimpleName() + "<String>)", new Object[0]);
                        } else if (MultipartBody.Part.class.isAssignableFrom(C15306w.m50b(C15306w.m51b(0, (ParameterizedType) type)))) {
                            return AbstractC15276n.C15289m.f33344a.m134b();
                        } else {
                            throw C15306w.m64a(this.f33378b, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        }
                    } else if (b11.isArray()) {
                        if (MultipartBody.Part.class.isAssignableFrom(b11.getComponentType())) {
                            return AbstractC15276n.C15289m.f33344a.m135a();
                        }
                        throw C15306w.m64a(this.f33378b, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    } else if (MultipartBody.Part.class.isAssignableFrom(b11)) {
                        return AbstractC15276n.C15289m.f33344a;
                    } else {
                        throw C15306w.m64a(this.f33378b, i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                } else {
                    throw C15306w.m64a(this.f33378b, i, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                }
            } else if (annotation instanceof AbstractC15328p) {
                m103a(i, type);
                if (this.f33393q) {
                    this.f33383g = true;
                    Class<?> b13 = C15306w.m50b(type);
                    if (Map.class.isAssignableFrom(b13)) {
                        Type b14 = C15306w.m49b(type, b13, Map.class);
                        if (b14 instanceof ParameterizedType) {
                            ParameterizedType parameterizedType3 = (ParameterizedType) b14;
                            Type b15 = C15306w.m51b(0, parameterizedType3);
                            if (String.class == b15) {
                                Type b16 = C15306w.m51b(1, parameterizedType3);
                                if (!MultipartBody.Part.class.isAssignableFrom(C15306w.m50b(b16))) {
                                    return new AbstractC15276n.C15284h(this.f33378b, i, this.f33377a.m84a(b16, annotationArr, this.f33379c), ((AbstractC15328p) annotation).encoding());
                                }
                                throw C15306w.m64a(this.f33378b, i, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                            }
                            Method method9 = this.f33378b;
                            throw C15306w.m64a(method9, i, "@PartMap keys must be of type String: " + b15, new Object[0]);
                        }
                        throw C15306w.m64a(this.f33378b, i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                    }
                    throw C15306w.m64a(this.f33378b, i, "@PartMap parameter type must be Map.", new Object[0]);
                }
                throw C15306w.m64a(this.f33378b, i, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
            } else if (!(annotation instanceof AbstractC15313a)) {
                return null;
            } else {
                m103a(i, type);
                if (this.f33392p || this.f33393q) {
                    throw C15306w.m64a(this.f33378b, i, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                } else if (!this.f33384h) {
                    try {
                        AbstractC15246f a2 = this.f33377a.m84a(type, annotationArr, this.f33379c);
                        this.f33384h = true;
                        return new AbstractC15276n.C15279c(this.f33378b, i, a2);
                    } catch (RuntimeException e) {
                        throw C15306w.m62a(this.f33378b, e, i, "Unable to create @Body converter for %s", type);
                    }
                } else {
                    throw C15306w.m64a(this.f33378b, i, "Multiple @Body method annotations found.", new Object[0]);
                }
            }
        }

        @Nullable
        /* renamed from: a */
        public final AbstractC15276n<?> m101a(int i, Type type, @Nullable Annotation[] annotationArr, boolean z) {
            AbstractC15276n<?> nVar;
            if (annotationArr != null) {
                int length = annotationArr.length;
                AbstractC15276n<?> nVar2 = null;
                int i2 = 0;
                while (true) {
                    nVar = nVar2;
                    if (i2 >= length) {
                        break;
                    }
                    AbstractC15276n<?> a = m102a(i, type, annotationArr, annotationArr[i2]);
                    if (a != null) {
                        if (nVar2 == null) {
                            nVar2 = a;
                        } else {
                            throw C15306w.m64a(this.f33378b, i, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                        }
                    }
                    i2++;
                }
            } else {
                nVar = null;
            }
            if (nVar != null) {
                return nVar;
            }
            if (z) {
                try {
                    if (C15306w.m50b(type) == AbstractC15044d.class) {
                        this.f33399w = true;
                        return null;
                    }
                } catch (NoClassDefFoundError e) {
                }
            }
            throw C15306w.m64a(this.f33378b, i, "No Retrofit annotation found.", new Object[0]);
        }

        /* renamed from: a */
        public C15297q m105a() {
            for (Annotation annotation : this.f33379c) {
                m97a(annotation);
            }
            if (this.f33390n != null) {
                if (!this.f33391o) {
                    if (this.f33393q) {
                        throw C15306w.m63a(this.f33378b, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    } else if (this.f33392p) {
                        throw C15306w.m63a(this.f33378b, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                    }
                }
                int length = this.f33380d.length;
                this.f33398v = new AbstractC15276n[length];
                int i = 0;
                while (true) {
                    boolean z = true;
                    if (i >= length) {
                        break;
                    }
                    AbstractC15276n<?>[] nVarArr = this.f33398v;
                    Type type = this.f33381e[i];
                    Annotation[] annotationArr = this.f33380d[i];
                    if (i != length - 1) {
                        z = false;
                    }
                    nVarArr[i] = m101a(i, type, annotationArr, z);
                    i++;
                }
                if (this.f33394r == null && !this.f33389m) {
                    throw C15306w.m63a(this.f33378b, "Missing either @%s URL or @Url parameter.", this.f33390n);
                } else if (!this.f33392p && !this.f33393q && !this.f33391o && this.f33384h) {
                    throw C15306w.m63a(this.f33378b, "Non-body HTTP method cannot contain @Body.", new Object[0]);
                } else if (this.f33392p && !this.f33382f) {
                    throw C15306w.m63a(this.f33378b, "Form-encoded method must contain at least one @Field.", new Object[0]);
                } else if (!this.f33393q || this.f33383g) {
                    return new C15297q(this);
                } else {
                    throw C15306w.m63a(this.f33378b, "Multipart method must contain at least one @Part.", new Object[0]);
                }
            } else {
                throw C15306w.m63a(this.f33378b, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
            }
        }

        /* renamed from: a */
        public final Headers m96a(String[] strArr) {
            Headers.Builder builder = new Headers.Builder();
            for (String str : strArr) {
                int indexOf = str.indexOf(58);
                if (indexOf == -1 || indexOf == 0 || indexOf == str.length() - 1) {
                    throw C15306w.m63a(this.f33378b, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String substring = str.substring(0, indexOf);
                String trim = str.substring(indexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(substring)) {
                    try {
                        this.f33396t = MediaType.get(trim);
                    } catch (IllegalArgumentException e) {
                        throw C15306w.m61a(this.f33378b, e, "Malformed content type: %s", trim);
                    }
                } else {
                    builder.add(substring, trim);
                }
            }
            return builder.build();
        }

        /* renamed from: a */
        public final void m104a(int i, String str) {
            if (!f33376y.matcher(str).matches()) {
                throw C15306w.m64a(this.f33378b, i, "@Path parameter name must match %s. Found: %s", f33375x.pattern(), str);
            } else if (!this.f33397u.contains(str)) {
                throw C15306w.m64a(this.f33378b, i, "URL \"%s\" does not contain \"{%s}\".", this.f33394r, str);
            }
        }

        /* renamed from: a */
        public final void m103a(int i, Type type) {
            if (C15306w.m48c(type)) {
                throw C15306w.m64a(this.f33378b, i, "Parameter type must not include a type variable or wildcard: %s", type);
            }
        }

        /* renamed from: a */
        public final void m98a(String str, String str2, boolean z) {
            String str3 = this.f33390n;
            if (str3 == null) {
                this.f33390n = str;
                this.f33391o = z;
                if (!str2.isEmpty()) {
                    int indexOf = str2.indexOf(63);
                    if (indexOf != -1 && indexOf < str2.length() - 1) {
                        String substring = str2.substring(indexOf + 1);
                        if (f33375x.matcher(substring).find()) {
                            throw C15306w.m63a(this.f33378b, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
                        }
                    }
                    this.f33394r = str2;
                    this.f33397u = m99a(str2);
                    return;
                }
                return;
            }
            throw C15306w.m63a(this.f33378b, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
        }

        /* renamed from: a */
        public final void m97a(Annotation annotation) {
            if (annotation instanceof AbstractC15314b) {
                m98a("DELETE", ((AbstractC15314b) annotation).value(), false);
            } else if (annotation instanceof AbstractC15318f) {
                m98a("GET", ((AbstractC15318f) annotation).value(), false);
            } else if (annotation instanceof AbstractC15319g) {
                m98a("HEAD", ((AbstractC15319g) annotation).value(), false);
            } else if (annotation instanceof AbstractC15324l) {
                m98a(HttpClientStack.HttpPatch.METHOD_NAME, ((AbstractC15324l) annotation).value(), true);
            } else if (annotation instanceof AbstractC15325m) {
                m98a("POST", ((AbstractC15325m) annotation).value(), true);
            } else if (annotation instanceof AbstractC15326n) {
                m98a("PUT", ((AbstractC15326n) annotation).value(), true);
            } else if (annotation instanceof AbstractC15323k) {
                m98a("OPTIONS", ((AbstractC15323k) annotation).value(), false);
            } else if (annotation instanceof AbstractC15320h) {
                AbstractC15320h hVar = (AbstractC15320h) annotation;
                m98a(hVar.method(), hVar.path(), hVar.hasBody());
            } else if (annotation instanceof AbstractC15322j) {
                String[] value = ((AbstractC15322j) annotation).value();
                if (value.length != 0) {
                    this.f33395s = m96a(value);
                    return;
                }
                throw C15306w.m63a(this.f33378b, "@Headers annotation is empty.", new Object[0]);
            } else if (!(annotation instanceof AbstractC15317e)) {
            } else {
                if (!this.f33393q) {
                    this.f33392p = true;
                    return;
                }
                throw C15306w.m63a(this.f33378b, "Only one encoding annotation is allowed.", new Object[0]);
            }
        }
    }

    public C15297q(C15298a aVar) {
        this.f33364a = aVar.f33378b;
        this.f33365b = aVar.f33377a.f33405c;
        this.f33366c = aVar.f33390n;
        this.f33367d = aVar.f33394r;
        this.f33368e = aVar.f33395s;
        this.f33369f = aVar.f33396t;
        this.f33370g = aVar.f33391o;
        this.f33371h = aVar.f33392p;
        this.f33372i = aVar.f33393q;
        this.f33373j = aVar.f33398v;
        this.f33374k = aVar.f33399w;
    }

    /* renamed from: a */
    public static C15297q m107a(C15300s sVar, Method method) {
        return new C15298a(sVar, method).m105a();
    }

    /* renamed from: a */
    public Request m106a(Object[] objArr) throws IOException {
        AbstractC15276n<?>[] nVarArr = this.f33373j;
        int length = objArr.length;
        if (length == nVarArr.length) {
            C15295p pVar = new C15295p(this.f33366c, this.f33365b, this.f33367d, this.f33368e, this.f33369f, this.f33370g, this.f33371h, this.f33372i);
            int i = length;
            if (this.f33374k) {
                i = length - 1;
            }
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(objArr[i2]);
                nVarArr[i2].mo128a(pVar, objArr[i2]);
            }
            Request.Builder a = pVar.m118a();
            a.tag(C15259j.class, new C15259j(this.f33364a, arrayList));
            return a.build();
        }
        throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + nVarArr.length + ")");
    }
}
