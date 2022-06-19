package com.p102b.p103a;

import java.io.UnsupportedEncodingException;
/* renamed from: com.b.a.h */
/* loaded from: classes-dex2jar.jar:com/b/a/h.class */
public final class C3518h {
    /* renamed from: a */
    public static String m37828a(byte[] bArr) {
        if (bArr != null) {
            try {
                return new String(bArr, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                throw new Error(e);
            }
        }
        return null;
    }

    /* renamed from: a */
    public static byte[] m37829a(String str) {
        if (str != null) {
            try {
                return str.getBytes("UTF-8");
            } catch (UnsupportedEncodingException e) {
                throw new Error(e);
            }
        }
        return null;
    }

    /* renamed from: b */
    public static int m37827b(String str) {
        if (str != null) {
            try {
                return str.getBytes("UTF-8").length;
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException();
            }
        }
        return 0;
    }
}
