package com.bumptech.glide.load.p212i;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.Headers;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.i.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/j.class */
public final class C4181j implements AbstractC4178h {

    /* renamed from: c */
    private final Map<String, List<AbstractC4180i>> f13040c;

    /* renamed from: d */
    private volatile Map<String, String> f13041d;

    /* renamed from: com.bumptech.glide.load.i.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/j$a.class */
    public static final class C4182a {

        /* renamed from: a */
        private static final String f13042a;

        /* renamed from: b */
        private static final Map<String, List<AbstractC4180i>> f13043b;

        /* renamed from: c */
        private boolean f13044c = true;

        /* renamed from: d */
        private Map<String, List<AbstractC4180i>> f13045d = f13043b;

        /* renamed from: e */
        private boolean f13046e = true;

        static {
            String m23146b = m23146b();
            f13042a = m23146b;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(m23146b)) {
                hashMap.put(Headers.HEAD_KEY_USER_AGENT, Collections.singletonList(new C4183b(m23146b)));
            }
            f13043b = Collections.unmodifiableMap(hashMap);
        }

        /* renamed from: b */
        static String m23146b() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i = 0; i < length; i++) {
                char charAt = property.charAt(i);
                if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                    sb.append(charAt);
                } else {
                    sb.append('?');
                }
            }
            return sb.toString();
        }

        /* renamed from: a */
        public C4181j m23147a() {
            this.f13044c = true;
            return new C4181j(this.f13045d);
        }
    }

    /* renamed from: com.bumptech.glide.load.i.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/j$b.class */
    static final class C4183b implements AbstractC4180i {

        /* renamed from: a */
        private final String f13047a;

        C4183b(String str) {
            this.f13047a = str;
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4180i
        /* renamed from: a */
        public String mo23145a() {
            return this.f13047a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C4183b) {
                return this.f13047a.equals(((C4183b) obj).f13047a);
            }
            return false;
        }

        public int hashCode() {
            return this.f13047a.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f13047a + "'}";
        }
    }

    C4181j(Map<String, List<AbstractC4180i>> map) {
        this.f13040c = Collections.unmodifiableMap(map);
    }

    /* renamed from: a */
    private String m23149a(List<AbstractC4180i> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            String mo23145a = list.get(i).mo23145a();
            if (!TextUtils.isEmpty(mo23145a)) {
                sb.append(mo23145a);
                if (i != list.size() - 1) {
                    sb.append(',');
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    private Map<String, String> m23148b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<AbstractC4180i>> entry : this.f13040c.entrySet()) {
            String m23149a = m23149a(entry.getValue());
            if (!TextUtils.isEmpty(m23149a)) {
                hashMap.put(entry.getKey(), m23149a);
            }
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C4181j) {
            return this.f13040c.equals(((C4181j) obj).f13040c);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.p212i.AbstractC4178h
    public Map<String, String> getHeaders() {
        if (this.f13041d == null) {
            synchronized (this) {
                if (this.f13041d == null) {
                    this.f13041d = Collections.unmodifiableMap(m23148b());
                }
            }
        }
        return this.f13041d;
    }

    public int hashCode() {
        return this.f13040c.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f13040c + '}';
    }
}
