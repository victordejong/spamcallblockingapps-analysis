package p193e.p1577m.p1578a.p1596c.p1636q1;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.q1.w */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/w.class */
public final class C24802w extends BufferedOutputStream {

    /* renamed from: a */
    public boolean f69514a;

    public C24802w(OutputStream outputStream) {
        super(outputStream);
    }

    public C24802w(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    /* renamed from: b */
    public void m4507b(OutputStream outputStream) {
        C26232y.m2286x(this.f69514a);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.f69514a = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th;
        Throwable th2;
        this.f69514a = true;
        try {
            flush();
            th = null;
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            ((BufferedOutputStream) this).out.close();
            th2 = th;
        } catch (Throwable th4) {
            th2 = th;
            if (th == null) {
                th2 = th4;
            }
        }
        if (th2 == null) {
            return;
        }
        int i = C24773d0.f69427a;
        throw th2;
    }
}
