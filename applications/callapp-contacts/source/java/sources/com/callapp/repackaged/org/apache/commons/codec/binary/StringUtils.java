package com.callapp.repackaged.org.apache.commons.codec.binary;

import com.callapp.repackaged.org.apache.commons.codec.Charsets;
import java.nio.charset.Charset;
/* loaded from: classes2-dex2jar.jar:com/callapp/repackaged/org/apache/commons/codec/binary/StringUtils.class */
public class StringUtils {
    /* renamed from: a */
    public static String m25996a(byte[] bArr) {
        return m25995a(bArr, Charsets.f29698b);
    }

    /* renamed from: a */
    private static String m25995a(byte[] bArr, Charset charset) {
        if (bArr == null) {
            return null;
        }
        return new String(bArr, charset);
    }

    /* renamed from: a */
    public static byte[] m25997a(String str) {
        Charset charset = Charsets.f29702f;
        if (str == null) {
            return null;
        }
        return str.getBytes(charset);
    }

    /* renamed from: b */
    public static String m25994b(byte[] bArr) {
        return m25995a(bArr, Charsets.f29702f);
    }
}
