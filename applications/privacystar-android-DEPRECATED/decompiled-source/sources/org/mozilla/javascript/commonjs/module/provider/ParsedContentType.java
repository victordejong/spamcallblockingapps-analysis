package org.mozilla.javascript.commonjs.module.provider;

import java.io.Serializable;
import java.util.StringTokenizer;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/commonjs/module/provider/ParsedContentType.class */
public final class ParsedContentType implements Serializable {
    private static final long serialVersionUID = 1;
    private final String contentType;
    private final String encoding;

    public ParsedContentType(String str) {
        String str2;
        String str3;
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ";");
            if (stringTokenizer.hasMoreTokens()) {
                String trim = stringTokenizer.nextToken().trim();
                while (true) {
                    str3 = null;
                    str2 = trim;
                    if (!stringTokenizer.hasMoreTokens()) {
                        break;
                    }
                    String trim2 = stringTokenizer.nextToken().trim();
                    if (trim2.startsWith("charset=")) {
                        String trim3 = trim2.substring(8).trim();
                        int length = trim3.length();
                        str3 = trim3;
                        str2 = trim;
                        if (length > 0) {
                            String substring = trim3.charAt(0) == '\"' ? trim3.substring(1) : trim3;
                            int i = length - 1;
                            str3 = substring;
                            str2 = trim;
                            if (substring.charAt(i) == '\"') {
                                str3 = substring.substring(0, i);
                                str2 = trim;
                            }
                        }
                    }
                }
                this.contentType = str2;
                this.encoding = str3;
            }
        }
        str2 = null;
        str3 = null;
        this.contentType = str2;
        this.encoding = str3;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getEncoding() {
        return this.encoding;
    }
}
