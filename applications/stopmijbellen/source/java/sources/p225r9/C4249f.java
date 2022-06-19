package p225r9;

import java.io.IOException;
import p011aa.AbstractC0057j;
import p011aa.AbstractC0073x;
import p011aa.C0053f;
/* renamed from: r9.f */
/* loaded from: classes2-dex2jar.jar:r9/f.class */
public class C4249f extends AbstractC0057j {

    /* renamed from: b */
    public boolean f13325b;

    public C4249f(AbstractC0073x abstractC0073x) {
        super(abstractC0073x);
    }

    @Override // p011aa.AbstractC0057j, p011aa.AbstractC0073x
    /* renamed from: E */
    public void mo613E(C0053f c0053f, long j) throws IOException {
        if (this.f13325b) {
            c0053f.mo8804j(j);
            return;
        }
        try {
            this.f126a.mo613E(c0053f, j);
        } catch (IOException e) {
            this.f13325b = true;
            mo1231d(e);
        }
    }

    @Override // p011aa.AbstractC0057j, p011aa.AbstractC0073x, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f13325b) {
            return;
        }
        try {
            super.close();
        } catch (IOException e) {
            this.f13325b = true;
            mo1231d(e);
        }
    }

    /* renamed from: d */
    public void mo1231d(IOException iOException) {
        throw null;
    }

    @Override // p011aa.AbstractC0057j, p011aa.AbstractC0073x, java.io.Flushable
    public void flush() throws IOException {
        if (this.f13325b) {
            return;
        }
        try {
            this.f126a.flush();
        } catch (IOException e) {
            this.f13325b = true;
            mo1231d(e);
        }
    }
}
