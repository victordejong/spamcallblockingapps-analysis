package okhttp3.internal.p094d;

import java.io.File;
import java.io.IOException;
/* renamed from: okhttp3.internal.d.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/d/a.class */
public interface AbstractC2019a {

    /* renamed from: a */
    public static final AbstractC2019a f5075a = new AbstractC2019a() { // from class: okhttp3.internal.d.a.1
        @Override // okhttp3.internal.p094d.AbstractC2019a
        /* renamed from: a */
        public void mo2259a(File file) {
            if (file.delete() || !file.exists()) {
                return;
            }
            throw new IOException("failed to delete " + file);
        }

        @Override // okhttp3.internal.p094d.AbstractC2019a
        /* renamed from: a */
        public void mo2258a(File file, File file2) {
            mo2259a(file2);
            if (file.renameTo(file2)) {
                return;
            }
            throw new IOException("failed to rename " + file + " to " + file2);
        }

        @Override // okhttp3.internal.p094d.AbstractC2019a
        /* renamed from: b */
        public boolean mo2257b(File file) {
            return file.exists();
        }

        @Override // okhttp3.internal.p094d.AbstractC2019a
        /* renamed from: c */
        public long mo2256c(File file) {
            return file.length();
        }
    };

    /* renamed from: a */
    void mo2259a(File file);

    /* renamed from: a */
    void mo2258a(File file, File file2);

    /* renamed from: b */
    boolean mo2257b(File file);

    /* renamed from: c */
    long mo2256c(File file);
}
