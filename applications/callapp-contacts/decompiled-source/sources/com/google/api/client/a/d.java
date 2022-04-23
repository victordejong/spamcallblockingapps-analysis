package com.google.api.client.a;

import com.google.common.io.BaseEncoding;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/d.class */
public final class d {
    private d() {
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return BaseEncoding.c().a().a(bArr, bArr.length);
    }

    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return BaseEncoding.b().a(str);
        } catch (IllegalArgumentException e) {
            if (e.getCause() instanceof BaseEncoding.DecodingException) {
                return BaseEncoding.c().a(str.trim());
            }
            throw e;
        }
    }
}
