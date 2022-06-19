package androidx.core.p022f;

import android.util.Log;
import java.io.Writer;
/* renamed from: androidx.core.f.b */
/* loaded from: classes-dex2jar.jar:androidx/core/f/b.class */
public class C0496b extends Writer {

    /* renamed from: a */
    private final String f1801a;

    /* renamed from: b */
    private StringBuilder f1802b = new StringBuilder(128);

    public C0496b(String str) {
        this.f1801a = str;
    }

    /* renamed from: a */
    private void m6469a() {
        if (this.f1802b.length() > 0) {
            Log.d(this.f1801a, this.f1802b.toString());
            StringBuilder sb = this.f1802b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m6469a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m6469a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m6469a();
            } else {
                this.f1802b.append(c);
            }
        }
    }
}
