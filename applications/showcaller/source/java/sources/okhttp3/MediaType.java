package okhttp3;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:okhttp3/MediaType.class */
public final class MediaType {
    private static final String QUOTED = "\"([^\"]*)\"";
    private static final String TOKEN = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";
    private final String charset;
    private final String mediaType;
    private final String subtype;
    private final String type;
    private static final Pattern TYPE_SUBTYPE = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern PARAMETER = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    private MediaType(String str, String str2, String str3, String str4) {
        this.mediaType = str;
        this.type = str2;
        this.subtype = str3;
        this.charset = str4;
    }

    public static MediaType parse(String str) {
        Matcher matcher = TYPE_SUBTYPE.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String group = matcher.group(1);
        Locale locale = Locale.US;
        String lowerCase = group.toLowerCase(locale);
        String lowerCase2 = matcher.group(2).toLowerCase(locale);
        Matcher matcher2 = PARAMETER.matcher(str);
        int end = matcher.end();
        String str2 = null;
        while (true) {
            String str3 = str2;
            if (end >= str.length()) {
                return new MediaType(str, lowerCase, lowerCase2, str3);
            }
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String group2 = matcher2.group(1);
            String str4 = str3;
            if (group2 != null) {
                if (!group2.equalsIgnoreCase("charset")) {
                    str4 = str3;
                } else {
                    String group3 = matcher2.group(2);
                    if (group3 != null) {
                        str4 = group3;
                        if (group3.startsWith("'")) {
                            str4 = group3;
                            if (group3.endsWith("'")) {
                                str4 = group3;
                                if (group3.length() > 2) {
                                    str4 = group3.substring(1, group3.length() - 1);
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

    public Charset charset() {
        return charset(null);
    }

    public Charset charset(Charset charset) {
        Charset charset2;
        try {
            String str = this.charset;
            charset2 = charset;
            if (str != null) {
                charset2 = Charset.forName(str);
            }
        } catch (IllegalArgumentException e) {
            charset2 = charset;
        }
        return charset2;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MediaType) && ((MediaType) obj).mediaType.equals(this.mediaType);
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    public String subtype() {
        return this.subtype;
    }

    public String toString() {
        return this.mediaType;
    }

    public String type() {
        return this.type;
    }
}
