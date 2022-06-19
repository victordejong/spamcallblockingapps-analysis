package com.google.api.client.http;

import com.google.api.client.util.C8731w;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.p290f0.AbstractC8702b;
import com.google.api.client.util.p290f0.C8701a;
import com.google.api.client.util.p290f0.C8703c;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.api.client.http.i */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/i.class */
public class C8645i extends GenericData {

    /* renamed from: d */
    private static final AbstractC8702b f38353d = new C8703c("=&-_.!~*'()@:$,;/?:");

    /* renamed from: e */
    private String f38354e;

    /* renamed from: f */
    private String f38355f;

    /* renamed from: g */
    private String f38356g;

    /* renamed from: h */
    private int f38357h;

    /* renamed from: i */
    private List<String> f38358i;

    /* renamed from: j */
    private String f38359j;

    /* renamed from: k */
    private boolean f38360k;

    public C8645i() {
        this.f38357h = -1;
    }

    public C8645i(String str) {
        this(str, false);
    }

    private C8645i(String str, String str2, int i, String str3, String str4, String str5, String str6, boolean z) {
        this.f38357h = -1;
        this.f38354e = str.toLowerCase(Locale.US);
        this.f38355f = str2;
        this.f38357h = i;
        this.f38358i = m3164p(str3, z);
        this.f38360k = z;
        if (z) {
            this.f38359j = str4;
            if (str5 != null) {
                C8625e0.m3205d(str5, this, false);
            }
            this.f38356g = str6;
            return;
        }
        this.f38359j = str4 != null ? C8701a.m2910a(str4) : null;
        if (str5 != null) {
            C8625e0.m3206c(str5, this);
        }
        this.f38356g = str6 != null ? C8701a.m2910a(str6) : null;
    }

    public C8645i(String str, boolean z) {
        this(m3167m(str), z);
    }

    public C8645i(URL url, boolean z) {
        this(url.getProtocol(), url.getHost(), url.getPort(), url.getPath(), url.getRef(), url.getQuery(), url.getUserInfo(), z);
    }

    /* renamed from: a */
    public static void m3176a(Set<Map.Entry<String, Object>> set, StringBuilder sb, boolean z) {
        boolean z2 = true;
        for (Map.Entry<String, Object> entry : set) {
            Object value = entry.getValue();
            if (value != null) {
                String key = z ? entry.getKey() : C8701a.m2904g(entry.getKey());
                if (value instanceof Collection) {
                    Iterator it = ((Collection) value).iterator();
                    boolean z3 = z2;
                    while (true) {
                        boolean z4 = z3;
                        z2 = z4;
                        if (it.hasNext()) {
                            z3 = m3175b(z4, sb, key, it.next(), z);
                        }
                    }
                } else {
                    z2 = m3175b(z2, sb, key, value, z);
                }
            }
        }
    }

    /* renamed from: b */
    private static boolean m3175b(boolean z, StringBuilder sb, String str, Object obj, boolean z2) {
        if (z) {
            z = false;
            sb.append('?');
        } else {
            sb.append('&');
        }
        sb.append(str);
        String obj2 = z2 ? obj.toString() : C8701a.m2904g(obj.toString());
        if (obj2.length() != 0) {
            sb.append('=');
            sb.append(obj2);
        }
        return z;
    }

    /* renamed from: c */
    private void m3174c(StringBuilder sb) {
        int size = this.f38358i.size();
        for (int i = 0; i < size; i++) {
            String str = this.f38358i.get(i);
            if (i != 0) {
                sb.append('/');
            }
            if (str.length() != 0) {
                if (!this.f38360k) {
                    str = C8701a.m2906e(str);
                }
                sb.append(str);
            }
        }
    }

    /* renamed from: m */
    private static URL m3167m(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: p */
    public static List<String> m3164p(String str, boolean z) {
        if (str == null || str.length() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        boolean z2 = true;
        int i = 0;
        while (true) {
            int i2 = i;
            if (!z2) {
                return arrayList;
            }
            int indexOf = str.indexOf(47, i2);
            z2 = indexOf != -1;
            String substring = z2 ? str.substring(i2, indexOf) : str.substring(i2);
            if (!z) {
                substring = C8701a.m2909b(substring);
            }
            arrayList.add(substring);
            i = indexOf + 1;
        }
    }

    /* renamed from: d */
    public final String m3173d() {
        return m3172g() + m3171h();
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj) && (obj instanceof C8645i)) {
            return m3173d().equals(((C8645i) obj).m3173d());
        }
        return false;
    }

    /* renamed from: g */
    public final String m3172g() {
        StringBuilder sb = new StringBuilder();
        sb.append((String) C8731w.m2836d(this.f38354e));
        sb.append("://");
        String str = this.f38356g;
        if (str != null) {
            if (!this.f38360k) {
                str = C8701a.m2903h(str);
            }
            sb.append(str);
            sb.append('@');
        }
        sb.append((String) C8731w.m2836d(this.f38355f));
        int i = this.f38357h;
        if (i != -1) {
            sb.append(':');
            sb.append(i);
        }
        return sb.toString();
    }

    /* renamed from: h */
    public final String m3171h() {
        StringBuilder sb = new StringBuilder();
        if (this.f38358i != null) {
            m3174c(sb);
        }
        m3176a(entrySet(), sb, this.f38360k);
        String str = this.f38359j;
        if (str != null) {
            sb.append('#');
            if (!this.f38360k) {
                str = f38353d.mo2902a(str);
            }
            sb.append(str);
        }
        return sb.toString();
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return m3173d().hashCode();
    }

    /* renamed from: i */
    public C8645i clone() {
        C8645i c8645i = (C8645i) super.clone();
        if (this.f38358i != null) {
            c8645i.f38358i = new ArrayList(this.f38358i);
        }
        return c8645i;
    }

    /* renamed from: j */
    public String m3169j() {
        return this.f38355f;
    }

    /* renamed from: l */
    public String m3168l() {
        if (this.f38358i == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        m3174c(sb);
        return sb.toString();
    }

    /* renamed from: n */
    public C8645i set(String str, Object obj) {
        return (C8645i) super.set(str, obj);
    }

    /* renamed from: o */
    public void m3165o(String str) {
        this.f38358i = m3164p(str, this.f38360k);
    }

    /* renamed from: q */
    public final URL m3163q() {
        return m3167m(m3173d());
    }

    /* renamed from: r */
    public final URL m3162r(String str) {
        try {
            return new URL(m3163q(), str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public String toString() {
        return m3173d();
    }
}
