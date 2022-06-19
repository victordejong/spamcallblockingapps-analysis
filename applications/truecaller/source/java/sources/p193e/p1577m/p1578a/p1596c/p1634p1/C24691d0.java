package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* renamed from: e.m.a.c.p1.d0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/d0.class */
public final class C24691d0 implements AbstractC24739l {

    /* renamed from: a */
    public final AbstractC24739l f69183a;

    /* renamed from: b */
    public long f69184b;

    /* renamed from: c */
    public Uri f69185c = Uri.EMPTY;

    /* renamed from: d */
    public Map<String, List<String>> f69186d = Collections.emptyMap();

    public C24691d0(AbstractC24739l abstractC24739l) {
        Objects.requireNonNull(abstractC24739l);
        this.f69183a = abstractC24739l;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: a */
    public Map<String, List<String>> mo4667a() {
        return this.f69183a.mo4667a();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    public long mo4658b(C24742n c24742n) throws IOException {
        this.f69185c = c24742n.f69328a;
        this.f69186d = Collections.emptyMap();
        long mo4658b = this.f69183a.mo4658b(c24742n);
        Uri uri = getUri();
        Objects.requireNonNull(uri);
        this.f69185c = uri;
        this.f69186d = mo4667a();
        return mo4658b;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: c */
    public void mo4669c(AbstractC24697f0 abstractC24697f0) {
        this.f69183a.mo4669c(abstractC24697f0);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() throws IOException {
        this.f69183a.close();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        return this.f69183a.getUri();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f69183a.read(bArr, i, i2);
        if (read != -1) {
            this.f69184b += read;
        }
        return read;
    }
}
