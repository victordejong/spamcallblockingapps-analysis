package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@ShowFirstParty
@KeepForSdk
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/IOUtils.class */
public final class IOUtils {
    private IOUtils() {
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public static long m38779a(InputStream inputStream, OutputStream outputStream, boolean z, int i) throws IOException {
        byte[] bArr = new byte[i];
        char c = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, i);
                if (read == -1) {
                    break;
                }
                c += read;
                outputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                if (z) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                        }
                    }
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                }
                throw th;
            }
        }
        if (z) {
            try {
                inputStream.close();
            } catch (IOException e3) {
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e4) {
                }
            }
        }
        return c;
    }
}
