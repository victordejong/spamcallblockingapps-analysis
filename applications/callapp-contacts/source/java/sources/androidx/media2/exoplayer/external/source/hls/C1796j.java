package androidx.media2.exoplayer.external.source.hls;

import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.source.AbstractC1756al;
import androidx.media2.exoplayer.external.source.C1753ak;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.exoplayer.external.source.hls.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/j.class */
public final class C1796j implements AbstractC1756al {

    /* renamed from: a */
    final int f7128a;

    /* renamed from: b */
    final C1797k f7129b;

    /* renamed from: c */
    int f7130c = -1;

    public C1796j(C1797k c1797k, int i) {
        this.f7129b = c1797k;
        this.f7128a = i;
    }

    /* renamed from: d */
    private boolean m42216d() {
        int i = this.f7130c;
        return (i == -1 || i == -3 || i == -2) ? false : true;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
    /* renamed from: a */
    public final int mo42118a(long j) {
        if (m42216d()) {
            C1797k c1797k = this.f7129b;
            int i = this.f7130c;
            if (c1797k.m42195k()) {
                return 0;
            }
            C1753ak c1753ak = c1797k.f7160i[i];
            if (c1797k.f7176y && j > c1753ak.f6931a.m42321e()) {
                return c1753ak.f6931a.m42318h();
            }
            int m42311a = c1753ak.m42311a(j, true);
            if (m42311a == -1) {
                return 0;
            }
            return m42311a;
        }
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
    /* renamed from: a */
    public final int mo42117a(C2058x c2058x, C1442e c1442e, boolean z) {
        boolean z2;
        if (this.f7130c == -3) {
            c1442e.m42913a(4);
            return -4;
        } else if (!m42216d()) {
            return -3;
        } else {
            C1797k c1797k = this.f7129b;
            int i = this.f7130c;
            if (c1797k.m42195k()) {
                return -3;
            }
            if (!c1797k.f7156e.isEmpty()) {
                int i2 = 0;
                while (i2 < c1797k.f7156e.size() - 1) {
                    int i3 = c1797k.f7156e.get(i2).f7091j;
                    int length = c1797k.f7160i.length;
                    int i4 = 0;
                    while (true) {
                        z2 = true;
                        if (i4 < length) {
                            if (c1797k.f7172u[i4] && c1797k.f7160i[i4].m42316a() == i3) {
                                z2 = false;
                                break;
                            }
                            i4++;
                        } else {
                            break;
                        }
                    }
                    if (!z2) {
                        break;
                    }
                    i2++;
                }
                C1996ac.m41651a(c1797k.f7156e, 0, i2);
                C1794h c1794h = c1797k.f7156e.get(0);
                Format format = c1794h.f6756c;
                if (!format.equals(c1797k.f7167p)) {
                    c1797k.f7155d.m42053a(c1797k.f7152a, format, c1794h.f6757d, c1794h.f6758e, c1794h.f6759f);
                }
                c1797k.f7167p = format;
            }
            int m42123a = c1797k.f7161j[i].m42123a(c2058x, c1442e, z, c1797k.f7176y, c1797k.f7173v);
            if (m42123a == -5) {
                Format format2 = c2058x.f8282c;
                Format format3 = format2;
                if (i == c1797k.f7162k) {
                    int m42316a = c1797k.f7160i[i].m42316a();
                    int i5 = 0;
                    while (i5 < c1797k.f7156e.size() && c1797k.f7156e.get(i5).f7091j != m42316a) {
                        i5++;
                    }
                    format3 = format2.copyWithManifestFormatInfo(i5 < c1797k.f7156e.size() ? c1797k.f7156e.get(i5).f6756c : c1797k.f7166o);
                }
                c2058x.f8282c = format3;
            }
            return m42123a;
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
    /* renamed from: a */
    public final boolean mo42119a() {
        if (this.f7130c != -3) {
            if (!m42216d()) {
                return false;
            }
            C1797k c1797k = this.f7129b;
            return !c1797k.m42195k() && c1797k.f7161j[this.f7130c].m42122a(c1797k.f7176y);
        }
        return true;
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1756al
    /* renamed from: b */
    public final void mo42116b() throws IOException {
        int i = this.f7130c;
        if (i != -2) {
            if (i == -1) {
                this.f7129b.m42201c();
                return;
            } else if (i == -3) {
                return;
            } else {
                C1797k c1797k = this.f7129b;
                c1797k.m42201c();
                c1797k.f7161j[i].m42121b();
                return;
            }
        }
        throw new SampleQueueMappingException(this.f7129b.f7169r.get(this.f7128a).getFormat(0).sampleMimeType);
    }

    /* renamed from: c */
    public final void m42217c() {
        C1993a.m41688a(this.f7130c == -1);
        this.f7130c = this.f7129b.m42214a(this.f7128a);
    }
}
