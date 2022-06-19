package p193e.p1577m.p1578a.p1596c.p1602g1;

import com.google.android.exoplayer2.Format;
import java.io.EOFException;
import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/g.class */
public final class C24407g implements AbstractC24422s {
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s
    /* renamed from: a */
    public void mo4929a(C24798t c24798t, int i) {
        c24798t.m4547C(c24798t.f69505b + i);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s
    /* renamed from: b */
    public void mo4928b(Format format) {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s
    /* renamed from: c */
    public void mo4927c(long j, int i, int i2, int i3, AbstractC24422s.C24423a c24423a) {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s
    /* renamed from: d */
    public int mo4926d(C24353e c24353e, int i, boolean z) throws IOException, InterruptedException {
        int min = Math.min(c24353e.f67729g, i);
        c24353e.m5205j(min);
        int i2 = min;
        if (min == 0) {
            byte[] bArr = c24353e.f67723a;
            i2 = c24353e.m5208g(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        c24353e.m5213b(i2);
        if (i2 == -1) {
            if (!z) {
                throw new EOFException();
            }
            return -1;
        }
        return i2;
    }
}
