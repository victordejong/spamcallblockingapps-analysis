package com.google.api.client.http;

import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.C8688a0;
import com.google.api.client.util.C8689b;
import com.google.api.client.util.C8693c0;
import com.google.api.client.util.C8695d0;
import com.google.api.client.util.C8710i;
import com.google.api.client.util.C8712j;
import com.google.api.client.util.C8717l;
import com.google.api.client.util.C8731w;
import com.google.api.client.util.GenericData;
import com.yanzhenjie.nohttp.Headers;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.http.n */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/n.class */
public class C8650n extends GenericData {
    @AbstractC8720o(Headers.HEAD_KEY_ACCEPT)
    private List<String> accept;
    @AbstractC8720o(Headers.HEAD_KEY_ACCEPT_ENCODING)
    private List<String> acceptEncoding = new ArrayList(Collections.singleton("gzip"));
    @AbstractC8720o("Age")
    private List<Long> age;
    @AbstractC8720o("WWW-Authenticate")
    private List<String> authenticate;
    @AbstractC8720o("Authorization")
    private List<String> authorization;
    @AbstractC8720o(Headers.HEAD_KEY_CACHE_CONTROL)
    private List<String> cacheControl;
    @AbstractC8720o(Headers.HEAD_KEY_CONTENT_ENCODING)
    private List<String> contentEncoding;
    @AbstractC8720o(Headers.HEAD_KEY_CONTENT_LENGTH)
    private List<Long> contentLength;
    @AbstractC8720o("Content-MD5")
    private List<String> contentMD5;
    @AbstractC8720o(Headers.HEAD_KEY_CONTENT_RANGE)
    private List<String> contentRange;
    @AbstractC8720o(Headers.HEAD_KEY_CONTENT_TYPE)
    private List<String> contentType;
    @AbstractC8720o(Headers.HEAD_KEY_COOKIE)
    private List<String> cookie;
    @AbstractC8720o(Headers.HEAD_KEY_DATE)
    private List<String> date;
    @AbstractC8720o(Headers.HEAD_KEY_E_TAG)
    private List<String> etag;
    @AbstractC8720o(Headers.HEAD_KEY_EXPIRES)
    private List<String> expires;
    @AbstractC8720o("If-Match")
    private List<String> ifMatch;
    @AbstractC8720o(Headers.HEAD_KEY_IF_MODIFIED_SINCE)
    private List<String> ifModifiedSince;
    @AbstractC8720o(Headers.HEAD_KEY_IF_NONE_MATCH)
    private List<String> ifNoneMatch;
    @AbstractC8720o("If-Range")
    private List<String> ifRange;
    @AbstractC8720o("If-Unmodified-Since")
    private List<String> ifUnmodifiedSince;
    @AbstractC8720o(Headers.HEAD_KEY_LAST_MODIFIED)
    private List<String> lastModified;
    @AbstractC8720o(Headers.HEAD_KEY_LOCATION)
    private List<String> location;
    @AbstractC8720o("MIME-Version")
    private List<String> mimeVersion;
    @AbstractC8720o("Range")
    private List<String> range;
    @AbstractC8720o("Retry-After")
    private List<String> retryAfter;
    @AbstractC8720o(Headers.HEAD_KEY_USER_AGENT)
    private List<String> userAgent;
    @AbstractC8720o("Warning")
    private List<String> warning;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.api.client.http.n$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/http/n$a.class */
    public static class C8651a extends AbstractC8664z {

        /* renamed from: e */
        private final C8650n f38363e;

        /* renamed from: f */
        private final C8652b f38364f;

        C8651a(C8650n c8650n, C8652b c8652b) {
            this.f38363e = c8650n;
            this.f38364f = c8652b;
        }

        @Override // com.google.api.client.http.AbstractC8664z
        /* renamed from: a */
        public void mo3041a(String str, String str2) {
            this.f38363e.m3138n(str, str2, this.f38364f);
        }

        @Override // com.google.api.client.http.AbstractC8664z
        /* renamed from: b */
        public AbstractC8615a0 mo3040b() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.api.client.http.n$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/http/n$b.class */
    public static final class C8652b {

        /* renamed from: a */
        final C8689b f38365a;

        /* renamed from: b */
        final StringBuilder f38366b;

        /* renamed from: c */
        final C8710i f38367c;

        /* renamed from: d */
        final List<Type> f38368d;

        public C8652b(C8650n c8650n, StringBuilder sb) {
            Class<?> cls = c8650n.getClass();
            this.f38368d = Arrays.asList(cls);
            this.f38367c = C8710i.m2885f(cls, true);
            this.f38366b = sb;
            this.f38365a = new C8689b(c8650n);
        }

        /* renamed from: a */
        void m3127a() {
            this.f38365a.m2935b();
        }
    }

    public C8650n() {
        super(EnumSet.of(GenericData.Flags.IGNORE_CASE));
    }

    /* renamed from: J */
    private static String m3149J(Object obj) {
        return obj instanceof Enum ? C8717l.m2857j((Enum) obj).m2862e() : obj.toString();
    }

    /* renamed from: a */
    private static void m3148a(Logger logger, StringBuilder sb, StringBuilder sb2, AbstractC8664z abstractC8664z, String str, Object obj, Writer writer) {
        if (obj == null || C8712j.m2880d(obj)) {
            return;
        }
        String m3149J = m3149J(obj);
        String str2 = (("Authorization".equalsIgnoreCase(str) || Headers.HEAD_KEY_COOKIE.equalsIgnoreCase(str)) && (logger == null || !logger.isLoggable(Level.ALL))) ? "<Not Logged>" : m3149J;
        if (sb != null) {
            sb.append(str);
            sb.append(": ");
            sb.append(str2);
            sb.append(C8688a0.f38484a);
        }
        if (sb2 != null) {
            sb2.append(" -H '");
            sb2.append(str);
            sb2.append(": ");
            sb2.append(str2);
            sb2.append("'");
        }
        if (abstractC8664z != null) {
            abstractC8664z.mo3041a(str, m3149J);
        }
        if (writer == null) {
            return;
        }
        writer.write(str);
        writer.write(": ");
        writer.write(m3149J);
        writer.write("\r\n");
    }

    /* renamed from: g */
    private <T> List<T> m3144g(T t) {
        if (t == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(t);
        return arrayList;
    }

    /* renamed from: j */
    private <T> T m3141j(List<T> list) {
        return list == null ? null : list.get(0);
    }

    /* renamed from: o */
    private static Object m3137o(Type type, List<Type> list, String str) {
        return C8712j.m2873k(C8712j.m2872l(list, type), str);
    }

    /* renamed from: p */
    public static void m3136p(C8650n c8650n, StringBuilder sb, StringBuilder sb2, Logger logger, AbstractC8664z abstractC8664z) {
        m3135q(c8650n, sb, sb2, logger, abstractC8664z, null);
    }

    /* renamed from: q */
    static void m3135q(C8650n c8650n, StringBuilder sb, StringBuilder sb2, Logger logger, AbstractC8664z abstractC8664z, Writer writer) {
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, Object> entry : c8650n.entrySet()) {
            String key = entry.getKey();
            C8731w.m2837c(hashSet.add(key), "multiple headers of the same name (headers are case insensitive): %s", key);
            Object value = entry.getValue();
            if (value != null) {
                C8717l m2889b = c8650n.getClassInfo().m2889b(key);
                if (m2889b != null) {
                    key = m2889b.m2862e();
                }
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    for (Object obj : C8695d0.m2916l(value)) {
                        m3148a(logger, sb, sb2, abstractC8664z, key, obj, writer);
                    }
                } else {
                    m3148a(logger, sb, sb2, abstractC8664z, key, value, writer);
                }
            }
        }
        if (writer != null) {
            writer.flush();
        }
    }

    /* renamed from: r */
    public static void m3134r(C8650n c8650n, StringBuilder sb, Logger logger, Writer writer) {
        m3135q(c8650n, sb, null, logger, null, writer);
    }

    /* renamed from: A */
    public C8650n m3158A(String str) {
        this.contentRange = m3144g(str);
        return this;
    }

    /* renamed from: B */
    public C8650n m3157B(String str) {
        this.contentType = m3144g(str);
        return this;
    }

    /* renamed from: C */
    public C8650n m3156C(String str) {
        this.ifMatch = m3144g(str);
        return this;
    }

    /* renamed from: D */
    public C8650n m3155D(String str) {
        this.ifModifiedSince = m3144g(str);
        return this;
    }

    /* renamed from: E */
    public C8650n m3154E(String str) {
        this.ifNoneMatch = m3144g(str);
        return this;
    }

    /* renamed from: F */
    public C8650n m3153F(String str) {
        this.ifRange = m3144g(str);
        return this;
    }

    /* renamed from: G */
    public C8650n m3152G(String str) {
        this.ifUnmodifiedSince = m3144g(str);
        return this;
    }

    /* renamed from: H */
    public C8650n m3151H(String str) {
        this.range = m3144g(str);
        return this;
    }

    /* renamed from: I */
    public C8650n m3150I(String str) {
        this.userAgent = m3144g(str);
        return this;
    }

    /* renamed from: b */
    public C8650n clone() {
        return (C8650n) super.clone();
    }

    /* renamed from: c */
    public final void m3146c(C8650n c8650n) {
        try {
            C8652b c8652b = new C8652b(this, null);
            m3136p(c8650n, null, null, null, new C8651a(this, c8652b));
            c8652b.m3127a();
        } catch (IOException e) {
            throw C8693c0.m2929a(e);
        }
    }

    /* renamed from: d */
    public final void m3145d(AbstractC8615a0 abstractC8615a0, StringBuilder sb) {
        clear();
        C8652b c8652b = new C8652b(this, sb);
        int mo3187f = abstractC8615a0.mo3187f();
        for (int i = 0; i < mo3187f; i++) {
            m3138n(abstractC8615a0.mo3186g(i), abstractC8615a0.mo3185h(i), c8652b);
        }
        c8652b.m3127a();
    }

    public final String getContentType() {
        return (String) m3141j(this.contentType);
    }

    public final String getLocation() {
        return (String) m3141j(this.location);
    }

    /* renamed from: h */
    public final Long m3143h() {
        return (Long) m3141j(this.contentLength);
    }

    /* renamed from: i */
    public final String m3142i() {
        return (String) m3141j(this.contentRange);
    }

    /* renamed from: l */
    public final String m3140l() {
        return (String) m3141j(this.range);
    }

    /* renamed from: m */
    public final String m3139m() {
        return (String) m3141j(this.userAgent);
    }

    /* renamed from: n */
    void m3138n(String str, String str2, C8652b c8652b) {
        List<Type> list = c8652b.f38368d;
        C8710i c8710i = c8652b.f38367c;
        C8689b c8689b = c8652b.f38365a;
        StringBuilder sb = c8652b.f38366b;
        if (sb != null) {
            sb.append(str + ": " + str2);
            sb.append(C8688a0.f38484a);
        }
        C8717l m2889b = c8710i.m2889b(str);
        if (m2889b == null) {
            ArrayList arrayList = (ArrayList) get(str);
            ArrayList arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList();
                set(str, arrayList2);
            }
            arrayList2.add(str2);
            return;
        }
        Type m2872l = C8712j.m2872l(list, m2889b.m2863d());
        if (C8695d0.m2918j(m2872l)) {
            Class<?> m2922f = C8695d0.m2922f(list, C8695d0.m2926b(m2872l));
            c8689b.m2936a(m2889b.m2865b(), m2922f, m3137o(m2922f, list, str2));
        } else if (!C8695d0.m2917k(C8695d0.m2922f(list, m2872l), Iterable.class)) {
            m2889b.m2854m(this, m3137o(m2872l, list, str2));
        } else {
            Collection<Object> collection = (Collection) m2889b.m2860g(this);
            Collection<Object> collection2 = collection;
            if (collection == null) {
                collection2 = C8712j.m2876h(m2872l);
                m2889b.m2854m(this, collection2);
            }
            collection2.add(m3137o(m2872l == Object.class ? null : C8695d0.m2924d(m2872l), list, str2));
        }
    }

    /* renamed from: s */
    public C8650n set(String str, Object obj) {
        return (C8650n) super.set(str, obj);
    }

    /* renamed from: t */
    public C8650n m3132t(String str) {
        this.acceptEncoding = m3144g(str);
        return this;
    }

    /* renamed from: v */
    public C8650n m3131v(String str) {
        return m3130w(m3144g(str));
    }

    /* renamed from: w */
    public C8650n m3130w(List<String> list) {
        this.authorization = list;
        return this;
    }

    /* renamed from: x */
    public C8650n m3129x(String str) {
        this.contentEncoding = m3144g(str);
        return this;
    }

    /* renamed from: y */
    public C8650n m3128y(Long l) {
        this.contentLength = m3144g(l);
        return this;
    }
}
