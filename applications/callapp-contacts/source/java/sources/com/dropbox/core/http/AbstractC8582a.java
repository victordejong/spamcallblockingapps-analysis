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
/* renamed from: com.dropbox.core.http.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/a.class */
public abstract class AbstractC8582a {

    /* renamed from: a */
    public static final long f30562a = TimeUnit.SECONDS.toMillis(20);

    /* renamed from: b */
    public static final long f30563b = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: com.dropbox.core.http.a$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/a$a.class */
    public static final class C8583a {

        /* renamed from: a */
        public final String f30564a;

        /* renamed from: b */
        final String f30565b;

        public C8583a(String str, String str2) {
            this.f30564a = str;
            this.f30565b = str2;
        }
    }

    /* renamed from: com.dropbox.core.http.a$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/a$b.class */
    public static final class C8584b {

        /* renamed from: a */
        public final int f30566a;

        /* renamed from: b */
        public final InputStream f30567b;

        /* renamed from: c */
        public final Map<String, List<String>> f30568c;

        public C8584b(int i, InputStream inputStream, Map<String, ? extends List<String>> map) {
            this.f30566a = i;
            this.f30567b = inputStream;
            this.f30568c = m25302a(map);
        }

        /* renamed from: a */
        private static final Map<String, List<String>> m25302a(Map<String, ? extends List<String>> map) {
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (Map.Entry<String, ? extends List<String>> entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getKey().trim().length() != 0) {
                    treeMap.put(entry.getKey(), Collections.unmodifiableList(entry.getValue()));
                }
            }
            return Collections.unmodifiableMap(treeMap);
        }
    }

    /* renamed from: com.dropbox.core.http.a$c */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/http/a$c.class */
    public static abstract class AbstractC8585c {

        /* renamed from: a */
        protected IOUtil.AbstractC8630a f30569a;

        /* renamed from: a */
        public abstract OutputStream mo25287a();

        /* renamed from: a */
        public void mo25286a(IOUtil.AbstractC8630a abstractC8630a) {
            this.f30569a = null;
        }

        /* renamed from: a */
        public void mo25295a(byte[] bArr) throws IOException {
            OutputStream mo25287a = mo25287a();
            try {
                mo25287a.write(bArr);
            } finally {
                mo25287a.close();
            }
        }

        /* renamed from: b */
        public abstract void mo25285b();

        /* renamed from: c */
        public abstract C8584b mo25284c() throws IOException;
    }

    /* renamed from: a */
    public abstract AbstractC8585c mo25291a(String str, Iterable<C8583a> iterable) throws IOException;

    /* renamed from: b */
    public AbstractC8585c mo25288b(String str, Iterable<C8583a> iterable) throws IOException {
        return mo25291a(str, iterable);
    }
}
