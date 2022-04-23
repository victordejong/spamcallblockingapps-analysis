package com.google.api.client.a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/o.class */
public final class o {
    /* JADX WARN: Finally extract failed */
    public static long a(ad adVar) throws IOException {
        e eVar = new e();
        try {
            adVar.writeTo(eVar);
            eVar.close();
            return eVar.f31615a;
        } catch (Throwable th) {
            eVar.close();
            throw th;
        }
    }

    @Deprecated
    public static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        a(inputStream, outputStream, true);
    }

    @Deprecated
    public static void a(InputStream inputStream, OutputStream outputStream, boolean z) throws IOException {
        try {
            f.a(inputStream, outputStream);
            if (z) {
                inputStream.close();
            }
        } catch (Throwable th) {
            if (z) {
                inputStream.close();
            }
            throw th;
        }
    }
}
