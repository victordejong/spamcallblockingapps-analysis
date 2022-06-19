package p1727n3.p1874y.p1876b.p1877a.p1882q0;

import androidx.media2.exoplayer.external.Format;
import java.io.EOFException;
import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.f */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/f.class */
public final class C27178f implements AbstractC27190p {
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p
    /* renamed from: a */
    public int mo742a(C27176d c27176d, int i, boolean z) throws IOException, InterruptedException {
        int min = Math.min(c27176d.f76034g, i);
        c27176d.m752i(min);
        int i2 = min;
        if (min == 0) {
            byte[] bArr = c27176d.f76028a;
            i2 = c27176d.m755f(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        c27176d.m759b(i2);
        if (i2 == -1) {
            if (!z) {
                throw new EOFException();
            }
            return -1;
        }
        return i2;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p
    /* renamed from: b */
    public void mo741b(long j, int i, int i2, int i3, AbstractC27190p.C27191a c27191a) {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p
    /* renamed from: c */
    public void mo740c(Format format) {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p
    /* renamed from: d */
    public void mo739d(C27434m c27434m, int i) {
        c27434m.m315z(c27434m.f77201b + i);
    }
}
