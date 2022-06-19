package p279w9;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Logger;
import p011aa.AbstractC0074y;
import p011aa.C0062o;
/* renamed from: w9.a */
/* loaded from: classes2-dex2jar.jar:w9/a.class */
public interface AbstractC4792a {

    /* renamed from: a */
    public static final AbstractC4792a f14726a = new C4793a();

    /* renamed from: w9.a$a */
    /* loaded from: classes2-dex2jar.jar:w9/a$a.class */
    public class C4793a implements AbstractC4792a {
        /* renamed from: a */
        public void m451a(File file) throws IOException {
            if (file.delete() || !file.exists()) {
                return;
            }
            throw new IOException("failed to delete " + file);
        }

        /* renamed from: b */
        public void m450b(File file) throws IOException {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                throw new IOException("not a readable directory: " + file);
            }
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    m450b(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete " + file2);
                }
            }
        }

        /* renamed from: c */
        public void m449c(File file, File file2) throws IOException {
            m451a(file2);
            if (file.renameTo(file2)) {
                return;
            }
            throw new IOException("failed to rename " + file + " to " + file2);
        }

        /* renamed from: d */
        public AbstractC0074y m448d(File file) throws FileNotFoundException {
            Logger logger = C0062o.f138a;
            if (file != null) {
                return C0062o.m8825f(new FileInputStream(file));
            }
            throw new IllegalArgumentException("file == null");
        }
    }
}
