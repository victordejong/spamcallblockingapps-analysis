package com.google.api.client.http;

import com.google.common.base.C15391m;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.api.client.http.p */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/p.class */
public final class C15339p {

    /* renamed from: c */
    private static final Pattern f55348c = Pattern.compile("[\\w!#$&.+\\-\\^_]+|[*]");

    /* renamed from: d */
    private static final Pattern f55349d = Pattern.compile("[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+");

    /* renamed from: e */
    private static final Pattern f55350e = Pattern.compile("\\s*([^\\s/=;\"]+)/([^\\s/=;\"]+)\\s*(;.*)?", 32);

    /* renamed from: f */
    private static final Pattern f55351f;

    /* renamed from: a */
    String f55352a = "application";

    /* renamed from: b */
    String f55353b = "octet-stream";

    /* renamed from: g */
    private final SortedMap<String, String> f55354g = new TreeMap();

    /* renamed from: h */
    private String f55355h;

    static {
        StringBuilder sb = new StringBuilder("\\s*;\\s*(");
        sb.append("[^\\s/=;\"]+");
        sb.append(")=(");
        sb.append("\"([^\"]*)\"|[^\\s;\"]*");
        sb.append(")");
        f55351f = Pattern.compile(sb.toString());
    }

    public C15339p(String str) {
        m9060e(str);
    }

    public C15339p(String str, String str2) {
        m9061d(str);
        m9067a(str2);
    }

    /* renamed from: a */
    private boolean m9068a(C15339p c15339p) {
        return c15339p != null && this.f55352a.equalsIgnoreCase(c15339p.f55352a) && this.f55353b.equalsIgnoreCase(c15339p.f55353b);
    }

    /* renamed from: b */
    public static boolean m9063b(String str, String str2) {
        return str2 != null && new C15339p(str).m9068a(new C15339p(str2));
    }

    /* renamed from: c */
    public static boolean m9062c(String str) {
        return f55349d.matcher(str).matches();
    }

    /* renamed from: d */
    private C15339p m9061d(String str) {
        C15391m.m8942a(f55348c.matcher(str).matches(), "Type contains reserved characters");
        this.f55352a = str;
        this.f55355h = null;
        return this;
    }

    /* renamed from: e */
    private C15339p m9060e(String str) {
        Matcher matcher = f55350e.matcher(str);
        C15391m.m8942a(matcher.matches(), "Type must be in the 'maintype/subtype; parameter=value' format");
        m9061d(matcher.group(1));
        m9067a(matcher.group(2));
        String group = matcher.group(3);
        if (group != null) {
            Matcher matcher2 = f55351f.matcher(group);
            while (matcher2.find()) {
                String group2 = matcher2.group(1);
                String group3 = matcher2.group(3);
                String str2 = group3;
                if (group3 == null) {
                    str2 = matcher2.group(2);
                }
                m9066a(group2, str2);
            }
        }
        return this;
    }

    /* renamed from: f */
    private C15339p m9059f(String str) {
        this.f55355h = null;
        this.f55354g.remove(str.toLowerCase(Locale.US));
        return this;
    }

    /* renamed from: g */
    private static String m9058g(String str) {
        String replace = str.replace("\\", "\\\\").replace("\"", "\\\"");
        return "\"" + replace + "\"";
    }

    /* renamed from: a */
    public final C15339p m9067a(String str) {
        C15391m.m8942a(f55348c.matcher(str).matches(), "Subtype contains reserved characters");
        this.f55353b = str;
        this.f55355h = null;
        return this;
    }

    /* renamed from: a */
    public final C15339p m9066a(String str, String str2) {
        if (str2 == null) {
            m9059f(str);
            return this;
        }
        C15391m.m8942a(f55349d.matcher(str).matches(), "Name contains reserved characters");
        this.f55355h = null;
        this.f55354g.put(str.toLowerCase(Locale.US), str2);
        return this;
    }

    /* renamed from: a */
    public final String m9069a() {
        String str = this.f55355h;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f55352a);
        sb.append('/');
        sb.append(this.f55353b);
        SortedMap<String, String> sortedMap = this.f55354g;
        if (sortedMap != null) {
            for (Map.Entry<String, String> entry : sortedMap.entrySet()) {
                String value = entry.getValue();
                sb.append("; ");
                sb.append(entry.getKey());
                sb.append("=");
                String str2 = value;
                if (!m9062c(value)) {
                    str2 = m9058g(value);
                }
                sb.append(str2);
            }
        }
        String sb2 = sb.toString();
        this.f55355h = sb2;
        return sb2;
    }

    /* renamed from: b */
    public final String m9064b(String str) {
        return this.f55354g.get(str.toLowerCase(Locale.US));
    }

    /* renamed from: b */
    public final Charset m9065b() {
        String m9064b = m9064b("charset");
        if (m9064b == null) {
            return null;
        }
        return Charset.forName(m9064b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C15339p)) {
            return false;
        }
        C15339p c15339p = (C15339p) obj;
        return m9068a(c15339p) && this.f55354g.equals(c15339p.f55354g);
    }

    public final int hashCode() {
        return m9069a().hashCode();
    }

    public final String toString() {
        return m9069a();
    }
}
