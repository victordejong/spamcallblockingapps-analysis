package com.google.api.client.http;

import com.google.api.client.a.ae;
import com.google.api.client.a.ag;
import com.google.api.client.a.h;
import com.google.api.client.a.j;
import com.google.api.client.a.n;
import com.google.api.client.a.q;
import com.google.common.base.m;
import com.google.common.base.r;
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
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/n.class */
public final class n extends com.google.api.client.a.n {
    @q(a = "Accept")
    private List<String> accept;
    @q(a = "Accept-Encoding")
    private List<String> acceptEncoding = new ArrayList(Collections.singleton("gzip"));
    @q(a = "Age")
    private List<Long> age;
    @q(a = "WWW-Authenticate")
    public List<String> authenticate;
    @q(a = "Authorization")
    public List<String> authorization;
    @q(a = "Cache-Control")
    private List<String> cacheControl;
    @q(a = "Content-Encoding")
    private List<String> contentEncoding;
    @q(a = "Content-Length")
    private List<Long> contentLength;
    @q(a = "Content-MD5")
    private List<String> contentMD5;
    @q(a = "Content-Range")
    private List<String> contentRange;
    @q(a = "Content-Type")
    List<String> contentType;
    @q(a = "Cookie")
    private List<String> cookie;
    @q(a = "Date")
    private List<String> date;
    @q(a = "ETag")
    private List<String> etag;
    @q(a = "Expires")
    private List<String> expires;
    @q(a = "If-Match")
    private List<String> ifMatch;
    @q(a = "If-Modified-Since")
    private List<String> ifModifiedSince;
    @q(a = "If-None-Match")
    private List<String> ifNoneMatch;
    @q(a = "If-Range")
    private List<String> ifRange;
    @q(a = "If-Unmodified-Since")
    private List<String> ifUnmodifiedSince;
    @q(a = "Last-Modified")
    private List<String> lastModified;
    @q(a = "Location")
    private List<String> location;
    @q(a = "MIME-Version")
    private List<String> mimeVersion;
    @q(a = "Range")
    private List<String> range;
    @q(a = "Retry-After")
    private List<String> retryAfter;
    @q(a = "User-Agent")
    List<String> userAgent;
    @q(a = "Warning")
    private List<String> warning;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/n$a.class */
    static final class a extends z {

        /* renamed from: a  reason: collision with root package name */
        private final n f31812a;

        /* renamed from: b  reason: collision with root package name */
        private final b f31813b;

        a(n nVar, b bVar) {
            this.f31812a = nVar;
            this.f31813b = bVar;
        }

        @Override // com.google.api.client.http.z
        public final void addHeader(String str, String str2) {
            this.f31812a.a(str, str2, this.f31813b);
        }

        @Override // com.google.api.client.http.z
        public final aa execute() throws IOException {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/http/n$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final com.google.api.client.a.b f31814a;

        /* renamed from: b  reason: collision with root package name */
        final StringBuilder f31815b;

        /* renamed from: c  reason: collision with root package name */
        final h f31816c;

        /* renamed from: d  reason: collision with root package name */
        final List<Type> f31817d;

        public b(n nVar, StringBuilder sb) {
            Class<?> cls = nVar.getClass();
            this.f31817d = Arrays.asList(cls);
            this.f31816c = h.a(cls, true);
            this.f31815b = sb;
            this.f31814a = new com.google.api.client.a.b(nVar);
        }
    }

    public n() {
        super(EnumSet.of(n.c.IGNORE_CASE));
    }

    private static Object a(Type type, List<Type> list, String str) {
        return j.a(j.a(list, type), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(List<T> list) {
        if (list == null) {
            return null;
        }
        return list.get(0);
    }

    private static <T> List<T> a(T t) {
        if (t == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(t);
        return arrayList;
    }

    public static void a(n nVar, Writer writer) throws IOException {
        a(nVar, null, null, null, null, writer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(n nVar, StringBuilder sb, StringBuilder sb2, Logger logger, z zVar) throws IOException {
        a(nVar, sb, sb2, logger, zVar, null);
    }

    private static void a(n nVar, StringBuilder sb, StringBuilder sb2, Logger logger, z zVar, Writer writer) throws IOException {
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, Object> entry : nVar.entrySet()) {
            String key = entry.getKey();
            m.a(hashSet.add(key), "multiple headers of the same name (headers are case insensitive): %s", key);
            Object value = entry.getValue();
            if (value != null) {
                com.google.api.client.a.m a2 = nVar.getClassInfo().a(key);
                if (a2 != null) {
                    key = a2.f31651c;
                }
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    for (Object obj : ag.a(value)) {
                        a(logger, sb, sb2, zVar, key, obj, writer);
                    }
                } else {
                    a(logger, sb, sb2, zVar, key, value, writer);
                }
            }
        }
        if (writer != null) {
            writer.flush();
        }
    }

    private static void a(Logger logger, StringBuilder sb, StringBuilder sb2, z zVar, String str, Object obj, Writer writer) throws IOException {
        if (obj != null && !j.a(obj)) {
            String obj2 = obj instanceof Enum ? com.google.api.client.a.m.a((Enum<?>) obj).f31651c : obj.toString();
            String str2 = (("Authorization".equalsIgnoreCase(str) || "Cookie".equalsIgnoreCase(str)) && (logger == null || !logger.isLoggable(Level.ALL))) ? "<Not Logged>" : obj2;
            if (sb != null) {
                sb.append(str);
                sb.append(": ");
                sb.append(str2);
                sb.append(ae.f31603a);
            }
            if (sb2 != null) {
                sb2.append(" -H '");
                sb2.append(str);
                sb2.append(": ");
                sb2.append(str2);
                sb2.append("'");
            }
            if (zVar != null) {
                zVar.addHeader(str, obj2);
            }
            if (writer != null) {
                writer.write(str);
                writer.write(": ");
                writer.write(obj2);
                writer.write("\r\n");
            }
        }
    }

    public final n a() {
        this.acceptEncoding = a((Object) null);
        return this;
    }

    public final n a(Long l) {
        this.contentLength = a(l);
        return this;
    }

    public final n a(String str) {
        this.authorization = a(str);
        return this;
    }

    /* renamed from: a */
    public final n set(String str, Object obj) {
        return (n) super.set(str, obj);
    }

    public final void a(aa aaVar, StringBuilder sb) throws IOException {
        clear();
        b bVar = new b(this, sb);
        int headerCount = aaVar.getHeaderCount();
        for (int i = 0; i < headerCount; i++) {
            a(aaVar.getHeaderName(i), aaVar.getHeaderValue(i), bVar);
        }
        bVar.f31814a.a();
    }

    public final void a(n nVar) {
        try {
            b bVar = new b(this, null);
            a(nVar, null, null, null, new a(this, bVar));
            bVar.f31814a.a();
        } catch (IOException e) {
            throw r.a(e);
        }
    }

    final void a(String str, String str2, b bVar) {
        List<Type> list = bVar.f31817d;
        h hVar = bVar.f31816c;
        com.google.api.client.a.b bVar2 = bVar.f31814a;
        StringBuilder sb = bVar.f31815b;
        if (sb != null) {
            sb.append(str + ": " + str2);
            sb.append(ae.f31603a);
        }
        com.google.api.client.a.m a2 = hVar.a(str);
        if (a2 != null) {
            Type a3 = j.a(list, a2.f31650b.getGenericType());
            if (ag.a(a3)) {
                Class<?> a4 = ag.a(list, ag.b(a3));
                bVar2.a(a2.f31650b, a4, a(a4, list, str2));
            } else if (ag.a(ag.a(list, a3), (Class<?>) Iterable.class)) {
                Collection<Object> collection = (Collection) a2.a(this);
                Collection<Object> collection2 = collection;
                if (collection == null) {
                    collection2 = j.b(a3);
                    a2.a(this, collection2);
                }
                collection2.add(a(a3 == Object.class ? null : ag.a(a3, Iterable.class, 0), list, str2));
            } else {
                a2.a(this, a(a3, list, str2));
            }
        } else {
            ArrayList arrayList = (ArrayList) get(str);
            ArrayList arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList();
                set(str, arrayList2);
            }
            arrayList2.add(str2);
        }
    }

    public final n b(String str) {
        this.contentEncoding = a(str);
        return this;
    }

    public final String b() {
        return (String) a((List<Object>) this.cacheControl);
    }

    public final n c(String str) {
        this.contentRange = a(str);
        return this;
    }

    public final Long c() {
        return (Long) a((List<Object>) this.contentLength);
    }

    public final n d(String str) {
        this.contentType = a(str);
        return this;
    }

    public final String d() {
        return (String) a((List<Object>) this.contentRange);
    }

    public final n e() {
        this.ifModifiedSince = a((Object) null);
        return this;
    }

    public final n e(String str) {
        this.range = a(str);
        return this;
    }

    public final n f() {
        this.ifMatch = a((Object) null);
        return this;
    }

    public final n f(String str) {
        this.userAgent = a(str);
        return this;
    }

    public final n g() {
        this.ifNoneMatch = a((Object) null);
        return this;
    }

    public final n h() {
        this.ifUnmodifiedSince = a((Object) null);
        return this;
    }

    public final n i() {
        this.ifRange = a((Object) null);
        return this;
    }

    public final String j() {
        return (String) a((List<Object>) this.location);
    }

    public final String k() {
        return (String) a((List<Object>) this.range);
    }

    public final Long l() {
        return (Long) a((List<Object>) this.age);
    }
}
