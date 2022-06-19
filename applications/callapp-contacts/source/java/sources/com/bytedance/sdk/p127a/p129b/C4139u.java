package com.bytedance.sdk.p127a.p129b;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.bytedance.sdk.a.b.u */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/u.class */
public final class C4139u {

    /* renamed from: a */
    private static final Pattern f15138a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: b */
    private static final Pattern f15139b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: c */
    private final String f15140c;

    /* renamed from: d */
    private final String f15141d;

    /* renamed from: e */
    private final String f15142e;

    /* renamed from: f */
    private final String f15143f;

    private C4139u(String str, String str2, String str3, String str4) {
        this.f15140c = str;
        this.f15141d = str2;
        this.f15142e = str3;
        this.f15143f = str4;
    }

    /* renamed from: a */
    public static C4139u m36399a(String str) {
        Matcher matcher = f15138a.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher2 = f15139b.matcher(str);
        int end = matcher.end();
        String str2 = null;
        while (true) {
            String str3 = str2;
            if (end >= str.length()) {
                return new C4139u(str, lowerCase, lowerCase2, str3);
            }
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String group = matcher2.group(1);
            String str4 = str3;
            if (group != null) {
                str4 = str3;
                if (!group.equalsIgnoreCase("charset")) {
                    continue;
                } else {
                    String group2 = matcher2.group(2);
                    if (group2 != null) {
                        str4 = group2;
                        if (group2.startsWith("'")) {
                            str4 = group2;
                            if (group2.endsWith("'")) {
                                str4 = group2;
                                if (group2.length() > 2) {
                                    str4 = group2.substring(1, group2.length() - 1);
                                }
                            }
                        }
                    } else {
                        str4 = matcher2.group(3);
                    }
                    if (str3 != null && !str4.equalsIgnoreCase(str3)) {
                        return null;
                    }
                }
            }
            end = matcher2.end();
            str2 = str4;
        }
    }

    /* renamed from: a */
    public final Charset m36400a() {
        return m36398a((Charset) null);
    }

    /* renamed from: a */
    public final Charset m36398a(Charset charset) {
        Charset charset2;
        try {
            String str = this.f15143f;
            charset2 = charset;
            if (str != null) {
                charset2 = Charset.forName(str);
            }
        } catch (IllegalArgumentException e) {
            charset2 = charset;
        }
        return charset2;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C4139u) && ((C4139u) obj).f15140c.equals(this.f15140c);
    }

    public final int hashCode() {
        return this.f15140c.hashCode();
    }

    public final String toString() {
        return this.f15140c;
    }
}
