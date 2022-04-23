package p599h.p600d0.p606j;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import p610i.AbstractC10280p;
import p610i.AbstractC10281q;
import p610i.C10270k;
/* renamed from: h.d0.j.a */
/* loaded from: classes2-dex2jar.jar:h/d0/j/a.class */
public interface AbstractC10192a {

    /* renamed from: a */
    public static final AbstractC10192a f37644a = new C10193a();

    /* renamed from: h.d0.j.a$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/j/a$a.class */
    public class C10193a implements AbstractC10192a {
        @Override // p599h.p600d0.p606j.AbstractC10192a
        /* renamed from: a */
        public AbstractC10281q mo1113a(File file) throws FileNotFoundException {
            return C10270k.m743c(file);
        }

        @Override // p599h.p600d0.p606j.AbstractC10192a
        /* renamed from: a */
        public void mo1112a(File file, File file2) throws IOException {
            mo1108e(file2);
            if (!file.renameTo(file2)) {
                throw new IOException("failed to rename " + file + " to " + file2);
            }
        }

        @Override // p599h.p600d0.p606j.AbstractC10192a
        /* renamed from: b */
        public AbstractC10280p mo1111b(File file) throws FileNotFoundException {
            try {
                return C10270k.m745b(file);
            } catch (FileNotFoundException e) {
                file.getParentFile().mkdirs();
                return C10270k.m745b(file);
            }
        }

        @Override // p599h.p600d0.p606j.AbstractC10192a
        /* renamed from: c */
        public void mo1110c(File file) throws IOException {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        mo1110c(file2);
                    }
                    if (!file2.delete()) {
                        throw new IOException("failed to delete " + file2);
                    }
                }
                return;
            }
            throw new IOException("not a readable directory: " + file);
        }

        @Override // p599h.p600d0.p606j.AbstractC10192a
        /* renamed from: d */
        public boolean mo1109d(File file) {
            return file.exists();
        }

        @Override // p599h.p600d0.p606j.AbstractC10192a
        /* renamed from: e */
        public void mo1108e(File file) throws IOException {
            if (!file.delete() && file.exists()) {
                throw new IOException("failed to delete " + file);
            }
        }

        @Override // p599h.p600d0.p606j.AbstractC10192a
        /* renamed from: f */
        public AbstractC10280p mo1107f(File file) throws FileNotFoundException {
            try {
                return C10270k.m752a(file);
            } catch (FileNotFoundException e) {
                file.getParentFile().mkdirs();
                return C10270k.m752a(file);
            }
        }

        @Override // p599h.p600d0.p606j.AbstractC10192a
        /* renamed from: g */
        public long mo1106g(File file) {
            return file.length();
        }
    }

    /* renamed from: a */
    AbstractC10281q mo1113a(File file) throws FileNotFoundException;

    /* renamed from: a */
    void mo1112a(File file, File file2) throws IOException;

    /* renamed from: b */
    AbstractC10280p mo1111b(File file) throws FileNotFoundException;

    /* renamed from: c */
    void mo1110c(File file) throws IOException;

    /* renamed from: d */
    boolean mo1109d(File file);

    /* renamed from: e */
    void mo1108e(File file) throws IOException;

    /* renamed from: f */
    AbstractC10280p mo1107f(File file) throws FileNotFoundException;

    /* renamed from: g */
    long mo1106g(File file);
}
