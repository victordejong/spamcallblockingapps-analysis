package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.util.Base64;
import com.google.android.play.core.internal.C15017ah;
import com.google.android.play.core.internal.C15034ay;
import com.google.android.play.core.splitcompat.C15121q;
import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
/* renamed from: com.google.android.play.core.assetpacks.bj */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bj.class */
public final class C14936bj {

    /* renamed from: a */
    private static AbstractC14976d f54528a;

    /* renamed from: a */
    public static long m9745a(byte[] bArr, int i) {
        return ((m9743b(bArr, i + 2) << 16) | m9743b(bArr, i)) & 4294967295L;
    }

    /* renamed from: a */
    public static AbstractC14976d m9747a(Context context) {
        AbstractC14976d abstractC14976d;
        synchronized (C14936bj.class) {
            try {
                if (f54528a == null) {
                    C14907ah c14907ah = new C14907ah(null);
                    c14907ah.f54392a = new C14964ck(C15121q.m9423a(context));
                    C15017ah.m9599a(c14907ah.f54392a, C14964ck.class);
                    f54528a = new C14908ai(c14907ah.f54392a);
                }
                abstractC14976d = f54528a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC14976d;
    }

    /* renamed from: a */
    public static String m9746a(List<File> list) throws NoSuchAlgorithmException, IOException {
        int read;
        MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
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
                        C15034ay.m9577a(th, th2);
                    }
                    throw th;
                }
            } while (read != -1);
            fileInputStream.close();
        }
        return Base64.encodeToString(messageDigest.digest(), 11);
    }

    /* renamed from: a */
    public static boolean m9749a(int i) {
        return i == 1 || i == 7 || i == 2 || i == 3;
    }

    /* renamed from: a */
    public static boolean m9748a(int i, int i2) {
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

    /* renamed from: b */
    public static int m9743b(byte[] bArr, int i) {
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    /* renamed from: b */
    public static boolean m9744b(int i) {
        return i == 5 || i == 6 || i == 4;
    }

    /* renamed from: c */
    public static boolean m9742c(int i) {
        return i == 2 || i == 7 || i == 3;
    }
}
