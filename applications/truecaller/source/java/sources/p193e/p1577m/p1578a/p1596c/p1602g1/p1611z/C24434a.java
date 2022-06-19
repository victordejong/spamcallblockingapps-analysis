package p193e.p1577m.p1578a.p1596c.p1602g1.p1611z;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import java.util.Collections;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1611z.AbstractC24437d;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24777g;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.z.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/z/a.class */
public final class C24434a extends AbstractC24437d {

    /* renamed from: e */
    public static final int[] f68176e = {5512, 11025, 22050, 44100};

    /* renamed from: b */
    public boolean f68177b;

    /* renamed from: c */
    public boolean f68178c;

    /* renamed from: d */
    public int f68179d;

    public C24434a(AbstractC24422s abstractC24422s) {
        super(abstractC24422s);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1611z.AbstractC24437d
    /* renamed from: b */
    public boolean mo5121b(C24798t c24798t) throws AbstractC24437d.C24438a {
        if (this.f68177b) {
            c24798t.m4546D(1);
            return true;
        }
        int m4529q = c24798t.m4529q();
        int i = (m4529q >> 4) & 15;
        this.f68179d = i;
        if (i == 2) {
            this.f68197a.mo4928b(Format.m39253g(null, "audio/mpeg", null, -1, -1, 1, f68176e[(m4529q >> 2) & 3], null, null, 0, null));
            this.f68178c = true;
        } else if (i == 7 || i == 8) {
            this.f68197a.mo4928b(Format.m39254f(null, i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw", null, -1, -1, 1, JosStatusCodes.RTN_CODE_COMMON_ERROR, -1, null, null, 0, null));
            this.f68178c = true;
        } else if (i != 10) {
            StringBuilder m8728C = C22128a.m8728C("Audio format not supported: ");
            m8728C.append(this.f68179d);
            throw new AbstractC24437d.C24438a(m8728C.toString());
        }
        this.f68177b = true;
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1611z.AbstractC24437d
    /* renamed from: c */
    public boolean mo5120c(C24798t c24798t, long j) throws C24560m0 {
        if (this.f68179d == 2) {
            int m4545a = c24798t.m4545a();
            this.f68197a.mo4929a(c24798t, m4545a);
            this.f68197a.mo4927c(j, 1, m4545a, 0, null);
            return true;
        }
        int m4529q = c24798t.m4529q();
        if (m4529q != 0 || this.f68178c) {
            if (this.f68179d == 10 && m4529q != 1) {
                return false;
            }
            int m4545a2 = c24798t.m4545a();
            this.f68197a.mo4929a(c24798t, m4545a2);
            this.f68197a.mo4927c(j, 1, m4545a2, 0, null);
            return true;
        }
        int m4545a3 = c24798t.m4545a();
        byte[] bArr = new byte[m4545a3];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, m4545a3);
        c24798t.f69505b += m4545a3;
        Pair<Integer, Integer> m4593b = C24777g.m4593b(new C24797s(bArr), false);
        this.f68197a.mo4928b(Format.m39253g(null, "audio/mp4a-latm", null, -1, -1, ((Integer) m4593b.second).intValue(), ((Integer) m4593b.first).intValue(), Collections.singletonList(bArr), null, 0, null));
        this.f68178c = true;
        return false;
    }
}
