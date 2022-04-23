package com.callapp.repackaged.org.apache.commons.codec.binary;

import com.callapp.repackaged.org.apache.commons.codec.Charsets;
import java.nio.charset.Charset;
/* loaded from: classes2-dex2jar.jar:com/callapp/repackaged/org/apache/commons/codec/binary/StringUtils.class */
public class StringUtils {
    public static String a(byte[] bArr) {
        return a(bArr, Charsets.f17115b);
    }

    private static String a(byte[] bArr, Charset charset) {
        if (bArr == null) {
            return null;
        }
        return new String(bArr, charset);
    }

    public static byte[] a(String str) {
        Charset charset = Charsets.f;
        if (str == null) {
            return null;
        }
        return str.getBytes(charset);
    }

    public static String b(byte[] bArr) {
        return a(bArr, Charsets.f);
    }
}
