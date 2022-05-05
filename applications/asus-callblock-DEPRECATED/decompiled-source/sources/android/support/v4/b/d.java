package android.support.v4.b;

import android.util.Log;
import java.io.Writer;
/* loaded from: classes-dex2jar.jar:android/support/v4/b/d.class */
public final class d extends Writer {

    /* renamed from: a  reason: collision with root package name */
    private final String f122a;

    /* renamed from: b  reason: collision with root package name */
    private StringBuilder f123b = new StringBuilder(128);

    public d(String str) {
        this.f122a = str;
    }

    private void a() {
        if (this.f123b.length() > 0) {
            Log.d(this.f122a, this.f123b.toString());
            this.f123b.delete(0, this.f123b.length());
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
            char c = cArr[i + i3];
            if (c == '\n') {
                a();
            } else {
                this.f123b.append(c);
            }
        }
    }
}
