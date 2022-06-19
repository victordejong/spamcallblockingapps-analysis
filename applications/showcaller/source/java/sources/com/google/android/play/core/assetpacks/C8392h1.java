package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.util.Base64;
import com.google.android.play.core.internal.C8505n0;
import com.google.android.play.core.splitcompat.C8552q;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.h1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/h1.class */
public final class C8392h1 {

    /* renamed from: a */
    private static AbstractC8370c f37779a;

    /* renamed from: a */
    public static String m3742a(List<File> list) {
        int read;
        MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
        byte[] bArr = new byte[8192];
        for (File file : list) {
            FileInputStream fileInputStream = new FileInputStream(file);
            do {
                try {
                    read = fileInputStream.read(bArr);
                    if (read > 0) {
                        messageDigest.update(bArr, 0, read);
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        C8505n0.m3487a(th, th2);
                    }
                    throw th;
                }
            } while (read != -1);
            fileInputStream.close();
        }
        return Base64.encodeToString(messageDigest.digest(), 11);
    }

    /* renamed from: b */
    public static long m3741b(byte[] bArr, int i) {
        return ((m3740c(bArr, i + 2) << 16) | m3740c(bArr, i)) & 4294967295L;
    }

    /* renamed from: c */
    public static int m3740c(byte[] bArr, int i) {
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    /* renamed from: d */
    public static boolean m3739d(int i) {
        return i == 1 || i == 7 || i == 2 || i == 3;
    }

    /* renamed from: e */
    public static boolean m3738e(int i) {
        return i == 5 || i == 6 || i == 4;
    }

    /* renamed from: f */
    public static boolean m3737f(int i) {
        return i == 2 || i == 7 || i == 3;
    }

    /* renamed from: g */
    public static boolean m3736g(int i, int i2) {
        int i3 = i;
        if (i == 5) {
            if (i2 != 5) {
                return true;
            }
            i3 = 5;
        }
        if (i3 != 6 || i2 == 6 || i2 == 5) {
            if (i3 == 4 && i2 != 4) {
                return true;
            }
            if (i3 == 3 && (i2 == 2 || i2 == 7 || i2 == 1 || i2 == 8)) {
                return true;
            }
            if (i3 != 2) {
                return false;
            }
            return i2 == 1 || i2 == 8;
        }
        return true;
    }

    /* renamed from: h */
    public static AbstractC8370c m3735h(Context context) {
        AbstractC8370c abstractC8370c;
        synchronized (C8392h1.class) {
            try {
                if (f37779a == null) {
                    C8387g0 c8387g0 = new C8387g0(null);
                    c8387g0.m3751b(new C8397i2(C8552q.m3355c(context)));
                    f37779a = c8387g0.m3752a();
                }
                abstractC8370c = f37779a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC8370c;
    }
}
