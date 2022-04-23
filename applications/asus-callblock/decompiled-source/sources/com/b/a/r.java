package com.b.a;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/b/a/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3338a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3339b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");
    private final String c;
    private final String d;
    private final String e;
    private final String f;

    private r(String str, String str2, String str3, String str4) {
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
    }

    public static r a(String str) {
        r rVar;
        Matcher matcher = f3338a.matcher(str);
        if (matcher.lookingAt()) {
            String lowerCase = matcher.group(1).toLowerCase(Locale.US);
            String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
            Matcher matcher2 = f3339b.matcher(str);
            int end = matcher.end();
            String str2 = null;
            while (true) {
                if (end >= str.length()) {
                    rVar = new r(str, lowerCase, lowerCase2, str2);
                    break;
                }
                matcher2.region(end, str.length());
                rVar = null;
                if (!matcher2.lookingAt()) {
                    break;
                }
                String group = matcher2.group(1);
                if (group == null || !group.equalsIgnoreCase("charset")) {
                    str2 = str2;
                } else {
                    String group2 = matcher2.group(2) != null ? matcher2.group(2) : matcher2.group(3);
                    str2 = group2;
                    if (str2 != null) {
                        str2 = group2;
                        if (!group2.equalsIgnoreCase(str2)) {
                            throw new IllegalArgumentException("Multiple different charsets: " + str);
                        }
                    } else {
                        continue;
                    }
                }
                end = matcher2.end();
            }
        } else {
            rVar = null;
        }
        return rVar;
    }

    public final Charset a(Charset charset) {
        if (this.f != null) {
            charset = Charset.forName(this.f);
        }
        return charset;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof r) && ((r) obj).c.equals(this.c);
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public final String toString() {
        return this.c;
    }
}
