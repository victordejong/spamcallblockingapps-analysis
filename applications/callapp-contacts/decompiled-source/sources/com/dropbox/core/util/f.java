package com.dropbox.core.util;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/f.class */
public class f {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f17848b = true;

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f17847a = Charset.forName("UTF-8");

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f17849c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private static String a(String str, byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("'data' can't be null");
        } else if (str.length() == 64) {
            StringBuilder sb = new StringBuilder(((bArr.length + 2) / 3) * 4);
            int i = 0;
            while (i + 3 <= bArr.length) {
                int i2 = i + 1;
                int i3 = bArr[i] & 255;
                int i4 = i2 + 1;
                int i5 = bArr[i2] & 255;
                int i6 = bArr[i4] & 255;
                sb.append(str.charAt(i3 >>> 2));
                sb.append(str.charAt(((i3 & 3) << 4) | (i5 >>> 4)));
                sb.append(str.charAt(((i5 & 15) << 2) | (i6 >>> 6)));
                sb.append(str.charAt(i6 & 63));
                i = i4 + 1;
            }
            int length = bArr.length - i;
            if (length != 0) {
                if (length == 1) {
                    int i7 = bArr[i] & 255;
                    sb.append(str.charAt(i7 >>> 2));
                    sb.append(str.charAt((i7 & 3) << 4));
                    sb.append("==");
                } else if (length == 2) {
                    int i8 = bArr[i] & 255;
                    int i9 = bArr[i + 1] & 255;
                    sb.append(str.charAt(i8 >>> 2));
                    sb.append(str.charAt(((i8 & 3) << 4) | (i9 >>> 4)));
                    sb.append(str.charAt((i9 & 15) << 2));
                    sb.append('=');
                } else {
                    throw new AssertionError("data.length: " + bArr.length + ", i: " + i);
                }
            }
            return sb.toString();
        } else {
            throw new IllegalArgumentException("'digits' must be 64 characters long: " + b(str));
        }
    }

    public static String a(byte[] bArr) throws CharacterCodingException {
        return f17847a.newDecoder().decode(ByteBuffer.wrap(bArr, 0, bArr.length)).toString();
    }

    public static String a(String[] strArr) {
        List<String> asList = Arrays.asList(strArr);
        StringBuilder sb = new StringBuilder();
        String str = "";
        for (String str2 : asList) {
            sb.append(str);
            sb.append(c(str2));
            str = ", ";
        }
        return sb.toString();
    }

    public static byte[] a(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw d.a("UTF-8 should always be supported", (Throwable) e);
        }
    }

    public static String b(String str) {
        return c(str);
    }

    public static String b(byte[] bArr) {
        return a("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", bArr);
    }

    private static String c(String str) {
        StringBuilder sb = new StringBuilder(str.length() * 2);
        sb.append('\"');
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == 0) {
                sb.append("\\000");
            } else if (charAt == '\r') {
                sb.append("\\t");
            } else if (charAt == '\"') {
                sb.append("\\\"");
            } else if (charAt == '\\') {
                sb.append("\\\\");
            } else if (charAt == '\t') {
                sb.append("\\r");
            } else if (charAt == '\n') {
                sb.append("\\n");
            } else if (charAt < ' ' || charAt > '~') {
                sb.append("\\u");
                char[] cArr = f17849c;
                sb.append(cArr[(charAt >> '\f') & 15]);
                sb.append(cArr[(charAt >> '\b') & 15]);
                sb.append(cArr[(charAt >> 4) & 15]);
                sb.append(cArr[charAt & 15]);
            } else {
                sb.append(charAt);
            }
        }
        sb.append('\"');
        return sb.toString();
    }

    public static String c(byte[] bArr) {
        return a("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", bArr);
    }
}
