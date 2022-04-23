package p012b.p076s.p078b.p079a.p102w0.p105n0;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.PrivFrame;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import p012b.p076s.p078b.p079a.p080a1.C1163b0;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.C1347d;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
import p012b.p076s.p078b.p079a.p096u0.p099h.C1524b;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1590d;
import p012b.p076s.p078b.p079a.p102w0.p105n0.AbstractC1598e;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1623f;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* renamed from: b.s.b.a.w0.n0.g */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/g.class */
public final class C1601g extends AbstractC1590d {

    /* renamed from: H */
    public static final AtomicInteger f6509H = new AtomicInteger();

    /* renamed from: A */
    public AbstractC1350g f6510A;

    /* renamed from: B */
    public boolean f6511B;

    /* renamed from: C */
    public C1610n f6512C;

    /* renamed from: D */
    public int f6513D;

    /* renamed from: E */
    public boolean f6514E;

    /* renamed from: F */
    public volatile boolean f6515F;

    /* renamed from: G */
    public boolean f6516G;

    /* renamed from: j */
    public final int f6517j;

    /* renamed from: k */
    public final int f6518k;

    /* renamed from: l */
    public final Uri f6519l;

    /* renamed from: m */
    public final AbstractC1684g f6520m;

    /* renamed from: n */
    public final C1687i f6521n;

    /* renamed from: o */
    public final boolean f6522o;

    /* renamed from: p */
    public final boolean f6523p;

    /* renamed from: q */
    public final C1196z f6524q;

    /* renamed from: r */
    public final boolean f6525r;

    /* renamed from: s */
    public final AbstractC1598e f6526s;

    /* renamed from: t */
    public final List<Format> f6527t;

    /* renamed from: u */
    public final DrmInitData f6528u;

    /* renamed from: v */
    public final AbstractC1350g f6529v;

    /* renamed from: w */
    public final C1524b f6530w;

    /* renamed from: x */
    public final C1184p f6531x;

    /* renamed from: y */
    public final boolean f6532y;

    /* renamed from: z */
    public final boolean f6533z;

    public C1601g(AbstractC1598e eVar, AbstractC1684g gVar, C1687i iVar, Format format, boolean z, AbstractC1684g gVar2, C1687i iVar2, boolean z2, Uri uri, List<Format> list, int i, Object obj, long j, long j2, long j3, int i2, boolean z3, boolean z4, C1196z zVar, DrmInitData drmInitData, AbstractC1350g gVar3, C1524b bVar, C1184p pVar, boolean z5) {
        super(gVar, iVar, format, i, obj, j, j2, j3);
        this.f6532y = z;
        this.f6518k = i2;
        this.f6520m = gVar2;
        this.f6521n = iVar2;
        this.f6533z = z2;
        this.f6519l = uri;
        this.f6522o = z4;
        this.f6524q = zVar;
        this.f6523p = z3;
        this.f6526s = eVar;
        this.f6527t = list;
        this.f6528u = drmInitData;
        this.f6529v = gVar3;
        this.f6530w = bVar;
        this.f6531x = pVar;
        this.f6525r = z5;
        this.f6514E = iVar2 != null;
        this.f6517j = f6509H.getAndIncrement();
    }

    /* renamed from: a */
    public static C1601g m32700a(AbstractC1598e eVar, AbstractC1684g gVar, Format format, long j, C1623f fVar, int i, Uri uri, List<Format> list, int i2, Object obj, boolean z, C1613o oVar, C1601g gVar2, byte[] bArr, byte[] bArr2) {
        boolean z2;
        C1687i iVar;
        AbstractC1684g gVar3;
        boolean z3;
        C1184p pVar;
        C1524b bVar;
        AbstractC1350g gVar4;
        C1623f.C1624a aVar = fVar.f6694o.get(i);
        C1687i iVar2 = new C1687i(C1163b0.m34509b(fVar.f6707a, aVar.f6696a), aVar.f6704i, aVar.f6705j, null);
        boolean z4 = bArr != null;
        AbstractC1684g a = m32696a(gVar, bArr, z4 ? m32695a(aVar.f6703h) : null);
        C1623f.C1624a aVar2 = aVar.f6697b;
        if (aVar2 != null) {
            boolean z5 = bArr2 != null;
            byte[] a2 = z5 ? m32695a(aVar2.f6703h) : null;
            iVar = new C1687i(C1163b0.m34509b(fVar.f6707a, aVar2.f6696a), aVar2.f6704i, aVar2.f6705j, null);
            gVar3 = m32696a(gVar, bArr2, a2);
            z2 = z5;
        } else {
            iVar = null;
            z2 = false;
            gVar3 = null;
        }
        long j2 = j + aVar.f6700e;
        long j3 = aVar.f6698c;
        int i3 = fVar.f6687h + aVar.f6699d;
        if (gVar2 != null) {
            bVar = gVar2.f6530w;
            pVar = gVar2.f6531x;
            z3 = !uri.equals(gVar2.f6519l) || !gVar2.f6516G;
            gVar4 = (!gVar2.f6511B || gVar2.f6518k != i3 || z3) ? null : gVar2.f6510A;
        } else {
            bVar = new C1524b();
            pVar = new C1184p(10);
            gVar4 = null;
            z3 = false;
        }
        return new C1601g(eVar, a, iVar2, format, z4, gVar3, iVar, z2, uri, list, i2, obj, j2, j2 + j3, fVar.f6688i + i, i3, aVar.f6706k, z, oVar.m32620a(i3), aVar.f6701f, gVar4, bVar, pVar, z3);
    }

    /* renamed from: a */
    public static AbstractC1684g m32696a(AbstractC1684g gVar, byte[] bArr, byte[] bArr2) {
        return bArr != null ? new C1594a(gVar, bArr, bArr2) : gVar;
    }

    /* renamed from: a */
    public static byte[] m32695a(String str) {
        String str2 = str;
        if (C1167d0.m34432j(str).startsWith("0x")) {
            str2 = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str2, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    /* renamed from: a */
    public final long m32701a(AbstractC1351h hVar) throws IOException, InterruptedException {
        hVar.mo33614c();
        try {
            hVar.mo33619a(this.f6531x.f4738a, 0, 10);
            this.f6531x.m34362c(10);
            if (this.f6531x.m34341u() != 4801587) {
                return -9223372036854775807L;
            }
            this.f6531x.m34356f(3);
            int q = this.f6531x.m34345q();
            int i = q + 10;
            if (i > this.f6531x.m34365b()) {
                C1184p pVar = this.f6531x;
                byte[] bArr = pVar.f4738a;
                pVar.m34362c(i);
                System.arraycopy(bArr, 0, this.f6531x.f4738a, 0, 10);
            }
            hVar.mo33619a(this.f6531x.f4738a, 10, q);
            Metadata a = this.f6530w.m32983a(this.f6531x.f4738a, q);
            if (a == null) {
                return -9223372036854775807L;
            }
            int a2 = a.m38018a();
            for (int i2 = 0; i2 < a2; i2++) {
                Metadata.Entry a3 = a.m38017a(i2);
                if (a3 instanceof PrivFrame) {
                    PrivFrame privFrame = (PrivFrame) a3;
                    if ("com.apple.streaming.transportStreamTimestamp".equals(privFrame.f1794b)) {
                        System.arraycopy(privFrame.f1795c, 0, this.f6531x.f4738a, 0, 8);
                        this.f6531x.m34362c(8);
                        return this.f6531x.m34348n() & 8589934591L;
                    }
                }
            }
            return -9223372036854775807L;
        } catch (EOFException e) {
            return -9223372036854775807L;
        }
    }

    /* renamed from: a */
    public final C1347d m32698a(AbstractC1684g gVar, C1687i iVar) throws IOException, InterruptedException {
        C1347d dVar = new C1347d(gVar, iVar.f6886d, gVar.mo32144a(iVar));
        if (this.f6510A == null) {
            long a = m32701a(dVar);
            dVar.mo33614c();
            AbstractC1598e.C1599a a2 = this.f6526s.mo32702a(this.f6529v, iVar.f6883a, this.f6487c, this.f6527t, this.f6528u, this.f6524q, gVar.mo32322p(), dVar);
            this.f6510A = a2.f6506a;
            this.f6511B = a2.f6508c;
            if (a2.f6507b) {
                this.f6512C.m32638e(a != -9223372036854775807L ? this.f6524q.m34292b(a) : this.f6490f);
            }
            this.f6512C.m32663a(this.f6517j, this.f6525r, false);
            this.f6510A.mo32614a(this.f6512C);
        }
        return dVar;
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC0351e
    /* renamed from: a */
    public void mo32334a() {
        this.f6515F = true;
    }

    /* renamed from: a */
    public void m32699a(C1610n nVar) {
        this.f6512C = nVar;
    }

    /* renamed from: a */
    public final void m32697a(AbstractC1684g gVar, C1687i iVar, boolean z) throws IOException, InterruptedException {
        C1687i iVar2;
        boolean z2;
        if (z) {
            z2 = this.f6513D != 0;
            iVar2 = iVar;
        } else {
            iVar2 = iVar.m32384a(this.f6513D);
            z2 = false;
        }
        try {
            C1347d a = m32698a(gVar, iVar2);
            int i = 0;
            if (z2) {
                a.mo33613c(this.f6513D);
                i = 0;
            }
            while (i == 0 && !this.f6515F) {
                i = this.f6510A.mo32615a(a, (C1357n) null);
            }
            this.f6513D = (int) (a.getPosition() - iVar.f6886d);
            C1167d0.m34481a(gVar);
        } catch (Throwable th) {
            C1167d0.m34481a(gVar);
            throw th;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.Loader.AbstractC0351e
    /* renamed from: b */
    public void mo32333b() throws IOException, InterruptedException {
        AbstractC1350g gVar;
        if (this.f6510A == null && (gVar = this.f6529v) != null) {
            this.f6510A = gVar;
            this.f6511B = true;
            this.f6514E = false;
            this.f6512C.m32663a(this.f6517j, this.f6525r, true);
        }
        m32692j();
        if (!this.f6515F) {
            if (!this.f6523p) {
                m32693i();
            }
            this.f6516G = true;
        }
    }

    /* renamed from: h */
    public boolean m32694h() {
        return this.f6516G;
    }

    /* renamed from: i */
    public final void m32693i() throws IOException, InterruptedException {
        if (!this.f6522o) {
            this.f6524q.m34287e();
        } else if (this.f6524q.m34295a() == Long.MAX_VALUE) {
            this.f6524q.m34290c(this.f6490f);
        }
        m32697a(this.f6492h, this.f6485a, this.f6532y);
    }

    /* renamed from: j */
    public final void m32692j() throws IOException, InterruptedException {
        if (this.f6514E) {
            m32697a(this.f6520m, this.f6521n, this.f6533z);
            this.f6513D = 0;
            this.f6514E = false;
        }
    }
}
