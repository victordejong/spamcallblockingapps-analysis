package com.google.api.client.http;

import com.google.common.base.m;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/p.class */
public final class p {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f31818c = Pattern.compile("[\\w!#$&.+\\-\\^_]+|[*]");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f31819d = Pattern.compile("[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+");
    private static final Pattern e = Pattern.compile("\\s*([^\\s/=;\"]+)/([^\\s/=;\"]+)\\s*(;.*)?", 32);
    private static final Pattern f;

    /* renamed from: a  reason: collision with root package name */
    String f31820a = "application";

    /* renamed from: b  reason: collision with root package name */
    String f31821b = "octet-stream";
    private final SortedMap<String, String> g = new TreeMap();
    private String h;

    static {
        StringBuilder sb = new StringBuilder("\\s*;\\s*(");
        sb.append("[^\\s/=;\"]+");
        sb.append(")=(");
        sb.append("\"([^\"]*)\"|[^\\s;\"]*");
        sb.append(")");
        f = Pattern.compile(sb.toString());
    }

    public p(String str) {
        e(str);
    }

    public p(String str, String str2) {
        d(str);
        a(str2);
    }

    private boolean a(p pVar) {
        return pVar != null && this.f31820a.equalsIgnoreCase(pVar.f31820a) && this.f31821b.equalsIgnoreCase(pVar.f31821b);
    }

    public static boolean b(String str, String str2) {
        return str2 != null && new p(str).a(new p(str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(String str) {
        return f31819d.matcher(str).matches();
    }

    private p d(String str) {
        m.a(f31818c.matcher(str).matches(), "Type contains reserved characters");
        this.f31820a = str;
        this.h = null;
        return this;
    }

    private p e(String str) {
        Matcher matcher = e.matcher(str);
        m.a(matcher.matches(), "Type must be in the 'maintype/subtype; parameter=value' format");
        d(matcher.group(1));
        a(matcher.group(2));
        String group = matcher.group(3);
        if (group != null) {
            Matcher matcher2 = f.matcher(group);
            while (matcher2.find()) {
                String group2 = matcher2.group(1);
                String group3 = matcher2.group(3);
                String str2 = group3;
                if (group3 == null) {
                    str2 = matcher2.group(2);
                }
                a(group2, str2);
            }
        }
        return this;
    }

    private p f(String str) {
        this.h = null;
        this.g.remove(str.toLowerCase(Locale.US));
        return this;
    }

    private static String g(String str) {
        String replace = str.replace("\\", "\\\\").replace("\"", "\\\"");
        return "\"" + replace + "\"";
    }

    public final p a(String str) {
        m.a(f31818c.matcher(str).matches(), "Subtype contains reserved characters");
        this.f31821b = str;
        this.h = null;
        return this;
    }

    public final p a(String str, String str2) {
        if (str2 == null) {
            f(str);
            return this;
        }
        m.a(f31819d.matcher(str).matches(), "Name contains reserved characters");
        this.h = null;
        this.g.put(str.toLowerCase(Locale.US), str2);
        return this;
    }

    public final String a() {
        String str = this.h;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f31820a);
        sb.append('/');
        sb.append(this.f31821b);
        SortedMap<String, String> sortedMap = this.g;
        if (sortedMap != null) {
            for (Map.Entry<String, String> entry : sortedMap.entrySet()) {
                String value = entry.getValue();
                sb.append("; ");
                sb.append(entry.getKey());
                sb.append("=");
                String str2 = value;
                if (!c(value)) {
                    str2 = g(value);
                }
                sb.append(str2);
            }
        }
        String sb2 = sb.toString();
        this.h = sb2;
        return sb2;
    }

    public final String b(String str) {
        return this.g.get(str.toLowerCase(Locale.US));
    }

    public final Charset b() {
        String b2 = b("charset");
        if (b2 == null) {
            return null;
        }
        return Charset.forName(b2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return a(pVar) && this.g.equals(pVar.g);
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a();
    }
}
