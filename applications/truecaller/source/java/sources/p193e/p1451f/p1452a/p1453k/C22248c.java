package p193e.p1451f.p1452a.p1453k;

import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
/* renamed from: e.f.a.k.c */
/* loaded from: classes-dex2jar.jar:e/f/a/k/c.class */
public final class C22248c {

    /* renamed from: a */
    public static final Charset f61825a = Charset.forName("US-ASCII");

    static {
        Charset.forName(StringConstant.UTF8);
    }

    /* renamed from: a */
    public static void m8380a(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                m8380a(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }
}
