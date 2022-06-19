package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import java.util.Collections;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r.AbstractC27196d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27416b;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27433l;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.r.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/r/a.class */
public final class C27193a extends AbstractC27196d {

    /* renamed from: e */
    public static final int[] f76086e = {5512, 11025, 22050, 44100};

    /* renamed from: b */
    public boolean f76087b;

    /* renamed from: c */
    public boolean f76088c;

    /* renamed from: d */
    public int f76089d;

    public C27193a(AbstractC27190p abstractC27190p) {
        super(abstractC27190p);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r.AbstractC27196d
    /* renamed from: b */
    public boolean mo730b(C27434m c27434m) throws AbstractC27196d.C27197a {
        if (this.f76087b) {
            c27434m.m341A(1);
            return true;
        }
        int m326o = c27434m.m326o();
        int i = (m326o >> 4) & 15;
        this.f76089d = i;
        if (i == 2) {
            this.f76107a.mo740c(Format.m42842k(null, "audio/mpeg", null, -1, -1, 1, f76086e[(m326o >> 2) & 3], null, null, 0, null));
            this.f76088c = true;
        } else if (i == 7 || i == 8) {
            this.f76107a.mo740c(Format.m42843i(null, i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw", null, -1, -1, 1, JosStatusCodes.RTN_CODE_COMMON_ERROR, (m326o & 1) == 1 ? 2 : 3, null, null, 0, null));
            this.f76088c = true;
        } else if (i != 10) {
            throw new AbstractC27196d.C27197a(C22128a.m8690L1(39, "Audio format not supported: ", this.f76089d));
        }
        this.f76087b = true;
        return true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r.AbstractC27196d
    /* renamed from: c */
    public boolean mo729c(C27434m c27434m, long j) throws C27074c0 {
        if (this.f76089d == 2) {
            int m340a = c27434m.m340a();
            this.f76107a.mo739d(c27434m, m340a);
            this.f76107a.mo741b(j, 1, m340a, 0, null);
            return true;
        }
        int m326o = c27434m.m326o();
        if (m326o != 0 || this.f76088c) {
            if (this.f76089d == 10 && m326o != 1) {
                return false;
            }
            int m340a2 = c27434m.m340a();
            this.f76107a.mo739d(c27434m, m340a2);
            this.f76107a.mo741b(j, 1, m340a2, 0, null);
            return true;
        }
        int m340a3 = c27434m.m340a();
        byte[] bArr = new byte[m340a3];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, m340a3);
        c27434m.f77201b += m340a3;
        Pair<Integer, Integer> m374b = C27416b.m374b(new C27433l(bArr), false);
        this.f76107a.mo740c(Format.m42842k(null, "audio/mp4a-latm", null, -1, -1, ((Integer) m374b.second).intValue(), ((Integer) m374b.first).intValue(), Collections.singletonList(bArr), null, 0, null));
        this.f76088c = true;
        return false;
    }
}
