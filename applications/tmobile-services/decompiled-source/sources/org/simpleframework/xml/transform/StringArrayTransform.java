package org.simpleframework.xml.transform;

import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/StringArrayTransform.class */
class StringArrayTransform implements Transform<String[]> {
    private final Pattern pattern;
    private final String token;

    public StringArrayTransform() {
        this(",");
    }

    public StringArrayTransform(String str) {
        this.pattern = Pattern.compile(str);
        this.token = str;
    }

    private String[] read(String str, String str2) {
        String[] split = this.pattern.split(str);
        for (int i = 0; i < split.length; i++) {
            String str3 = split[i];
            if (str3 != null) {
                split[i] = str3.trim();
            }
        }
        return split;
    }

    private String write(String[] strArr, String str) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArr) {
            if (str2 != null) {
                if (sb.length() > 0) {
                    sb.append(str);
                    sb.append(' ');
                }
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String[] read(String str) {
        return read(str, this.token);
    }

    public String write(String[] strArr) {
        return write(strArr, this.token);
    }
}
