package com.google.api.client.http;

import com.google.api.client.util.C8731w;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.api.client.http.p */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/p.class */
public final class C8654p {

    /* renamed from: a */
    private static final Pattern f38369a = Pattern.compile("[\\w!#$&.+\\-\\^_]+|[*]");

    /* renamed from: b */
    private static final Pattern f38370b = Pattern.compile("[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+");

    /* renamed from: c */
    private static final Pattern f38371c = Pattern.compile("\\s*([^\\s/=;\"]+)/([^\\s/=;\"]+)\\s*(;.*)?", 32);

    /* renamed from: d */
    private static final Pattern f38372d;

    /* renamed from: e */
    private String f38373e = "application";

    /* renamed from: f */
    private String f38374f = "octet-stream";

    /* renamed from: g */
    private final SortedMap<String, String> f38375g = new TreeMap();

    /* renamed from: h */
    private String f38376h;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("\"([^\"]*)\"");
        sb.append("|");
        sb.append("[^\\s;\"]*");
        f38372d = Pattern.compile("\\s*;\\s*([^\\s/=;\"]+)=(" + sb.toString() + ")");
    }

    public C8654p(String str) {
        m3122d(str);
    }

    /* renamed from: c */
    public static boolean m3123c(String str, String str2) {
        return (str == null && str2 == null) || !(str == null || str2 == null || !new C8654p(str).m3124b(new C8654p(str2)));
    }

    /* renamed from: d */
    private C8654p m3122d(String str) {
        Matcher matcher = f38371c.matcher(str);
        C8731w.m2838b(matcher.matches(), "Type must be in the 'maintype/subtype; parameter=value' format");
        m3111o(matcher.group(1));
        m3112n(matcher.group(2));
        String group = matcher.group(3);
        if (group != null) {
            Matcher matcher2 = f38372d.matcher(group);
            while (matcher2.find()) {
                String group2 = matcher2.group(1);
                String group3 = matcher2.group(3);
                String str2 = group3;
                if (group3 == null) {
                    str2 = matcher2.group(2);
                }
                m3113m(group2, str2);
            }
        }
        return this;
    }

    /* renamed from: i */
    public static boolean m3117i(String str) {
        return f38370b.matcher(str).matches();
    }

    /* renamed from: j */
    private static String m3116j(String str) {
        String replace = str.replace("\\", "\\\\").replace("\"", "\\\"");
        return "\"" + replace + "\"";
    }

    /* renamed from: a */
    public String m3125a() {
        String str = this.f38376h;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f38373e);
        sb.append('/');
        sb.append(this.f38374f);
        SortedMap<String, String> sortedMap = this.f38375g;
        if (sortedMap != null) {
            for (Map.Entry<String, String> entry : sortedMap.entrySet()) {
                String value = entry.getValue();
                sb.append("; ");
                sb.append(entry.getKey());
                sb.append("=");
                String str2 = value;
                if (!m3117i(value)) {
                    str2 = m3116j(value);
                }
                sb.append(str2);
            }
        }
        String sb2 = sb.toString();
        this.f38376h = sb2;
        return sb2;
    }

    /* renamed from: b */
    public boolean m3124b(C8654p c8654p) {
        return c8654p != null && m3118h().equalsIgnoreCase(c8654p.m3118h()) && m3119g().equalsIgnoreCase(c8654p.m3119g());
    }

    /* renamed from: e */
    public Charset m3121e() {
        String m3120f = m3120f("charset");
        return m3120f == null ? null : Charset.forName(m3120f);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C8654p)) {
            return false;
        }
        C8654p c8654p = (C8654p) obj;
        boolean z = false;
        if (m3124b(c8654p)) {
            z = false;
            if (this.f38375g.equals(c8654p.f38375g)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: f */
    public String m3120f(String str) {
        return this.f38375g.get(str.toLowerCase(Locale.US));
    }

    /* renamed from: g */
    public String m3119g() {
        return this.f38374f;
    }

    /* renamed from: h */
    public String m3118h() {
        return this.f38373e;
    }

    public int hashCode() {
        return m3125a().hashCode();
    }

    /* renamed from: k */
    public C8654p m3115k(String str) {
        this.f38376h = null;
        this.f38375g.remove(str.toLowerCase(Locale.US));
        return this;
    }

    /* renamed from: l */
    public C8654p m3114l(Charset charset) {
        m3113m("charset", charset == null ? null : charset.name());
        return this;
    }

    /* renamed from: m */
    public C8654p m3113m(String str, String str2) {
        if (str2 == null) {
            m3115k(str);
            return this;
        }
        C8731w.m2838b(f38370b.matcher(str).matches(), "Name contains reserved characters");
        this.f38376h = null;
        this.f38375g.put(str.toLowerCase(Locale.US), str2);
        return this;
    }

    /* renamed from: n */
    public C8654p m3112n(String str) {
        C8731w.m2838b(f38369a.matcher(str).matches(), "Subtype contains reserved characters");
        this.f38374f = str;
        this.f38376h = null;
        return this;
    }

    /* renamed from: o */
    public C8654p m3111o(String str) {
        C8731w.m2838b(f38369a.matcher(str).matches(), "Type contains reserved characters");
        this.f38373e = str;
        this.f38376h = null;
        return this;
    }

    public String toString() {
        return m3125a();
    }
}
