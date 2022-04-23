package p081h.p203i.p325c.p337n.p338d.p347m;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
/* renamed from: h.i.c.n.d.m.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/m/b.class */
public class C9779b extends FileOutputStream {

    /* renamed from: d */
    public static final FilenameFilter f22196d = new C9780a();

    /* renamed from: a */
    public final String f22197a;

    /* renamed from: b */
    public File f22198b;

    /* renamed from: c */
    public boolean f22199c = false;

    /* renamed from: h.i.c.n.d.m.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/m/b$a.class */
    public class C9780a implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(".cls_temp");
        }
    }

    public C9779b(File file, String str) throws FileNotFoundException {
        super(new File(file, str + ".cls_temp"));
        this.f22197a = file + File.separator + str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f22197a);
        sb.append(".cls_temp");
        this.f22198b = new File(sb.toString());
    }

    /* renamed from: a */
    public void m14284a() throws IOException {
        if (!this.f22199c) {
            this.f22199c = true;
            super.flush();
            super.close();
        }
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (!this.f22199c) {
                this.f22199c = true;
                super.flush();
                super.close();
                File file = new File(this.f22197a + ".cls");
                if (this.f22198b.renameTo(file)) {
                    this.f22198b = null;
                    return;
                }
                String str = "";
                if (file.exists()) {
                    str = " (target already exists)";
                } else if (!this.f22198b.exists()) {
                    str = " (source does not exist)";
                }
                throw new IOException("Could not rename temp file: " + this.f22198b + " -> " + file + str);
            }
        }
    }
}
