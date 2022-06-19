package androidx.fragment.app;

import java.io.Writer;
/* renamed from: androidx.fragment.app.y */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/y.class */
final class C1146y extends Writer {

    /* renamed from: a */
    private final String f4515a;

    /* renamed from: b */
    private StringBuilder f4516b = new StringBuilder(128);

    public C1146y(String str) {
        this.f4515a = str;
    }

    /* renamed from: a */
    private void m43486a() {
        if (this.f4516b.length() > 0) {
            StringBuilder sb = this.f4516b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        m43486a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        m43486a();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m43486a();
            } else {
                this.f4516b.append(c);
            }
        }
    }
}
