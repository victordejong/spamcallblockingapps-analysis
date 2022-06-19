package p204p9;

import android.support.p012v4.media.C0082b;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
/* renamed from: p9.u */
/* loaded from: classes2-dex2jar.jar:p9/u.class */
public final class C4127u {

    /* renamed from: b */
    public static final Pattern f12972b = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: c */
    public static final Pattern f12973c = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: a */
    public final String f12974a;

    public C4127u(String str, String str2, String str3, @Nullable String str4) {
        this.f12974a = str;
    }

    /* renamed from: a */
    public static C4127u m1369a(String str) {
        Matcher matcher = f12972b.matcher(str);
        if (!matcher.lookingAt()) {
            throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
        }
        String group = matcher.group(1);
        Locale locale = Locale.US;
        String lowerCase = group.toLowerCase(locale);
        String lowerCase2 = matcher.group(2).toLowerCase(locale);
        String str2 = null;
        Matcher matcher2 = f12973c.matcher(str);
        int end = matcher.end();
        while (end < str.length()) {
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                StringBuilder m8752j = C0082b.m8752j("Parameter is not formatted correctly: \"");
                m8752j.append(str.substring(end));
                m8752j.append("\" for: \"");
                m8752j.append(str);
                m8752j.append('\"');
                throw new IllegalArgumentException(m8752j.toString());
            }
            String group2 = matcher2.group(1);
            String str3 = str2;
            if (group2 != null) {
                if (!group2.equalsIgnoreCase("charset")) {
                    str3 = str2;
                } else {
                    String group3 = matcher2.group(2);
                    if (group3 != null) {
                        str3 = group3;
                        if (group3.startsWith("'")) {
                            str3 = group3;
                            if (group3.endsWith("'")) {
                                str3 = group3;
                                if (group3.length() > 2) {
                                    str3 = group3.substring(1, group3.length() - 1);
                                }
                            }
                        }
                    } else {
                        str3 = matcher2.group(3);
                    }
                    if (str2 != null && !str3.equalsIgnoreCase(str2)) {
                        throw new IllegalArgumentException("Multiple charsets defined: \"" + str2 + "\" and: \"" + str3 + "\" for: \"" + str + '\"');
                    }
                }
            }
            end = matcher2.end();
            str2 = str3;
        }
        return new C4127u(str, lowerCase, lowerCase2, str2);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof C4127u) && ((C4127u) obj).f12974a.equals(this.f12974a);
    }

    public int hashCode() {
        return this.f12974a.hashCode();
    }

    public String toString() {
        return this.f12974a;
    }
}
