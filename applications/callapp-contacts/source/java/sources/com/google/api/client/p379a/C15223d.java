package com.google.api.client.p379a;

import com.google.common.p387io.BaseEncoding;
@Deprecated
/* renamed from: com.google.api.client.a.d */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/d.class */
public final class C15223d {
    private C15223d() {
    }

    /* renamed from: a */
    public static String m9250a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return BaseEncoding.m8650c().mo8647a().m8652a(bArr, bArr.length);
    }

    /* renamed from: a */
    public static byte[] m9251a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return BaseEncoding.m8651b().m8653a(str);
        } catch (IllegalArgumentException e) {
            if (!(e.getCause() instanceof BaseEncoding.DecodingException)) {
                throw e;
            }
            return BaseEncoding.m8650c().m8653a(str.trim());
        }
    }
}
