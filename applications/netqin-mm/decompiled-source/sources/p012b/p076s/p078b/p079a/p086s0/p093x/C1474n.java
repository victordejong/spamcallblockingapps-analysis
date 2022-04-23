package p012b.p076s.p078b.p079a.p086s0.p093x;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1180n;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.n */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/n.class */
public final class C1474n implements AbstractC1473m {

    /* renamed from: q */
    public static final double[] f5959q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a */
    public String f5960a;

    /* renamed from: b */
    public AbstractC1362q f5961b;

    /* renamed from: c */
    public boolean f5962c;

    /* renamed from: d */
    public long f5963d;

    /* renamed from: e */
    public final C1470j0 f5964e;

    /* renamed from: f */
    public final C1184p f5965f;

    /* renamed from: g */
    public final boolean[] f5966g;

    /* renamed from: h */
    public final C1475a f5967h;

    /* renamed from: i */
    public final C1485t f5968i;

    /* renamed from: j */
    public long f5969j;

    /* renamed from: k */
    public boolean f5970k;

    /* renamed from: l */
    public long f5971l;

    /* renamed from: m */
    public long f5972m;

    /* renamed from: n */
    public long f5973n;

    /* renamed from: o */
    public boolean f5974o;

    /* renamed from: p */
    public boolean f5975p;

    /* renamed from: b.s.b.a.s0.x.n$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/n$a.class */
    public static final class C1475a {

        /* renamed from: e */
        public static final byte[] f5976e = {0, 0, 1};

        /* renamed from: a */
        public boolean f5977a;

        /* renamed from: b */
        public int f5978b;

        /* renamed from: c */
        public int f5979c;

        /* renamed from: d */
        public byte[] f5980d;

        public C1475a(int i) {
            this.f5980d = new byte[i];
        }

        /* renamed from: a */
        public void m33209a() {
            this.f5977a = false;
            this.f5978b = 0;
            this.f5979c = 0;
        }

        /* renamed from: a */
        public void m33207a(byte[] bArr, int i, int i2) {
            if (this.f5977a) {
                int i3 = i2 - i;
                byte[] bArr2 = this.f5980d;
                int length = bArr2.length;
                int i4 = this.f5978b;
                if (length < i4 + i3) {
                    this.f5980d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.f5980d, this.f5978b, i3);
                this.f5978b += i3;
            }
        }

        /* renamed from: a */
        public boolean m33208a(int i, int i2) {
            if (this.f5977a) {
                int i3 = this.f5978b - i2;
                this.f5978b = i3;
                if (this.f5979c == 0 && i == 181) {
                    this.f5979c = i3;
                } else {
                    this.f5977a = false;
                    return true;
                }
            } else if (i == 179) {
                this.f5977a = true;
            }
            byte[] bArr = f5976e;
            m33207a(bArr, 0, bArr.length);
            return false;
        }
    }

    public C1474n() {
        this(null);
    }

    public C1474n(C1470j0 j0Var) {
        this.f5964e = j0Var;
        this.f5966g = new boolean[4];
        this.f5967h = new C1475a(128);
        if (j0Var != null) {
            this.f5968i = new C1485t(178, 128);
            this.f5965f = new C1184p();
            return;
        }
        this.f5968i = null;
        this.f5965f = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00c5  */
    /* JADX WARN: Type inference failed for: r0v34, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v38, types: [double] */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1, types: [double] */
    /* JADX WARN: Type inference failed for: r27v4 */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<androidx.media2.exoplayer.external.Format, java.lang.Long> m33210a(p012b.p076s.p078b.p079a.p086s0.p093x.C1474n.C1475a r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p093x.C1474n.m33210a(b.s.b.a.s0.x.n$a, java.lang.String):android.util.Pair");
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33170a() {
        C1180n.m34391a(this.f5966g);
        this.f5967h.m33209a();
        if (this.f5964e != null) {
            this.f5968i.m33159b();
        }
        this.f5969j = 0L;
        this.f5970k = false;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33169a(long j, int i) {
        this.f5971l = j;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33168a(C1184p pVar) {
        int i;
        int c = pVar.m34363c();
        int d = pVar.m34361d();
        byte[] bArr = pVar.f4738a;
        this.f5969j += pVar.m34372a();
        this.f5961b.mo32827a(pVar, pVar.m34372a());
        while (true) {
            int a = C1180n.m34392a(bArr, c, d, this.f5966g);
            if (a == d) {
                break;
            }
            int i2 = a + 3;
            int i3 = pVar.f4738a[i2] & 255;
            int i4 = a - c;
            boolean z = false;
            if (!this.f5962c) {
                if (i4 > 0) {
                    this.f5967h.m33207a(bArr, c, a);
                }
                if (this.f5967h.m33208a(i3, i4 < 0 ? -i4 : 0)) {
                    Pair<Format, Long> a2 = m33210a(this.f5967h, this.f5960a);
                    this.f5961b.mo32623a((Format) a2.first);
                    this.f5963d = ((Long) a2.second).longValue();
                    this.f5962c = true;
                }
            }
            if (this.f5964e != null) {
                if (i4 > 0) {
                    this.f5968i.m33160a(bArr, c, a);
                    i = 0;
                } else {
                    i = -i4;
                }
                if (this.f5968i.m33161a(i)) {
                    C1485t tVar = this.f5968i;
                    this.f5965f.m34367a(this.f5968i.f6098d, C1180n.m34388c(tVar.f6098d, tVar.f6099e));
                    this.f5964e.m33216a(this.f5973n, this.f5965f);
                }
                if (i3 == 178 && pVar.f4738a[a + 2] == 1) {
                    this.f5968i.m33158b(i3);
                }
            }
            if (i3 == 0 || i3 == 179) {
                int i5 = d - a;
                if (this.f5970k && this.f5975p && this.f5962c) {
                    this.f5961b.mo32832a(this.f5973n, this.f5974o ? 1 : 0, ((int) (this.f5969j - this.f5972m)) - i5, i5, null);
                }
                if (!this.f5970k || this.f5975p) {
                    this.f5972m = this.f5969j - i5;
                    long j = this.f5971l;
                    if (j == -9223372036854775807L) {
                        j = this.f5970k ? this.f5973n + this.f5963d : 0L;
                    }
                    this.f5973n = j;
                    this.f5974o = false;
                    this.f5971l = -9223372036854775807L;
                    this.f5970k = true;
                }
                if (i3 == 0) {
                    z = true;
                }
                this.f5975p = z;
            } else if (i3 == 184) {
                this.f5974o = true;
            }
            c = i2;
        }
        if (!this.f5962c) {
            this.f5967h.m33207a(bArr, c, d);
        }
        if (this.f5964e != null) {
            this.f5968i.m33160a(bArr, c, d);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33167a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        dVar.m33246a();
        this.f5960a = dVar.m33245b();
        this.f5961b = iVar.mo32666a(dVar.m33244c(), 2);
        C1470j0 j0Var = this.f5964e;
        if (j0Var != null) {
            j0Var.m33215a(iVar, dVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: b */
    public void mo33166b() {
    }
}
