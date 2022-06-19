package com.danikula.videocache;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.slf4j.AbstractC9605b;
import org.slf4j.C9606c;
/* renamed from: com.danikula.videocache.m */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/m.class */
public class C4441m {

    /* renamed from: a */
    private static final AbstractC9605b f13565a = C9606c.m352i("ProxyCacheUtils");

    /* renamed from: a */
    public static void m22459a(byte[] bArr, long j, int i) {
        C4437k.m22475e(bArr, "Buffer must be not null!");
        C4437k.m22477c(j >= 0, "Data offset must be positive!");
        C4437k.m22477c(i >= 0 && i <= bArr.length, "Length must be in range [0..buffer.length]");
    }

    /* renamed from: b */
    private static String m22458b(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i])));
        }
        return stringBuffer.toString();
    }

    /* renamed from: c */
    public static void m22457c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                f13565a.error("Error closing resource", e);
            }
        }
    }

    /* renamed from: d */
    public static String m22456d(String str) {
        try {
            return m22458b(MessageDigest.getInstance("MD5").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: e */
    public static String m22455e(String str) {
        try {
            return URLDecoder.decode(str, "utf-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Error decoding url", e);
        }
    }

    /* renamed from: f */
    public static String m22454f(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Error encoding url", e);
        }
    }

    /* renamed from: g */
    public static String m22453g(String str) {
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        return TextUtils.isEmpty(fileExtensionFromUrl) ? null : singleton.getMimeTypeFromExtension(fileExtensionFromUrl);
    }
}
