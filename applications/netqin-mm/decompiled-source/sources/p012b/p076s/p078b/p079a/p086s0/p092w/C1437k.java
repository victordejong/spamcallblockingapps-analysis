package p012b.p076s.p078b.p079a.p086s0.p092w;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.io.IOException;
import java.util.ArrayList;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i;
import p012b.p076s.p078b.p079a.p086s0.p092w.C1439l;
/* renamed from: b.s.b.a.s0.w.k */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/k.class */
public final class C1437k extends AbstractC1432i {

    /* renamed from: n */
    public C1438a f5792n;

    /* renamed from: o */
    public int f5793o;

    /* renamed from: p */
    public boolean f5794p;

    /* renamed from: q */
    public C1439l.C1443d f5795q;

    /* renamed from: r */
    public C1439l.C1441b f5796r;

    /* renamed from: b.s.b.a.s0.w.k$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/k$a.class */
    public static final class C1438a {

        /* renamed from: a */
        public final C1439l.C1443d f5797a;

        /* renamed from: b */
        public final byte[] f5798b;

        /* renamed from: c */
        public final C1439l.C1442c[] f5799c;

        /* renamed from: d */
        public final int f5800d;

        public C1438a(C1439l.C1443d dVar, C1439l.C1441b bVar, byte[] bArr, C1439l.C1442c[] cVarArr, int i) {
            this.f5797a = dVar;
            this.f5798b = bArr;
            this.f5799c = cVarArr;
            this.f5800d = i;
        }
    }

    /* renamed from: a */
    public static int m33314a(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    /* renamed from: a */
    public static int m33313a(byte b, C1438a aVar) {
        return !aVar.f5799c[m33314a(b, aVar.f5800d, 1)].f5801a ? aVar.f5797a.f5805d : aVar.f5797a.f5806e;
    }

    /* renamed from: a */
    public static void m33311a(C1184p pVar, long j) {
        pVar.m34360d(pVar.m34361d() + 4);
        pVar.f4738a[pVar.m34361d() - 4] = (byte) (j & 255);
        pVar.f4738a[pVar.m34361d() - 3] = (byte) ((j >>> 8) & 255);
        pVar.f4738a[pVar.m34361d() - 2] = (byte) ((j >>> 16) & 255);
        pVar.f4738a[pVar.m34361d() - 1] = (byte) ((j >>> 24) & 255);
    }

    /* renamed from: c */
    public static boolean m33306c(C1184p pVar) {
        try {
            return C1439l.m33304a(1, pVar, true);
        } catch (ParserException e) {
            return false;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i
    /* renamed from: a */
    public long mo33312a(C1184p pVar) {
        byte[] bArr = pVar.f4738a;
        int i = 0;
        if ((bArr[0] & 1) == 1) {
            return -1L;
        }
        int a = m33313a(bArr[0], this.f5792n);
        if (this.f5794p) {
            i = (this.f5793o + a) / 4;
        }
        long j = i;
        m33311a(pVar, j);
        this.f5794p = true;
        this.f5793o = a;
        return j;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i
    /* renamed from: a */
    public void mo33309a(boolean z) {
        super.mo33309a(z);
        if (z) {
            this.f5792n = null;
            this.f5795q = null;
            this.f5796r = null;
        }
        this.f5793o = 0;
        this.f5794p = false;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i
    /* renamed from: a */
    public boolean mo33310a(C1184p pVar, long j, AbstractC1432i.C1434b bVar) throws IOException, InterruptedException {
        if (this.f5792n != null) {
            return false;
        }
        C1438a b = m33308b(pVar);
        this.f5792n = b;
        if (b == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f5792n.f5797a.f5807f);
        arrayList.add(this.f5792n.f5798b);
        C1439l.C1443d dVar = this.f5792n.f5797a;
        bVar.f5786a = Format.m38180a((String) null, "audio/vorbis", (String) null, dVar.f5804c, -1, dVar.f5802a, (int) dVar.f5803b, arrayList, (DrmInitData) null, 0, (String) null);
        return true;
    }

    /* renamed from: b */
    public C1438a m33308b(C1184p pVar) throws IOException {
        if (this.f5795q == null) {
            this.f5795q = C1439l.m33298b(pVar);
            return null;
        } else if (this.f5796r == null) {
            this.f5796r = C1439l.m33301a(pVar);
            return null;
        } else {
            byte[] bArr = new byte[pVar.m34361d()];
            System.arraycopy(pVar.f4738a, 0, bArr, 0, pVar.m34361d());
            C1439l.C1442c[] a = C1439l.m33300a(pVar, this.f5795q.f5802a);
            return new C1438a(this.f5795q, this.f5796r, bArr, a, C1439l.m33305a(a.length - 1));
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i
    /* renamed from: c */
    public void mo33307c(long j) {
        super.mo33307c(j);
        int i = 0;
        this.f5794p = j != 0;
        C1439l.C1443d dVar = this.f5795q;
        if (dVar != null) {
            i = dVar.f5805d;
        }
        this.f5793o = i;
    }
}
