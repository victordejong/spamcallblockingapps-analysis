package org.apache.http;
/* loaded from: classes5-dex2jar.jar:org/apache/http/HttpException.class */
public class HttpException extends Exception {
    public HttpException() {
    }

    public HttpException(String str) {
        super(m511a(str));
    }

    public HttpException(String str, Throwable th) {
        super(m511a(str));
        initCause(th);
    }

    /* renamed from: a */
    public static String m511a(String str) {
        char[] charArray = str.toCharArray();
        int i = 0;
        while (i < charArray.length && charArray[i] >= ' ') {
            i++;
        }
        if (i == charArray.length) {
            return str;
        }
        StringBuilder sb = new StringBuilder(charArray.length * 2);
        for (int i2 = 0; i2 < charArray.length; i2++) {
            char c = charArray[i2];
            if (c < ' ') {
                sb.append("[0x");
                String hexString = Integer.toHexString(i2);
                if (hexString.length() == 1) {
                    sb.append("0");
                }
                sb.append(hexString);
                sb.append("]");
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }
}
