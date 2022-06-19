package androidx.fragment.app;

import java.io.Writer;
/* renamed from: androidx.fragment.app.v0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/v0.class */
public final class C0482v0 extends Writer {

    /* renamed from: a */
    public StringBuilder f1952a = new StringBuilder(128);

    public C0482v0(String str) {
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m8055d();
    }

    /* renamed from: d */
    public final void m8055d() {
        if (this.f1952a.length() > 0) {
            this.f1952a.toString();
            StringBuilder sb = this.f1952a;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m8055d();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m8055d();
            } else {
                this.f1952a.append(c);
            }
        }
    }
}
