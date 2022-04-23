package androidx.fragment.app;

import java.io.Writer;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/y.class */
final class y extends Writer {

    /* renamed from: a  reason: collision with root package name */
    private final String f2387a;

    /* renamed from: b  reason: collision with root package name */
    private StringBuilder f2388b = new StringBuilder(128);

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(String str) {
        this.f2387a = str;
    }

    private void a() {
        if (this.f2388b.length() > 0) {
            StringBuilder sb = this.f2388b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        a();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c2 = cArr[i + i3];
            if (c2 == '\n') {
                a();
            } else {
                this.f2388b.append(c2);
            }
        }
    }
}
