package com.bytedance.sdk.a.b;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f8145a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f8146b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: c  reason: collision with root package name */
    private final String f8147c;

    /* renamed from: d  reason: collision with root package name */
    private final String f8148d;
    private final String e;
    private final String f;

    private u(String str, String str2, String str3, String str4) {
        this.f8147c = str;
        this.f8148d = str2;
        this.e = str3;
        this.f = str4;
    }

    public static u a(String str) {
        Matcher matcher = f8145a.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher2 = f8146b.matcher(str);
        String str2 = null;
        for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String group = matcher2.group(1);
            str2 = str2;
            if (group != null) {
                str2 = str2;
                if (!group.equalsIgnoreCase("charset")) {
                    continue;
                } else {
                    String group2 = matcher2.group(2);
                    if (group2 != null) {
                        str2 = group2;
                        if (group2.startsWith("'")) {
                            str2 = group2;
                            if (group2.endsWith("'")) {
                                str2 = group2;
                                if (group2.length() > 2) {
                                    str2 = group2.substring(1, group2.length() - 1);
                                }
                            }
                        }
                    } else {
                        str2 = matcher2.group(3);
                    }
                    if (str2 != null && !str2.equalsIgnoreCase(str2)) {
                        return null;
                    }
                }
            }
        }
        return new u(str, lowerCase, lowerCase2, str2);
    }

    public final Charset a() {
        return a((Charset) null);
    }

    public final Charset a(Charset charset) {
        Charset charset2;
        try {
            String str = this.f;
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
        return (obj instanceof u) && ((u) obj).f8147c.equals(this.f8147c);
    }

    public final int hashCode() {
        return this.f8147c.hashCode();
    }

    public final String toString() {
        return this.f8147c;
    }
}
