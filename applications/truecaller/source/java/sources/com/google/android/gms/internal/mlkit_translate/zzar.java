package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzar.class */
public final class zzar {
    private static final OutputStream zza = new zzau();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    public static long zza(InputStream inputStream, OutputStream outputStream) throws IOException {
        zzi.zza(inputStream);
        zzi.zza(outputStream);
        byte[] bArr = new byte[8192];
        ?? r0 = 0;
        while (true) {
            char c = r0;
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
                r0 = c + read;
            } else {
                return c;
            }
        }
    }
}
