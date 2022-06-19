package okhttp3;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
/* renamed from: okhttp3.v */
/* loaded from: classes-dex2jar.jar:okhttp3/v.class */
public final class C5546v {

    /* renamed from: a */
    private static final Pattern f23152a = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: b */
    private static final Pattern f23153b = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: c */
    private final String f23154c;

    /* renamed from: d */
    private final String f23155d;

    /* renamed from: e */
    private final String f23156e;
    @Nullable

    /* renamed from: f */
    private final String f23157f;

    private C5546v(String str, String str2, String str3, @Nullable String str4) {
        this.f23154c = str;
        this.f23155d = str2;
        this.f23156e = str3;
        this.f23157f = str4;
    }

    @Nullable
    /* renamed from: a */
    public static C5546v m209a(String str) {
        C5546v c5546v;
        Matcher matcher = f23152a.matcher(str);
        if (matcher.lookingAt()) {
            String lowerCase = matcher.group(1).toLowerCase(Locale.US);
            String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
            Matcher matcher2 = f23153b.matcher(str);
            int end = matcher.end();
            String str2 = null;
            while (true) {
                String str3 = str2;
                if (end >= str.length()) {
                    c5546v = new C5546v(str, lowerCase, lowerCase2, str3);
                    break;
                }
                matcher2.region(end, str.length());
                c5546v = null;
                if (!matcher2.lookingAt()) {
                    break;
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
                        if (str3 != null) {
                            c5546v = null;
                            if (!str4.equalsIgnoreCase(str3)) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                }
                end = matcher2.end();
                str2 = str4;
            }
        } else {
            c5546v = null;
        }
        return c5546v;
    }

    /* renamed from: a */
    public String m210a() {
        return this.f23155d;
    }

    @Nullable
    /* renamed from: a */
    public Charset m208a(@Nullable Charset charset) {
        Charset charset2 = charset;
        try {
            if (this.f23157f != null) {
                charset2 = Charset.forName(this.f23157f);
            }
        } catch (IllegalArgumentException e) {
            charset2 = charset;
        }
        return charset2;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C5546v) && ((C5546v) obj).f23154c.equals(this.f23154c);
    }

    public int hashCode() {
        return this.f23154c.hashCode();
    }

    public String toString() {
        return this.f23154c;
    }
}
