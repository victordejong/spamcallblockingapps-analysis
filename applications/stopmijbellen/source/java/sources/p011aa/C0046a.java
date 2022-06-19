package p011aa;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
/* renamed from: aa.a */
/* loaded from: classes2-dex2jar.jar:aa/a.class */
public class C0046a implements AbstractC0073x {

    /* renamed from: a */
    public final /* synthetic */ AbstractC0073x f105a;

    /* renamed from: b */
    public final /* synthetic */ C0049c f106b;

    public C0046a(C0049c c0049c, AbstractC0073x abstractC0073x) {
        this.f106b = c0049c;
        this.f105a = abstractC0073x;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // p011aa.AbstractC0073x
    /* renamed from: E */
    public void mo613E(C0053f c0053f, long j) throws IOException {
        char c;
        C0047a0.m8868b(c0053f.f120b, 0L, j);
        ?? r9 = j;
        while (true) {
            char c2 = 0;
            if (r9 > 0) {
                C0070u c0070u = c0053f.f119a;
                while (true) {
                    C0070u c0070u2 = c0070u;
                    c = c2;
                    if (c2 >= 65536) {
                        break;
                    }
                    c2 += c0070u2.f153c - c0070u2.f152b;
                    if (c2 >= r9) {
                        c = r9;
                        break;
                    }
                    c0070u = c0070u2.f156f;
                }
                this.f106b.m8866i();
                try {
                    try {
                        this.f105a.mo613E(c0053f, c);
                        r9 -= c;
                        this.f106b.m8865j(true);
                    } catch (IOException e) {
                        e = e;
                        C0049c c0049c = this.f106b;
                        if (c0049c.m8864k()) {
                            e = c0049c.mo608l(e);
                        }
                        throw e;
                    }
                } catch (Throwable th) {
                    this.f106b.m8865j(false);
                    throw th;
                }
            } else {
                return;
            }
        }
    }

    @Override // p011aa.AbstractC0073x
    /* renamed from: b */
    public C0075z mo612b() {
        return this.f106b;
    }

    @Override // p011aa.AbstractC0073x, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f106b.m8866i();
        try {
            try {
                this.f105a.close();
                this.f106b.m8865j(true);
            } catch (IOException e) {
                e = e;
                C0049c c0049c = this.f106b;
                if (c0049c.m8864k()) {
                    e = c0049c.mo608l(e);
                }
                throw e;
            }
        } catch (Throwable th) {
            this.f106b.m8865j(false);
            throw th;
        }
    }

    @Override // p011aa.AbstractC0073x, java.io.Flushable
    public void flush() throws IOException {
        this.f106b.m8866i();
        try {
            try {
                this.f105a.flush();
                this.f106b.m8865j(true);
            } catch (IOException e) {
                e = e;
                C0049c c0049c = this.f106b;
                if (c0049c.m8864k()) {
                    e = c0049c.mo608l(e);
                }
                throw e;
            }
        } catch (Throwable th) {
            this.f106b.m8865j(false);
            throw th;
        }
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AsyncTimeout.sink(");
        m8752j.append(this.f105a);
        m8752j.append(")");
        return m8752j.toString();
    }
}
