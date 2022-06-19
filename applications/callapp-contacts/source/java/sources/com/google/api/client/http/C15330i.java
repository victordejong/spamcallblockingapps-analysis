package com.google.api.client.http;

import com.google.api.client.p379a.C15241n;
import com.google.api.client.p379a.p380a.AbstractC15202b;
import com.google.api.client.p379a.p380a.C15201a;
import com.google.api.client.p379a.p380a.C15203c;
import com.google.common.base.C15391m;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.api.client.http.i */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/i.class */
public final class C15330i extends C15241n {

    /* renamed from: e */
    private static final AbstractC15202b f55332e = new C15203c("=&-_.!~*'()@:$,;/?:");

    /* renamed from: a */
    String f55333a;

    /* renamed from: b */
    List<String> f55334b;

    /* renamed from: c */
    public String f55335c;

    /* renamed from: d */
    boolean f55336d;

    /* renamed from: f */
    private String f55337f;

    /* renamed from: g */
    private String f55338g;

    /* renamed from: h */
    private int f55339h;

    public C15330i() {
        this.f55339h = -1;
    }

    public C15330i(String str) {
        this(str, false);
    }

    private C15330i(String str, String str2, int i, String str3, String str4, String str5, String str6, boolean z) {
        String str7;
        this.f55339h = -1;
        this.f55337f = str.toLowerCase(Locale.US);
        this.f55333a = str2;
        this.f55339h = i;
        this.f55334b = m9110a(str3, z);
        this.f55336d = z;
        if (z) {
            this.f55335c = str4;
            str7 = str6;
            if (str5 != null) {
                C15321af.m9117a(str5, (Object) this, false);
                str7 = str6;
            }
        } else {
            this.f55335c = str4 != null ? C15201a.m9296c(str4) : null;
            if (str5 != null) {
                C15321af.m9118a(str5, this);
            }
            str7 = str6 != null ? C15201a.m9296c(str6) : null;
        }
        this.f55338g = str7;
    }

    public C15330i(String str, boolean z) {
        this(m9105b(str), z);
    }

    public C15330i(URI uri) {
        this(uri, false);
    }

    public C15330i(URI uri, boolean z) {
        this(uri.getScheme(), uri.getHost(), uri.getPort(), uri.getRawPath(), uri.getRawFragment(), uri.getRawQuery(), uri.getRawUserInfo(), z);
    }

    public C15330i(URL url) {
        this(url, false);
    }

    public C15330i(URL url, boolean z) {
        this(url.getProtocol(), url.getHost(), url.getPort(), url.getPath(), url.getRef(), url.getQuery(), url.getUserInfo(), z);
    }

    /* renamed from: a */
    public static List<String> m9110a(String str, boolean z) {
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
                substring = C15201a.m9295d(substring);
            }
            arrayList.add(substring);
            i = indexOf + 1;
        }
    }

    /* renamed from: a */
    public static void m9108a(Set<Map.Entry<String, Object>> set, StringBuilder sb, boolean z) {
        boolean z2 = true;
        for (Map.Entry<String, Object> entry : set) {
            Object value = entry.getValue();
            if (value != null) {
                String key = z ? entry.getKey() : C15201a.m9291h(entry.getKey());
                if (value instanceof Collection) {
                    Iterator it2 = ((Collection) value).iterator();
                    boolean z3 = z2;
                    while (true) {
                        boolean z4 = z3;
                        z2 = z4;
                        if (it2.hasNext()) {
                            z3 = m9107a(z4, sb, key, it2.next(), z);
                        }
                    }
                } else {
                    z2 = m9107a(z2, sb, key, value, z);
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m9107a(boolean z, StringBuilder sb, String str, Object obj, boolean z2) {
        if (z) {
            z = false;
            sb.append('?');
        } else {
            sb.append('&');
        }
        sb.append(str);
        String obj2 = z2 ? obj.toString() : C15201a.m9291h(obj.toString());
        if (obj2.length() != 0) {
            sb.append('=');
            sb.append(obj2);
        }
        return z;
    }

    /* renamed from: b */
    private static URL m9105b(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: c */
    private String m9104c() {
        StringBuilder sb = new StringBuilder();
        sb.append((String) C15391m.m8946a(this.f55337f));
        sb.append("://");
        String str = this.f55338g;
        if (str != null) {
            if (!this.f55336d) {
                str = C15201a.m9292g(str);
            }
            sb.append(str);
            sb.append('@');
        }
        sb.append((String) C15391m.m8946a(this.f55333a));
        int i = this.f55339h;
        if (i != -1) {
            sb.append(':');
            sb.append(i);
        }
        return sb.toString();
    }

    /* renamed from: d */
    private String m9103d() {
        StringBuilder sb = new StringBuilder();
        if (this.f55334b != null) {
            m9109a(sb);
        }
        m9108a(entrySet(), sb, this.f55336d);
        String str = this.f55335c;
        if (str != null) {
            sb.append('#');
            if (!this.f55336d) {
                str = f55332e.mo9290a(str);
            }
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final C15330i clone() {
        C15330i c15330i = (C15330i) super.clone();
        if (this.f55334b != null) {
            c15330i.f55334b = new ArrayList(this.f55334b);
        }
        return c15330i;
    }

    /* renamed from: a */
    public final URL m9111a(String str) {
        try {
            return new URL(m9105b(m9106b()), str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public final void m9109a(StringBuilder sb) {
        int size = this.f55334b.size();
        for (int i = 0; i < size; i++) {
            String str = this.f55334b.get(i);
            if (i != 0) {
                sb.append('/');
            }
            if (str.length() != 0) {
                if (!this.f55336d) {
                    str = C15201a.m9294e(str);
                }
                sb.append(str);
            }
        }
    }

    /* renamed from: b */
    public final String m9106b() {
        return m9104c() + m9103d();
    }

    @Override // com.google.api.client.p379a.C15241n, java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj) && (obj instanceof C15330i)) {
            return m9106b().equals(((C15330i) obj).m9106b());
        }
        return false;
    }

    @Override // com.google.api.client.p379a.C15241n, java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return m9106b().hashCode();
    }

    @Override // com.google.api.client.p379a.C15241n
    public final /* bridge */ /* synthetic */ C15241n set(String str, Object obj) {
        return (C15330i) super.set(str, obj);
    }

    @Override // com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final String toString() {
        return m9106b();
    }
}
