package p1727n3.p1807k.p1820h;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.h.a */
/* loaded from: classes-dex2jar.jar:n3/k/h/a.class */
public class C26551a {

    /* renamed from: a */
    public final File f74392a;

    /* renamed from: b */
    public final File f74393b;

    /* renamed from: c */
    public final File f74394c;

    public C26551a(File file) {
        this.f74392a = file;
        this.f74393b = new File(file.getPath() + ".new");
        this.f74394c = new File(file.getPath() + ".bak");
    }

    /* renamed from: c */
    public static void m1691c(File file, File file2) {
        if (file2.isDirectory() && !file2.delete()) {
            String str = "Failed to delete file which is a directory " + file2;
        }
        if (!file.renameTo(file2)) {
            String str2 = "Failed to rename " + file + " to " + file2;
        }
    }

    /* renamed from: a */
    public void m1693a(FileOutputStream fileOutputStream) {
        try {
            fileOutputStream.getFD().sync();
        } catch (IOException e) {
        }
        try {
            fileOutputStream.close();
        } catch (IOException e2) {
        }
        if (!this.f74393b.delete()) {
            StringBuilder m8728C = C22128a.m8728C("Failed to delete new file ");
            m8728C.append(this.f74393b);
            m8728C.toString();
        }
    }

    /* renamed from: b */
    public void m1692b(FileOutputStream fileOutputStream) {
        try {
            fileOutputStream.getFD().sync();
        } catch (IOException e) {
        }
        try {
            fileOutputStream.close();
        } catch (IOException e2) {
        }
        m1691c(this.f74393b, this.f74392a);
    }

    /* renamed from: d */
    public FileOutputStream m1690d() throws IOException {
        if (this.f74394c.exists()) {
            m1691c(this.f74394c, this.f74392a);
        }
        try {
            return new FileOutputStream(this.f74393b);
        } catch (FileNotFoundException e) {
            if (!this.f74393b.getParentFile().mkdirs()) {
                StringBuilder m8728C = C22128a.m8728C("Failed to create directory for ");
                m8728C.append(this.f74393b);
                throw new IOException(m8728C.toString());
            }
            try {
                return new FileOutputStream(this.f74393b);
            } catch (FileNotFoundException e2) {
                StringBuilder m8728C2 = C22128a.m8728C("Failed to create new file ");
                m8728C2.append(this.f74393b);
                throw new IOException(m8728C2.toString(), e2);
            }
        }
    }
}
