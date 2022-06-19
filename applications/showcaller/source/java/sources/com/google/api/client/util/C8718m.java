package com.google.api.client.util;

import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.google.api.client.util.m */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/m.class */
public class C8718m {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static long m2852a(AbstractC8735z abstractC8735z) {
        C8700f c8700f = new C8700f();
        try {
            abstractC8735z.writeTo(c8700f);
            c8700f.close();
            return c8700f.f38494d;
        } catch (Throwable th) {
            c8700f.close();
            throw th;
        }
    }

    /* renamed from: b */
    public static void m2851b(InputStream inputStream, OutputStream outputStream) {
        m2850c(inputStream, outputStream, true);
    }

    /* renamed from: c */
    public static void m2850c(InputStream inputStream, OutputStream outputStream, boolean z) {
        try {
            C8707g.m2893a(inputStream, outputStream);
            if (!z) {
                return;
            }
            inputStream.close();
        } catch (Throwable th) {
            if (z) {
                inputStream.close();
            }
            throw th;
        }
    }
}
