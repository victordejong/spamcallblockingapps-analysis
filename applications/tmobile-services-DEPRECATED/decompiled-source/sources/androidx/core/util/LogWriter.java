package androidx.core.util;

import android.util.Log;
import androidx.annotation.RestrictTo;
import java.io.Writer;
@Deprecated
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/util/LogWriter.class */
public class LogWriter extends Writer {

    /* renamed from: f */
    private final String f3204f;

    /* renamed from: g */
    private StringBuilder f3205g = new StringBuilder(128);

    public LogWriter(String str) {
        this.f3204f = str;
    }

    /* renamed from: a */
    private void m19347a() {
        if (this.f3205g.length() > 0) {
            Log.d(this.f3204f, this.f3205g.toString());
            StringBuilder sb = this.f3205g;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m19347a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m19347a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m19347a();
            } else {
                this.f3205g.append(c);
            }
        }
    }
}
