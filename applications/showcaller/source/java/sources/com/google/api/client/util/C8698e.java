package com.google.api.client.util;

import com.google.common.p291io.BaseEncoding;
/* renamed from: com.google.api.client.util.e */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/e.class */
public class C8698e {
    /* renamed from: a */
    public static byte[] m2912a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return BaseEncoding.m2599a().m2597c(str);
        } catch (IllegalArgumentException e) {
            if (!(e.getCause() instanceof BaseEncoding.DecodingException)) {
                throw e;
            }
            return BaseEncoding.m2598b().m2597c(str.trim());
        }
    }

    /* renamed from: b */
    public static String m2911b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return BaseEncoding.m2598b().mo2583l().m2595f(bArr);
    }
}
