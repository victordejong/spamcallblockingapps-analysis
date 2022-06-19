package com.dropbox.core.util;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.dropbox.core.util.f */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/f.class */
public class C8638f {

    /* renamed from: b */
    static final /* synthetic */ boolean f30648b = true;

    /* renamed from: a */
    public static final Charset f30647a = Charset.forName("UTF-8");

    /* renamed from: c */
    private static final char[] f30649c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a */
    private static String m25218a(String str, byte[] bArr) {
        int i;
        if (bArr != null) {
            if (str.length() != 64) {
                throw new IllegalArgumentException("'digits' must be 64 characters long: " + m25215b(str));
            }
            StringBuilder sb = new StringBuilder(((bArr.length + 2) / 3) * 4);
            int i2 = 0;
            while (true) {
                i = i2;
                if (i + 3 > bArr.length) {
                    break;
                }
                int i3 = i + 1;
                int i4 = bArr[i] & 255;
                int i5 = i3 + 1;
                int i6 = bArr[i3] & 255;
                int i7 = bArr[i5] & 255;
                sb.append(str.charAt(i4 >>> 2));
                sb.append(str.charAt(((i4 & 3) << 4) | (i6 >>> 4)));
                sb.append(str.charAt(((i6 & 15) << 2) | (i7 >>> 6)));
                sb.append(str.charAt(i7 & 63));
                i2 = i5 + 1;
            }
            int length = bArr.length - i;
            if (length != 0) {
                if (length == 1) {
                    int i8 = bArr[i] & 255;
                    sb.append(str.charAt(i8 >>> 2));
                    sb.append(str.charAt((i8 & 3) << 4));
                    sb.append("==");
                } else if (length != 2) {
                    throw new AssertionError("data.length: " + bArr.length + ", i: " + i);
                } else {
                    int i9 = bArr[i] & 255;
                    int i10 = bArr[i + 1] & 255;
                    sb.append(str.charAt(i9 >>> 2));
                    sb.append(str.charAt(((i9 & 3) << 4) | (i10 >>> 4)));
                    sb.append(str.charAt((i10 & 15) << 2));
                    sb.append('=');
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("'data' can't be null");
    }

    /* renamed from: a */
    public static String m25217a(byte[] bArr) throws CharacterCodingException {
        return f30647a.newDecoder().decode(ByteBuffer.wrap(bArr, 0, bArr.length)).toString();
    }

    /* renamed from: a */
    public static String m25216a(String[] strArr) {
        List asList = Arrays.asList(strArr);
        StringBuilder sb = new StringBuilder();
        Iterator it2 = asList.iterator();
        String str = "";
        while (true) {
            String str2 = str;
            if (it2.hasNext()) {
                sb.append(str2);
                sb.append(m25213c((String) it2.next()));
                str = ", ";
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: a */
    public static byte[] m25219a(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw C8636d.m25222a("UTF-8 should always be supported", (Throwable) e);
        }
    }

    /* renamed from: b */
    public static String m25215b(String str) {
        return m25213c(str);
    }

    /* renamed from: b */
    public static String m25214b(byte[] bArr) {
        return m25218a("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", bArr);
    }

    /* renamed from: c */
    private static String m25213c(String str) {
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
                char[] cArr = f30649c;
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

    /* renamed from: c */
    public static String m25212c(byte[] bArr) {
        return m25218a("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", bArr);
    }
}
