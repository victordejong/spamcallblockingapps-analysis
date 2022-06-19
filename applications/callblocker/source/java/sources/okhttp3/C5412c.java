package okhttp3;

import java.io.Closeable;
import java.io.Flushable;
import okhttp3.internal.p192a.AbstractC5433e;
import okhttp3.internal.p192a.C5430d;
/* renamed from: okhttp3.c */
/* loaded from: classes-dex2jar.jar:okhttp3/c.class */
public final class C5412c implements Closeable, Flushable {

    /* renamed from: a */
    final AbstractC5433e f22530a;

    /* renamed from: b */
    final C5430d f22531b;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22531b.close();
    }

    @Override // java.io.Flushable
    public void flush() {
        this.f22531b.flush();
    }
}
