package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.util.Base64;
import com.google.android.play.core.internal.ah;
import com.google.android.play.core.internal.ay;
import com.google.android.play.core.splitcompat.q;
import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bj.class */
public final class bj {

    /* renamed from: a  reason: collision with root package name */
    private static d f31176a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(byte[] bArr, int i) {
        return ((b(bArr, i + 2) << 16) | b(bArr, i)) & 4294967295L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d a(Context context) {
        d dVar;
        synchronized (bj.class) {
            try {
                if (f31176a == null) {
                    ah ahVar = new ah(null);
                    ahVar.f31099a = new ck(q.a(context));
                    ah.a(ahVar.f31099a, ck.class);
                    f31176a = new ai(ahVar.f31099a);
                }
                dVar = f31176a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(List<File> list) throws NoSuchAlgorithmException, IOException {
        int read;
        MessageDigest instance = MessageDigest.getInstance("SHA256");
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
        for (File file : list) {
            FileInputStream fileInputStream = new FileInputStream(file);
            do {
                try {
                    read = fileInputStream.read(bArr);
                    if (read > 0) {
                        instance.update(bArr, 0, read);
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        ay.a(th, th2);
                    }
                    throw th;
                }
            } while (read != -1);
            fileInputStream.close();
        }
        return Base64.encodeToString(instance.digest(), 11);
    }

    public static boolean a(int i) {
        return i == 1 || i == 7 || i == 2 || i == 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(int i, int i2) {
        int i3 = i;
        if (i == 5) {
            if (i2 != 5) {
                return true;
            }
            i3 = 5;
        }
        if (i3 == 6 && i2 != 6 && i2 != 5) {
            return true;
        }
        if (i3 == 4 && i2 != 4) {
            return true;
        }
        if (i3 == 3 && (i2 == 2 || i2 == 7 || i2 == 1 || i2 == 8)) {
            return true;
        }
        if (i3 == 2) {
            return i2 == 1 || i2 == 8;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i) {
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    public static boolean b(int i) {
        return i == 5 || i == 6 || i == 4;
    }

    public static boolean c(int i) {
        return i == 2 || i == 7 || i == 3;
    }
}
