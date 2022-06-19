package com.google.api.client.p379a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.google.api.client.a.o */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/o.class */
public final class C15245o {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static long m9214a(AbstractC15211ad abstractC15211ad) throws IOException {
        C15224e c15224e = new C15224e();
        try {
            abstractC15211ad.writeTo(c15224e);
            c15224e.close();
            return c15224e.f55065a;
        } catch (Throwable th) {
            c15224e.close();
            throw th;
        }
    }

    @Deprecated
    /* renamed from: a */
    public static void m9213a(InputStream inputStream, OutputStream outputStream) throws IOException {
        m9212a(inputStream, outputStream, true);
    }

    @Deprecated
    /* renamed from: a */
    public static void m9212a(InputStream inputStream, OutputStream outputStream, boolean z) throws IOException {
        try {
            C15225f.m9248a(inputStream, outputStream);
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
