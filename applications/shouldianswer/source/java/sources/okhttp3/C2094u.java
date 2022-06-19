package okhttp3;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
/* renamed from: okhttp3.u */
/* loaded from: classes-dex2jar.jar:okhttp3/u.class */
public final class C2094u {

    /* renamed from: a */
    private static final Pattern f5372a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: b */
    private static final Pattern f5373b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: c */
    private final String f5374c;

    /* renamed from: d */
    private final String f5375d;

    /* renamed from: e */
    private final String f5376e;
    @Nullable

    /* renamed from: f */
    private final String f5377f;

    private C2094u(String str, String str2, String str3, @Nullable String str4) {
        this.f5374c = str;
        this.f5375d = str2;
        this.f5376e = str3;
        this.f5377f = str4;
    }

    @Nullable
    /* renamed from: a */
    public static C2094u m1896a(String str) {
        Matcher matcher = f5372a.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher2 = f5373b.matcher(str);
        int end = matcher.end();
        String str2 = null;
        while (true) {
            String str3 = str2;
            if (end >= str.length()) {
                return new C2094u(str, lowerCase, lowerCase2, str3);
            }
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String group = matcher2.group(1);
            String str4 = str3;
            if (group != null) {
                if (!group.equalsIgnoreCase("charset")) {
                    str4 = str3;
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
    public String m1897a() {
        return this.f5375d;
    }

    @Nullable
    /* renamed from: a */
    public Charset m1895a(@Nullable Charset charset) {
        Charset charset2 = charset;
        try {
            if (this.f5377f != null) {
                charset2 = Charset.forName(this.f5377f);
            }
        } catch (IllegalArgumentException e) {
            charset2 = charset;
        }
        return charset2;
    }

    @Nullable
    /* renamed from: b */
    public Charset m1894b() {
        return m1895a((Charset) null);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C2094u) && ((C2094u) obj).f5374c.equals(this.f5374c);
    }

    public int hashCode() {
        return this.f5374c.hashCode();
    }

    public String toString() {
        return this.f5374c;
    }
}
