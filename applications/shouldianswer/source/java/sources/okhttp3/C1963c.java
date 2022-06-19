package okhttp3;

import java.io.Closeable;
import java.io.Flushable;
import okhttp3.internal.p091a.AbstractC1983e;
import okhttp3.internal.p091a.C1980d;
/* renamed from: okhttp3.c */
/* loaded from: classes-dex2jar.jar:okhttp3/c.class */
public final class C1963c implements Closeable, Flushable {

    /* renamed from: a */
    final AbstractC1983e f4756a;

    /* renamed from: b */
    final C1980d f4757b;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f4757b.close();
    }

    @Override // java.io.Flushable
    public void flush() {
        this.f4757b.flush();
    }
}
