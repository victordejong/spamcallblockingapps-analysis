package p134j4;

import android.util.Base64;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import p117h8.C3035k;
/* renamed from: j4.j1 */
/* loaded from: classes-dex2jar.jar:j4/j1.class */
public final class C3219j1 {

    /* renamed from: a */
    public static final C3035k f10855a = new C3035k();

    /* renamed from: a */
    public static String m2539a(List list) throws NoSuchAlgorithmException, IOException {
        int read;
        MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
        byte[] bArr = new byte[8192];
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            FileInputStream fileInputStream = new FileInputStream((File) it2.next());
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
                    }
                    throw th;
                }
            } while (read != -1);
            fileInputStream.close();
        }
        return Base64.encodeToString(messageDigest.digest(), 11);
    }
}
