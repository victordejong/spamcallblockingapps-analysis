package p012b.p042i.p053o;

import android.util.Log;
import java.io.Writer;
@Deprecated
/* renamed from: b.i.o.b */
/* loaded from: classes-dex2jar.jar:b/i/o/b.class */
public class C0942b extends Writer {

    /* renamed from: a */
    public final String f4189a;

    /* renamed from: b */
    public StringBuilder f4190b = new StringBuilder(128);

    public C0942b(String str) {
        this.f4189a = str;
    }

    /* renamed from: a */
    public final void m35450a() {
        if (this.f4190b.length() > 0) {
            Log.d(this.f4189a, this.f4190b.toString());
            StringBuilder sb = this.f4190b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m35450a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m35450a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m35450a();
            } else {
                this.f4190b.append(c);
            }
        }
    }
}
