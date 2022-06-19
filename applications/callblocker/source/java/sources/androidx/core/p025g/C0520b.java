package androidx.core.p025g;

import android.util.Log;
import java.io.Writer;
/* renamed from: androidx.core.g.b */
/* loaded from: classes-dex2jar.jar:androidx/core/g/b.class */
public class C0520b extends Writer {

    /* renamed from: a */
    private final String f1952a;

    /* renamed from: b */
    private StringBuilder f1953b = new StringBuilder(128);

    public C0520b(String str) {
        this.f1952a = str;
    }

    /* renamed from: a */
    private void m20649a() {
        if (this.f1953b.length() > 0) {
            Log.d(this.f1952a, this.f1953b.toString());
            this.f1953b.delete(0, this.f1953b.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m20649a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m20649a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m20649a();
            } else {
                this.f1953b.append(c);
            }
        }
    }
}
