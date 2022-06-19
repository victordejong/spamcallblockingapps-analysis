package p193e.p1577m.p1578a.p1596c.p1602g1;

import com.google.android.exoplayer2.metadata.Metadata;
import java.io.EOFException;
import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.p1613i1.p1616i.C24472b;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.n */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/n.class */
public final class C24415n {

    /* renamed from: a */
    public final C24798t f68101a = new C24798t(10);

    /* renamed from: a */
    public Metadata m5149a(C24353e c24353e, C24472b.AbstractC24473a abstractC24473a) throws IOException, InterruptedException {
        int i;
        Metadata metadata = null;
        int i2 = 0;
        while (true) {
            try {
                i = i2;
                c24353e.m5210e(this.f68101a.f69504a, 0, 10, false);
                this.f68101a.m4547C(0);
                if (this.f68101a.m4527s() != 4801587) {
                    break;
                }
                this.f68101a.m4546D(3);
                int m4530p = this.f68101a.m4530p();
                int i3 = m4530p + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i3];
                    System.arraycopy(this.f68101a.f69504a, 0, bArr, 0, 10);
                    c24353e.m5210e(bArr, 10, m4530p, false);
                    metadata = new C24472b(abstractC24473a).m5067c(bArr, i3);
                } else {
                    c24353e.m5214a(m4530p, false);
                }
                i2 = i + i3;
            } catch (EOFException e) {
            }
        }
        c24353e.f67728f = 0;
        c24353e.m5214a(i, false);
        return metadata;
    }
}
