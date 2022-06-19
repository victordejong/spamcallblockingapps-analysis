package p193e.p1577m.p1578a.p1596c.p1622m1.p1630t;

import java.util.ArrayList;
import java.util.Collections;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24567g;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1630t.C24622e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.m1.t.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/t/b.class */
public final class C24619b extends AbstractC24563c {

    /* renamed from: n */
    public final C24798t f68944n = new C24798t();

    /* renamed from: o */
    public final C24622e.C24624b f68945o = new C24622e.C24624b();

    public C24619b() {
        super("Mp4WebvttDecoder");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c
    /* renamed from: j */
    public AbstractC24565e mo4817j(byte[] bArr, int i, boolean z) throws C24567g {
        C24798t c24798t = this.f68944n;
        c24798t.f69504a = bArr;
        c24798t.f69506c = i;
        c24798t.f69505b = 0;
        ArrayList arrayList = new ArrayList();
        while (this.f68944n.m4545a() > 0) {
            if (this.f68944n.m4545a() < 8) {
                throw new C24567g("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int m4541e = this.f68944n.m4541e();
            if (this.f68944n.m4541e() == 1987343459) {
                C24798t c24798t2 = this.f68944n;
                C24622e.C24624b c24624b = this.f68945o;
                int i2 = m4541e - 8;
                c24624b.m4823b();
                while (i2 > 0) {
                    if (i2 < 8) {
                        throw new C24567g("Incomplete vtt cue box header found.");
                    }
                    int m4541e2 = c24798t2.m4541e();
                    int m4541e3 = c24798t2.m4541e();
                    int i3 = m4541e2 - 8;
                    String m4615i = C24773d0.m4615i(c24798t2.f69504a, c24798t2.f69505b, i3);
                    c24798t2.m4546D(i3);
                    int i4 = (i2 - 8) - i3;
                    if (m4541e3 == 1937011815) {
                        C24625f.m4820c(m4615i, c24624b);
                        i2 = i4;
                    } else {
                        i2 = i4;
                        if (m4541e3 == 1885436268) {
                            C24625f.m4819d(null, m4615i.trim(), c24624b, Collections.emptyList());
                            i2 = i4;
                        }
                    }
                }
                arrayList.add(c24624b.m4824a());
            } else {
                this.f68944n.m4546D(m4541e - 8);
            }
        }
        return new C24620c(arrayList);
    }
}
