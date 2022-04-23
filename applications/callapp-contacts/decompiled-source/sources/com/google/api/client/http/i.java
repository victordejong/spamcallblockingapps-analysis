package com.google.api.client.http;

import com.google.api.client.a.a.a;
import com.google.api.client.a.a.b;
import com.google.api.client.a.a.c;
import com.google.api.client.a.n;
import com.google.common.base.m;
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
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/i.class */
public final class i extends n {
    private static final b e = new c("=&-_.!~*'()@:$,;/?:");

    /* renamed from: a  reason: collision with root package name */
    String f31806a;

    /* renamed from: b  reason: collision with root package name */
    List<String> f31807b;

    /* renamed from: c  reason: collision with root package name */
    public String f31808c;

    /* renamed from: d  reason: collision with root package name */
    boolean f31809d;
    private String f;
    private String g;
    private int h;

    public i() {
        this.h = -1;
    }

    public i(String str) {
        this(str, false);
    }

    private i(String str, String str2, int i, String str3, String str4, String str5, String str6, boolean z) {
        String str7;
        this.h = -1;
        this.f = str.toLowerCase(Locale.US);
        this.f31806a = str2;
        this.h = i;
        this.f31807b = a(str3, z);
        this.f31809d = z;
        if (z) {
            this.f31808c = str4;
            str7 = str6;
            if (str5 != null) {
                af.a(str5, (Object) this, false);
                str7 = str6;
            }
        } else {
            this.f31808c = str4 != null ? a.c(str4) : null;
            if (str5 != null) {
                af.a(str5, this);
            }
            str7 = str6 != null ? a.c(str6) : null;
        }
        this.g = str7;
    }

    public i(String str, boolean z) {
        this(b(str), z);
    }

    public i(URI uri) {
        this(uri, false);
    }

    public i(URI uri, boolean z) {
        this(uri.getScheme(), uri.getHost(), uri.getPort(), uri.getRawPath(), uri.getRawFragment(), uri.getRawQuery(), uri.getRawUserInfo(), z);
    }

    public i(URL url) {
        this(url, false);
    }

    public i(URL url, boolean z) {
        this(url.getProtocol(), url.getHost(), url.getPort(), url.getPath(), url.getRef(), url.getQuery(), url.getUserInfo(), z);
    }

    public static List<String> a(String str, boolean z) {
        if (str == null || str.length() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        boolean z2 = true;
        int i = 0;
        while (z2) {
            int indexOf = str.indexOf(47, i);
            z2 = indexOf != -1;
            String substring = z2 ? str.substring(i, indexOf) : str.substring(i);
            if (!z) {
                substring = a.d(substring);
            }
            arrayList.add(substring);
            i = indexOf + 1;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Set<Map.Entry<String, Object>> set, StringBuilder sb, boolean z) {
        boolean z2 = true;
        for (Map.Entry<String, Object> entry : set) {
            Object value = entry.getValue();
            if (value != null) {
                String key = z ? entry.getKey() : a.h(entry.getKey());
                if (value instanceof Collection) {
                    Iterator it2 = ((Collection) value).iterator();
                    boolean z3 = z2;
                    while (true) {
                        z2 = z3;
                        if (it2.hasNext()) {
                            z3 = a(z3, sb, key, it2.next(), z);
                        }
                    }
                } else {
                    z2 = a(z2, sb, key, value, z);
                }
            }
        }
    }

    private static boolean a(boolean z, StringBuilder sb, String str, Object obj, boolean z2) {
        if (z) {
            z = false;
            sb.append('?');
        } else {
            sb.append('&');
        }
        sb.append(str);
        String obj2 = z2 ? obj.toString() : a.h(obj.toString());
        if (obj2.length() != 0) {
            sb.append('=');
            sb.append(obj2);
        }
        return z;
    }

    private static URL b(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    private String c() {
        StringBuilder sb = new StringBuilder();
        sb.append((String) m.a(this.f));
        sb.append("://");
        String str = this.g;
        if (str != null) {
            if (!this.f31809d) {
                str = a.g(str);
            }
            sb.append(str);
            sb.append('@');
        }
        sb.append((String) m.a(this.f31806a));
        int i = this.h;
        if (i != -1) {
            sb.append(':');
            sb.append(i);
        }
        return sb.toString();
    }

    private String d() {
        StringBuilder sb = new StringBuilder();
        if (this.f31807b != null) {
            a(sb);
        }
        a(entrySet(), sb, this.f31809d);
        String str = this.f31808c;
        if (str != null) {
            sb.append('#');
            if (!this.f31809d) {
                str = e.a(str);
            }
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final i clone() {
        i iVar = (i) super.clone();
        if (this.f31807b != null) {
            iVar.f31807b = new ArrayList(this.f31807b);
        }
        return iVar;
    }

    public final URL a(String str) {
        try {
            return new URL(b(b()), str);
        } catch (MalformedURLException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(StringBuilder sb) {
        int size = this.f31807b.size();
        for (int i = 0; i < size; i++) {
            String str = this.f31807b.get(i);
            if (i != 0) {
                sb.append('/');
            }
            if (str.length() != 0) {
                if (!this.f31809d) {
                    str = a.e(str);
                }
                sb.append(str);
            }
        }
    }

    public final String b() {
        return c() + d();
    }

    @Override // com.google.api.client.a.n, java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof i)) {
            return false;
        }
        return b().equals(((i) obj).b());
    }

    @Override // com.google.api.client.a.n, java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return b().hashCode();
    }

    @Override // com.google.api.client.a.n
    public final /* bridge */ /* synthetic */ n set(String str, Object obj) {
        return (i) super.set(str, obj);
    }

    @Override // com.google.api.client.a.n, java.util.AbstractMap
    public final String toString() {
        return b();
    }
}
