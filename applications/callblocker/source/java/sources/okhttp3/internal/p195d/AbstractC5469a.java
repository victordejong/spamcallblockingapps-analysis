package okhttp3.internal.p195d;

import java.io.File;
import java.io.IOException;
/* renamed from: okhttp3.internal.d.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/d/a.class */
public interface AbstractC5469a {

    /* renamed from: a */
    public static final AbstractC5469a f22849a = new AbstractC5469a() { // from class: okhttp3.internal.d.a.1
        @Override // okhttp3.internal.p195d.AbstractC5469a
        /* renamed from: a */
        public void mo577a(File file) {
            if (file.delete() || !file.exists()) {
                return;
            }
            throw new IOException("failed to delete " + file);
        }

        @Override // okhttp3.internal.p195d.AbstractC5469a
        /* renamed from: a */
        public void mo576a(File file, File file2) {
            mo577a(file2);
            if (!file.renameTo(file2)) {
                throw new IOException("failed to rename " + file + " to " + file2);
            }
        }

        @Override // okhttp3.internal.p195d.AbstractC5469a
        /* renamed from: b */
        public boolean mo575b(File file) {
            return file.exists();
        }

        @Override // okhttp3.internal.p195d.AbstractC5469a
        /* renamed from: c */
        public long mo574c(File file) {
            return file.length();
        }
    };

    /* renamed from: a */
    void mo577a(File file);

    /* renamed from: a */
    void mo576a(File file, File file2);

    /* renamed from: b */
    boolean mo575b(File file);

    /* renamed from: c */
    long mo574c(File file);
}
