package com.dropbox.core.http;

import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final long f17778a = TimeUnit.SECONDS.toMillis(20);

    /* renamed from: b  reason: collision with root package name */
    public static final long f17779b = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: com.dropbox.core.http.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/a$a.class */
    public static final class C0354a {

        /* renamed from: a  reason: collision with root package name */
        public final String f17780a;

        /* renamed from: b  reason: collision with root package name */
        final String f17781b;

        public C0354a(String str, String str2) {
            this.f17780a = str;
            this.f17781b = str2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f17782a;

        /* renamed from: b  reason: collision with root package name */
        public final InputStream f17783b;

        /* renamed from: c  reason: collision with root package name */
        public final Map<String, List<String>> f17784c;

        public b(int i, InputStream inputStream, Map<String, ? extends List<String>> map) {
            this.f17782a = i;
            this.f17783b = inputStream;
            this.f17784c = a(map);
        }

        private static final Map<String, List<String>> a(Map<String, ? extends List<String>> map) {
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (Map.Entry<String, ? extends List<String>> entry : map.entrySet()) {
                if (!(entry.getKey() == null || entry.getKey().trim().length() == 0)) {
                    treeMap.put(entry.getKey(), Collections.unmodifiableList((List) entry.getValue()));
                }
            }
            return Collections.unmodifiableMap(treeMap);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/a$c.class */
    public static abstract class c {

        /* renamed from: a  reason: collision with root package name */
        protected IOUtil.a f17785a;

        public abstract OutputStream a();

        public void a(IOUtil.a aVar) {
            this.f17785a = null;
        }

        public void a(byte[] bArr) throws IOException {
            OutputStream a2 = a();
            try {
                a2.write(bArr);
            } finally {
                a2.close();
            }
        }

        public abstract void b();

        public abstract b c() throws IOException;
    }

    public abstract c a(String str, Iterable<C0354a> iterable) throws IOException;

    public c b(String str, Iterable<C0354a> iterable) throws IOException {
        return a(str, iterable);
    }
}
