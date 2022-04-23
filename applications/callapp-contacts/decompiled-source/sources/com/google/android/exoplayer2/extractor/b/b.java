package com.google.android.exoplayer2.extractor.b;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.extractor.o;
import com.google.android.exoplayer2.extractor.p;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import com.google.common.base.d;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/b/b.class */
public final class b implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f20932a = _$$Lambda$b$qJdK1mPYJfLgJaqXq_DRPz_o3ho.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f20933b;

    /* renamed from: c  reason: collision with root package name */
    private final u f20934c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f20935d;
    private final m.a e;
    private j f;
    private x g;
    private int h;
    private Metadata i;
    private p j;
    private int k;
    private int l;
    private a m;
    private int n;
    private long o;

    public b() {
        this(0);
    }

    public b(int i) {
        this.f20933b = new byte[42];
        this.f20934c = new u(new byte[32768], 0);
        this.f20935d = (i & 1) == 0 ? false : true;
        this.e = new m.a();
        this.h = 0;
    }

    private long a(u uVar, boolean z) {
        a.b(this.j);
        int i = uVar.f22336b;
        while (i <= uVar.f22337c - 16) {
            uVar.d(i);
            if (m.a(uVar, this.j, this.l, this.e)) {
                uVar.d(i);
                return this.e.f21309a;
            }
            i++;
        }
        if (z) {
            while (i <= uVar.f22337c - this.k) {
                uVar.d(i);
                boolean z2 = false;
                try {
                    z2 = m.a(uVar, this.j, this.l, this.e);
                } catch (IndexOutOfBoundsException e) {
                    z2 = false;
                }
                if (uVar.f22336b > uVar.f22337c) {
                }
                if (z2) {
                    uVar.d(i);
                    return this.e.f21309a;
                }
                i++;
            }
            uVar.d(uVar.f22337c);
            return -1L;
        }
        uVar.d(i);
        return -1L;
    }

    private void a() {
        ((x) af.a(this.g)).a((this.o * 1000000) / ((p) af.a(this.j)).e, 1, this.n, 0, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] b() {
        return new h[]{new b()};
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final int a(i iVar, com.google.android.exoplayer2.extractor.u uVar) throws IOException {
        v vVar;
        int i = this.h;
        boolean z = true;
        if (i == 0) {
            boolean z2 = this.f20935d;
            iVar.a();
            long b2 = iVar.b();
            Metadata a2 = n.a(iVar, !z2);
            iVar.b((int) (iVar.b() - b2));
            this.i = a2;
            this.h = 1;
            return 0;
        } else if (i == 1) {
            byte[] bArr = this.f20933b;
            iVar.d(bArr, 0, bArr.length);
            iVar.a();
            this.h = 2;
            return 0;
        } else if (i == 2) {
            u uVar2 = new u(4);
            iVar.b(uVar2.f22335a, 0, 4);
            if (uVar2.h() == 1716281667) {
                this.h = 3;
                return 0;
            }
            throw new ParserException("Failed to read FLAC stream marker.");
        } else if (i == 3) {
            n.a aVar = new n.a(this.j);
            boolean z3 = false;
            while (!z3) {
                iVar.a();
                t tVar = new t(new byte[4]);
                iVar.d(tVar.f22331a, 0, 4);
                z3 = tVar.e();
                int c2 = tVar.c(7);
                int c3 = tVar.c(24) + 4;
                if (c2 == 0) {
                    byte[] bArr2 = new byte[38];
                    iVar.b(bArr2, 0, 38);
                    aVar.f21310a = new p(bArr2, 4);
                } else {
                    p pVar = aVar.f21310a;
                    if (pVar == null) {
                        throw new IllegalArgumentException();
                    } else if (c2 == 3) {
                        u uVar3 = new u(c3);
                        iVar.b(uVar3.f22335a, 0, c3);
                        aVar.f21310a = pVar.a(n.a(uVar3));
                    } else if (c2 == 4) {
                        u uVar4 = new u(c3);
                        iVar.b(uVar4.f22335a, 0, c3);
                        uVar4.e(4);
                        aVar.f21310a = new p(pVar.f21313a, pVar.f21314b, pVar.f21315c, pVar.f21316d, pVar.e, pVar.g, pVar.h, pVar.j, pVar.k, pVar.a(p.a(Arrays.asList(z.a(uVar4, false, false).f21349b), Collections.emptyList())));
                    } else if (c2 == 6) {
                        u uVar5 = new u(c3);
                        iVar.b(uVar5.f22335a, 0, c3);
                        uVar5.e(4);
                        int j = uVar5.j();
                        String a3 = uVar5.a(uVar5.j(), d.f31918a);
                        String f = uVar5.f(uVar5.j());
                        int j2 = uVar5.j();
                        int j3 = uVar5.j();
                        int j4 = uVar5.j();
                        int j5 = uVar5.j();
                        int j6 = uVar5.j();
                        byte[] bArr3 = new byte[j6];
                        uVar5.a(bArr3, 0, j6);
                        aVar.f21310a = new p(pVar.f21313a, pVar.f21314b, pVar.f21315c, pVar.f21316d, pVar.e, pVar.g, pVar.h, pVar.j, pVar.k, pVar.a(p.a(Collections.emptyList(), Collections.singletonList(new PictureFrame(j, a3, f, j2, j3, j4, j5, bArr3)))));
                    } else {
                        iVar.b(c3);
                    }
                }
                this.j = (p) af.a(aVar.f21310a);
            }
            a.b(this.j);
            this.k = Math.max(this.j.f21315c, 6);
            ((x) af.a(this.g)).a(this.j.a(this.f20933b, this.i));
            this.h = 4;
            return 0;
        } else if (i == 4) {
            iVar.a();
            u uVar6 = new u(2);
            iVar.d(uVar6.f22335a, 0, 2);
            int d2 = uVar6.d();
            if ((d2 >> 2) == 16382) {
                iVar.a();
                this.l = d2;
                j jVar = (j) af.a(this.f);
                long c4 = iVar.c();
                long d3 = iVar.d();
                a.b(this.j);
                if (this.j.k != null) {
                    vVar = new o(this.j, c4);
                } else if (d3 == -1 || this.j.j <= 0) {
                    vVar = new v.b(this.j.a());
                } else {
                    a aVar2 = new a(this.j, this.l, c4, d3);
                    this.m = aVar2;
                    vVar = aVar2.a();
                }
                jVar.a(vVar);
                this.h = 5;
                return 0;
            }
            iVar.a();
            throw new ParserException("First frame does not start with sync code.");
        } else if (i == 5) {
            a.b(this.g);
            a.b(this.j);
            a aVar3 = this.m;
            if (aVar3 != null && aVar3.b()) {
                return this.m.a(iVar, uVar);
            }
            if (this.o == -1) {
                this.o = m.a(iVar, this.j);
                return 0;
            }
            int i2 = this.f20934c.f22337c;
            if (i2 < 32768) {
                int a4 = iVar.a(this.f20934c.f22335a, i2, 32768 - i2);
                if (a4 != -1) {
                    z = false;
                }
                if (!z) {
                    this.f20934c.c(i2 + a4);
                } else if (this.f20934c.a() == 0) {
                    a();
                    return -1;
                }
            } else {
                z = false;
            }
            int i3 = this.f20934c.f22336b;
            int i4 = this.n;
            int i5 = this.k;
            if (i4 < i5) {
                u uVar7 = this.f20934c;
                uVar7.e(Math.min(i5 - i4, uVar7.a()));
            }
            long a5 = a(this.f20934c, z);
            int i6 = this.f20934c.f22336b - i3;
            this.f20934c.d(i3);
            this.g.b(this.f20934c, i6);
            this.n += i6;
            if (a5 != -1) {
                a();
                this.n = 0;
                this.o = a5;
            }
            if (this.f20934c.a() >= 16) {
                return 0;
            }
            int a6 = this.f20934c.a();
            System.arraycopy(this.f20934c.f22335a, this.f20934c.f22336b, this.f20934c.f22335a, 0, a6);
            this.f20934c.d(0);
            this.f20934c.c(a6);
            return 0;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        long j3 = 0;
        if (j == 0) {
            this.h = 0;
        } else {
            a aVar = this.m;
            if (aVar != null) {
                aVar.a(j2);
            }
        }
        if (j2 != 0) {
            j3 = -1;
        }
        this.o = j3;
        this.n = 0;
        this.f20934c.a(0);
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.f = jVar;
        this.g = jVar.a(0, 1);
        jVar.a();
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final boolean a(i iVar) throws IOException {
        n.a(iVar, false);
        u uVar = new u(4);
        iVar.d(uVar.f22335a, 0, 4);
        return uVar.h() == 1716281667;
    }
}
