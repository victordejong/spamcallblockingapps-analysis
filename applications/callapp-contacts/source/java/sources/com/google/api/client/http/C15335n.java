package com.google.api.client.http;

import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15212ae;
import com.google.api.client.p379a.C15214ag;
import com.google.api.client.p379a.C15218b;
import com.google.api.client.p379a.C15228h;
import com.google.api.client.p379a.C15232j;
import com.google.api.client.p379a.C15240m;
import com.google.api.client.p379a.C15241n;
import com.google.common.base.C15391m;
import com.google.common.base.C15400r;
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
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/n.class */
public final class C15335n extends C15241n {
    @AbstractC15247q(m9209a = "Accept")
    private List<String> accept;
    @AbstractC15247q(m9209a = "Accept-Encoding")
    private List<String> acceptEncoding = new ArrayList(Collections.singleton("gzip"));
    @AbstractC15247q(m9209a = "Age")
    private List<Long> age;
    @AbstractC15247q(m9209a = "WWW-Authenticate")
    public List<String> authenticate;
    @AbstractC15247q(m9209a = "Authorization")
    public List<String> authorization;
    @AbstractC15247q(m9209a = "Cache-Control")
    private List<String> cacheControl;
    @AbstractC15247q(m9209a = "Content-Encoding")
    private List<String> contentEncoding;
    @AbstractC15247q(m9209a = "Content-Length")
    private List<Long> contentLength;
    @AbstractC15247q(m9209a = "Content-MD5")
    private List<String> contentMD5;
    @AbstractC15247q(m9209a = "Content-Range")
    private List<String> contentRange;
    @AbstractC15247q(m9209a = "Content-Type")
    List<String> contentType;
    @AbstractC15247q(m9209a = "Cookie")
    private List<String> cookie;
    @AbstractC15247q(m9209a = "Date")
    private List<String> date;
    @AbstractC15247q(m9209a = "ETag")
    private List<String> etag;
    @AbstractC15247q(m9209a = "Expires")
    private List<String> expires;
    @AbstractC15247q(m9209a = "If-Match")
    private List<String> ifMatch;
    @AbstractC15247q(m9209a = "If-Modified-Since")
    private List<String> ifModifiedSince;
    @AbstractC15247q(m9209a = "If-None-Match")
    private List<String> ifNoneMatch;
    @AbstractC15247q(m9209a = "If-Range")
    private List<String> ifRange;
    @AbstractC15247q(m9209a = "If-Unmodified-Since")
    private List<String> ifUnmodifiedSince;
    @AbstractC15247q(m9209a = "Last-Modified")
    private List<String> lastModified;
    @AbstractC15247q(m9209a = "Location")
    private List<String> location;
    @AbstractC15247q(m9209a = "MIME-Version")
    private List<String> mimeVersion;
    @AbstractC15247q(m9209a = "Range")
    private List<String> range;
    @AbstractC15247q(m9209a = "Retry-After")
    private List<String> retryAfter;
    @AbstractC15247q(m9209a = "User-Agent")
    List<String> userAgent;
    @AbstractC15247q(m9209a = "Warning")
    private List<String> warning;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.http.n$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/n$a.class */
    public static final class C15336a extends AbstractC15349z {

        /* renamed from: a */
        private final C15335n f55342a;

        /* renamed from: b */
        private final C15337b f55343b;

        C15336a(C15335n c15335n, C15337b c15337b) {
            this.f55342a = c15335n;
            this.f55343b = c15337b;
        }

        @Override // com.google.api.client.http.AbstractC15349z
        public final void addHeader(String str, String str2) {
            this.f55342a.m9090a(str, str2, this.f55343b);
        }

        @Override // com.google.api.client.http.AbstractC15349z
        public final AbstractC15313aa execute() throws IOException {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.api.client.http.n$b */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/n$b.class */
    public static final class C15337b {

        /* renamed from: a */
        final C15218b f55344a;

        /* renamed from: b */
        final StringBuilder f55345b;

        /* renamed from: c */
        final C15228h f55346c;

        /* renamed from: d */
        final List<Type> f55347d;

        public C15337b(C15335n c15335n, StringBuilder sb) {
            Class<?> cls = c15335n.getClass();
            this.f55347d = Arrays.asList(cls);
            this.f55346c = C15228h.m9245a(cls, true);
            this.f55345b = sb;
            this.f55344a = new C15218b(c15335n);
        }
    }

    public C15335n() {
        super(EnumSet.of(C15241n.EnumC15244c.IGNORE_CASE));
    }

    /* renamed from: a */
    private static Object m9089a(Type type, List<Type> list, String str) {
        return C15232j.m9238a(C15232j.m9237a(list, type), str);
    }

    /* renamed from: a */
    public static <T> T m9088a(List<T> list) {
        if (list == null) {
            return null;
        }
        return list.get(0);
    }

    /* renamed from: a */
    private static <T> List<T> m9093a(T t) {
        if (t == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(t);
        return arrayList;
    }

    /* renamed from: a */
    public static void m9097a(C15335n c15335n, Writer writer) throws IOException {
        m9095a(c15335n, null, null, null, null, writer);
    }

    /* renamed from: a */
    public static void m9096a(C15335n c15335n, StringBuilder sb, StringBuilder sb2, Logger logger, AbstractC15349z abstractC15349z) throws IOException {
        m9095a(c15335n, sb, sb2, logger, abstractC15349z, null);
    }

    /* renamed from: a */
    private static void m9095a(C15335n c15335n, StringBuilder sb, StringBuilder sb2, Logger logger, AbstractC15349z abstractC15349z, Writer writer) throws IOException {
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, Object> entry : c15335n.entrySet()) {
            String key = entry.getKey();
            C15391m.m8936a(hashSet.add(key), "multiple headers of the same name (headers are case insensitive): %s", key);
            Object value = entry.getValue();
            if (value != null) {
                C15240m m9244a = c15335n.getClassInfo().m9244a(key);
                if (m9244a != null) {
                    key = m9244a.f55116c;
                }
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    for (Object obj : C15214ag.m9267a(value)) {
                        m9087a(logger, sb, sb2, abstractC15349z, key, obj, writer);
                    }
                } else {
                    m9087a(logger, sb, sb2, abstractC15349z, key, value, writer);
                }
            }
        }
        if (writer != null) {
            writer.flush();
        }
    }

    /* renamed from: a */
    private static void m9087a(Logger logger, StringBuilder sb, StringBuilder sb2, AbstractC15349z abstractC15349z, String str, Object obj, Writer writer) throws IOException {
        if (obj == null || C15232j.m9241a(obj)) {
            return;
        }
        String obj2 = obj instanceof Enum ? C15240m.m9222a((Enum<?>) obj).f55116c : obj.toString();
        String str2 = (("Authorization".equalsIgnoreCase(str) || "Cookie".equalsIgnoreCase(str)) && (logger == null || !logger.isLoggable(Level.ALL))) ? "<Not Logged>" : obj2;
        if (sb != null) {
            sb.append(str);
            sb.append(": ");
            sb.append(str2);
            sb.append(C15212ae.f55053a);
        }
        if (sb2 != null) {
            sb2.append(" -H '");
            sb2.append(str);
            sb2.append(": ");
            sb2.append(str2);
            sb2.append("'");
        }
        if (abstractC15349z != null) {
            abstractC15349z.addHeader(str, obj2);
        }
        if (writer == null) {
            return;
        }
        writer.write(str);
        writer.write(": ");
        writer.write(obj2);
        writer.write("\r\n");
    }

    /* renamed from: a */
    public final C15335n m9100a() {
        this.acceptEncoding = m9093a((Object) null);
        return this;
    }

    /* renamed from: a */
    public final C15335n m9094a(Long l) {
        this.contentLength = m9093a(l);
        return this;
    }

    /* renamed from: a */
    public final C15335n m9092a(String str) {
        this.authorization = m9093a(str);
        return this;
    }

    /* renamed from: a */
    public final C15335n set(String str, Object obj) {
        return (C15335n) super.set(str, obj);
    }

    /* renamed from: a */
    public final void m9099a(AbstractC15313aa abstractC15313aa, StringBuilder sb) throws IOException {
        clear();
        C15337b c15337b = new C15337b(this, sb);
        int headerCount = abstractC15313aa.getHeaderCount();
        for (int i = 0; i < headerCount; i++) {
            m9090a(abstractC15313aa.getHeaderName(i), abstractC15313aa.getHeaderValue(i), c15337b);
        }
        c15337b.f55344a.m9256a();
    }

    /* renamed from: a */
    public final void m9098a(C15335n c15335n) {
        try {
            C15337b c15337b = new C15337b(this, null);
            m9096a(c15335n, null, null, null, new C15336a(this, c15337b));
            c15337b.f55344a.m9256a();
        } catch (IOException e) {
            throw C15400r.m8918a(e);
        }
    }

    /* renamed from: a */
    final void m9090a(String str, String str2, C15337b c15337b) {
        List<Type> list = c15337b.f55347d;
        C15228h c15228h = c15337b.f55346c;
        C15218b c15218b = c15337b.f55344a;
        StringBuilder sb = c15337b.f55345b;
        if (sb != null) {
            sb.append(str + ": " + str2);
            sb.append(C15212ae.f55053a);
        }
        C15240m m9244a = c15228h.m9244a(str);
        if (m9244a == null) {
            ArrayList arrayList = (ArrayList) get(str);
            ArrayList arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList();
                set(str, arrayList2);
            }
            arrayList2.add(str2);
            return;
        }
        Type m9237a = C15232j.m9237a(list, m9244a.f55115b.getGenericType());
        if (C15214ag.m9265a(m9237a)) {
            Class<?> m9260a = C15214ag.m9260a(list, C15214ag.m9258b(m9237a));
            c15218b.m9255a(m9244a.f55115b, m9260a, m9089a(m9260a, list, str2));
        } else if (!C15214ag.m9269a(C15214ag.m9260a(list, m9237a), (Class<?>) Iterable.class)) {
            m9244a.m9220a(this, m9089a(m9237a, list, str2));
        } else {
            Collection<Object> collection = (Collection) m9244a.m9221a(this);
            Collection<Object> collection2 = collection;
            if (collection == null) {
                collection2 = C15232j.m9234b(m9237a);
                m9244a.m9220a(this, collection2);
            }
            collection2.add(m9089a(m9237a == Object.class ? null : C15214ag.m9263a(m9237a, Iterable.class, 0), list, str2));
        }
    }

    /* renamed from: b */
    public final C15335n m9085b(String str) {
        this.contentEncoding = m9093a(str);
        return this;
    }

    /* renamed from: b */
    public final String m9086b() {
        return (String) m9088a((List<Object>) this.cacheControl);
    }

    /* renamed from: c */
    public final C15335n m9083c(String str) {
        this.contentRange = m9093a(str);
        return this;
    }

    /* renamed from: c */
    public final Long m9084c() {
        return (Long) m9088a((List<Object>) this.contentLength);
    }

    /* renamed from: d */
    public final C15335n m9081d(String str) {
        this.contentType = m9093a(str);
        return this;
    }

    /* renamed from: d */
    public final String m9082d() {
        return (String) m9088a((List<Object>) this.contentRange);
    }

    /* renamed from: e */
    public final C15335n m9080e() {
        this.ifModifiedSince = m9093a((Object) null);
        return this;
    }

    /* renamed from: e */
    public final C15335n m9079e(String str) {
        this.range = m9093a(str);
        return this;
    }

    /* renamed from: f */
    public final C15335n m9078f() {
        this.ifMatch = m9093a((Object) null);
        return this;
    }

    /* renamed from: f */
    public final C15335n m9077f(String str) {
        this.userAgent = m9093a(str);
        return this;
    }

    /* renamed from: g */
    public final C15335n m9076g() {
        this.ifNoneMatch = m9093a((Object) null);
        return this;
    }

    /* renamed from: h */
    public final C15335n m9075h() {
        this.ifUnmodifiedSince = m9093a((Object) null);
        return this;
    }

    /* renamed from: i */
    public final C15335n m9074i() {
        this.ifRange = m9093a((Object) null);
        return this;
    }

    /* renamed from: j */
    public final String m9073j() {
        return (String) m9088a((List<Object>) this.location);
    }

    /* renamed from: k */
    public final String m9072k() {
        return (String) m9088a((List<Object>) this.range);
    }

    /* renamed from: l */
    public final Long m9071l() {
        return (Long) m9088a((List<Object>) this.age);
    }
}
