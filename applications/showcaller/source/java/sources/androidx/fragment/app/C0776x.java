package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;
/* renamed from: androidx.fragment.app.x */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/x.class */
final class C0776x extends Writer {

    /* renamed from: d */
    private final String f3650d;

    /* renamed from: e */
    private StringBuilder f3651e = new StringBuilder(128);

    public C0776x(String str) {
        this.f3650d = str;
    }

    /* renamed from: a */
    private void m32442a() {
        if (this.f3651e.length() > 0) {
            Log.d(this.f3650d, this.f3651e.toString());
            StringBuilder sb = this.f3651e;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m32442a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m32442a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m32442a();
            } else {
                this.f3651e.append(c);
            }
        }
    }
}
