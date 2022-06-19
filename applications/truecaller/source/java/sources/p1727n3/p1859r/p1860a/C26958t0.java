package p1727n3.p1859r.p1860a;

import java.io.Writer;
/* renamed from: n3.r.a.t0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/t0.class */
public final class C26958t0 extends Writer {

    /* renamed from: a */
    public final String f75441a;

    /* renamed from: b */
    public StringBuilder f75442b = new StringBuilder(128);

    public C26958t0(String str) {
        this.f75441a = str;
    }

    /* renamed from: b */
    public final void m1069b() {
        if (this.f75442b.length() > 0) {
            this.f75442b.toString();
            StringBuilder sb = this.f75442b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m1069b();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m1069b();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m1069b();
            } else {
                this.f75442b.append(c);
            }
        }
    }
}
