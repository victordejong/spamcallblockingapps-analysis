package p011aa;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
/* renamed from: aa.b */
/* loaded from: classes2-dex2jar.jar:aa/b.class */
public class C0048b implements AbstractC0074y {

    /* renamed from: a */
    public final /* synthetic */ AbstractC0074y f108a;

    /* renamed from: b */
    public final /* synthetic */ C0049c f109b;

    public C0048b(C0049c c0049c, AbstractC0074y abstractC0074y) {
        this.f109b = c0049c;
        this.f108a = abstractC0074y;
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: b */
    public C0075z mo610b() {
        return this.f109b;
    }

    @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            try {
                this.f108a.close();
                this.f109b.m8865j(true);
            } catch (IOException e) {
                e = e;
                C0049c c0049c = this.f109b;
                if (c0049c.m8864k()) {
                    e = c0049c.mo608l(e);
                }
                throw e;
            }
        } catch (Throwable th) {
            this.f109b.m8865j(false);
            throw th;
        }
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: f */
    public long mo609f(C0053f c0053f, long j) throws IOException {
        this.f109b.m8866i();
        try {
            try {
                long mo609f = this.f108a.mo609f(c0053f, j);
                this.f109b.m8865j(true);
                return mo609f;
            } catch (IOException e) {
                e = e;
                C0049c c0049c = this.f109b;
                if (c0049c.m8864k()) {
                    e = c0049c.mo608l(e);
                }
                throw e;
            }
        } catch (Throwable th) {
            this.f109b.m8865j(false);
            throw th;
        }
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AsyncTimeout.source(");
        m8752j.append(this.f108a);
        m8752j.append(")");
        return m8752j.toString();
    }
}
