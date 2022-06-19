package com.bumptech.glide.load.p081b;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.b.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/j.class */
public final class C1536j implements AbstractC1533h {

    /* renamed from: c */
    private final Map<String, List<AbstractC1535i>> f4884c;

    /* renamed from: d */
    private volatile Map<String, String> f4885d;

    /* renamed from: com.bumptech.glide.load.b.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/j$a.class */
    public static final class C1537a {

        /* renamed from: a */
        private static final String f4886a = m16853b();

        /* renamed from: b */
        private static final Map<String, List<AbstractC1535i>> f4887b;

        /* renamed from: c */
        private boolean f4888c = true;

        /* renamed from: d */
        private Map<String, List<AbstractC1535i>> f4889d = f4887b;

        /* renamed from: e */
        private boolean f4890e = true;

        static {
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(f4886a)) {
                hashMap.put("User-Agent", Collections.singletonList(new C1538b(f4886a)));
            }
            f4887b = Collections.unmodifiableMap(hashMap);
        }

        /* renamed from: b */
        static String m16853b() {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
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
                property = sb.toString();
            }
            return property;
        }

        /* renamed from: a */
        public C1536j m16854a() {
            this.f4888c = true;
            return new C1536j(this.f4889d);
        }
    }

    /* renamed from: com.bumptech.glide.load.b.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/j$b.class */
    static final class C1538b implements AbstractC1535i {

        /* renamed from: a */
        private final String f4891a;

        C1538b(String str) {
            this.f4891a = str;
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1535i
        /* renamed from: a */
        public String mo16852a() {
            return this.f4891a;
        }

        public boolean equals(Object obj) {
            return obj instanceof C1538b ? this.f4891a.equals(((C1538b) obj).f4891a) : false;
        }

        public int hashCode() {
            return this.f4891a.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f4891a + "'}";
        }
    }

    C1536j(Map<String, List<AbstractC1535i>> map) {
        this.f4884c = Collections.unmodifiableMap(map);
    }

    /* renamed from: a */
    private String m16856a(List<AbstractC1535i> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            String mo16852a = list.get(i).mo16852a();
            if (!TextUtils.isEmpty(mo16852a)) {
                sb.append(mo16852a);
                if (i != list.size() - 1) {
                    sb.append(',');
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    private Map<String, String> m16855b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<AbstractC1535i>> entry : this.f4884c.entrySet()) {
            String m16856a = m16856a(entry.getValue());
            if (!TextUtils.isEmpty(m16856a)) {
                hashMap.put(entry.getKey(), m16856a);
            }
        }
        return hashMap;
    }

    @Override // com.bumptech.glide.load.p081b.AbstractC1533h
    /* renamed from: a */
    public Map<String, String> mo16857a() {
        if (this.f4885d == null) {
            synchronized (this) {
                if (this.f4885d == null) {
                    this.f4885d = Collections.unmodifiableMap(m16855b());
                }
            }
        }
        return this.f4885d;
    }

    public boolean equals(Object obj) {
        return obj instanceof C1536j ? this.f4884c.equals(((C1536j) obj).f4884c) : false;
    }

    public int hashCode() {
        return this.f4884c.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f4884c + '}';
    }
}
