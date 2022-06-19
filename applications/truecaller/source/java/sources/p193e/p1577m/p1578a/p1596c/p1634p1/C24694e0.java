package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* renamed from: e.m.a.c.p1.e0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/e0.class */
public final class C24694e0 implements AbstractC24739l {

    /* renamed from: a */
    public final AbstractC24739l f69192a;

    /* renamed from: b */
    public final AbstractC24736j f69193b;

    /* renamed from: c */
    public boolean f69194c;

    /* renamed from: d */
    public long f69195d;

    public C24694e0(AbstractC24739l abstractC24739l, AbstractC24736j abstractC24736j) {
        Objects.requireNonNull(abstractC24739l);
        this.f69192a = abstractC24739l;
        this.f69193b = abstractC24736j;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: a */
    public Map<String, List<String>> mo4667a() {
        return this.f69192a.mo4667a();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    public long mo4658b(C24742n c24742n) throws IOException {
        long mo4658b = this.f69192a.mo4658b(c24742n);
        this.f69195d = mo4658b;
        if (mo4658b == 0) {
            return 0L;
        }
        C24742n c24742n2 = c24742n;
        if (c24742n.f69334g == -1) {
            c24742n2 = c24742n;
            if (mo4658b != -1) {
                c24742n2 = c24742n.m4685c(0L, mo4658b);
            }
        }
        this.f69194c = true;
        this.f69193b.mo4689b(c24742n2);
        return this.f69195d;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: c */
    public void mo4669c(AbstractC24697f0 abstractC24697f0) {
        this.f69192a.mo4669c(abstractC24697f0);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() throws IOException {
        try {
            this.f69192a.close();
            if (!this.f69194c) {
                return;
            }
            this.f69194c = false;
            this.f69193b.close();
        } catch (Throwable th) {
            if (this.f69194c) {
                this.f69194c = false;
                this.f69193b.close();
            }
            throw th;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        return this.f69192a.getUri();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f69195d == 0) {
            return -1;
        }
        int read = this.f69192a.read(bArr, i, i2);
        if (read > 0) {
            this.f69193b.write(bArr, i, read);
            long j = this.f69195d;
            if (j != -1) {
                this.f69195d = j - read;
            }
        }
        return read;
    }
}
