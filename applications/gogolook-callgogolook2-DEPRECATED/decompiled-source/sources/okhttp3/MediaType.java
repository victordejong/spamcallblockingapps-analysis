package okhttp3;

import gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:okhttp3/MediaType.class */
public final class MediaType {
    @Nullable
    public final String charset;
    public final String mediaType;
    public final String type;
    public static final Pattern TYPE_SUBTYPE = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    public static final Pattern PARAMETER = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    public MediaType(String str, String str2, String str3, @Nullable String str4) {
        this.mediaType = str;
        this.type = str2;
        this.charset = str4;
    }

    public static MediaType get(String str) {
        Matcher matcher = TYPE_SUBTYPE.matcher(str);
        if (matcher.lookingAt()) {
            String lowerCase = matcher.group(1).toLowerCase(Locale.US);
            String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
            String str2 = null;
            Matcher matcher2 = PARAMETER.matcher(str);
            for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
                matcher2.region(end, str.length());
                if (matcher2.lookingAt()) {
                    String group = matcher2.group(1);
                    str2 = str2;
                    if (group != null) {
                        if (!group.equalsIgnoreCase(MmsBlockLogRealmObject.ADDRESS_CHARSET)) {
                            str2 = str2;
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
                                throw new IllegalArgumentException("Multiple charsets defined: \"" + str2 + "\" and: \"" + str2 + "\" for: \"" + str + '\"');
                            }
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Parameter is not formatted correctly: \"" + str.substring(end) + "\" for: \"" + str + '\"');
                }
            }
            return new MediaType(str, lowerCase, lowerCase2, str2);
        }
        throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
    }

    @Nullable
    public static MediaType parse(String str) {
        try {
            return get(str);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    @Nullable
    public Charset charset() {
        return charset(null);
    }

    @Nullable
    public Charset charset(@Nullable Charset charset) {
        Charset charset2 = charset;
        try {
            if (this.charset != null) {
                charset2 = Charset.forName(this.charset);
            }
        } catch (IllegalArgumentException e) {
            charset2 = charset;
        }
        return charset2;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof MediaType) && ((MediaType) obj).mediaType.equals(this.mediaType);
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    public String toString() {
        return this.mediaType;
    }

    public String type() {
        return this.type;
    }
}
