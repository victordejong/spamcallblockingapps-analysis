package p131c.p161d.p170b.p188c.p210w0.p217x;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2899s;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.p */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/p.class */
public final class C3169p implements AbstractC3168o {

    /* renamed from: q */
    public static final double[] f11597q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a */
    public String f11598a;

    /* renamed from: b */
    public AbstractC3054q f11599b;

    /* renamed from: c */
    public boolean f11600c;

    /* renamed from: d */
    public long f11601d;

    /* renamed from: e */
    public final C3163j0 f11602e;

    /* renamed from: f */
    public final C2904v f11603f;

    /* renamed from: g */
    public final boolean[] f11604g;

    /* renamed from: h */
    public final C3170a f11605h;

    /* renamed from: i */
    public final C3180v f11606i;

    /* renamed from: j */
    public long f11607j;

    /* renamed from: k */
    public boolean f11608k;

    /* renamed from: l */
    public long f11609l;

    /* renamed from: m */
    public long f11610m;

    /* renamed from: n */
    public long f11611n;

    /* renamed from: o */
    public boolean f11612o;

    /* renamed from: p */
    public boolean f11613p;

    /* renamed from: c.d.b.c.w0.x.p$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/p$a.class */
    public static final class C3170a {

        /* renamed from: e */
        public static final byte[] f11614e = {0, 0, 1};

        /* renamed from: a */
        public boolean f11615a;

        /* renamed from: b */
        public int f11616b;

        /* renamed from: c */
        public int f11617c;

        /* renamed from: d */
        public byte[] f11618d;

        public C3170a(int i) {
            this.f11618d = new byte[i];
        }

        /* renamed from: a */
        public void m27638a() {
            this.f11615a = false;
            this.f11616b = 0;
            this.f11617c = 0;
        }

        /* renamed from: a */
        public void m27636a(byte[] bArr, int i, int i2) {
            if (this.f11615a) {
                int i3 = i2 - i;
                byte[] bArr2 = this.f11618d;
                int length = bArr2.length;
                int i4 = this.f11616b;
                if (length < i4 + i3) {
                    this.f11618d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.f11618d, this.f11616b, i3);
                this.f11616b += i3;
            }
        }

        /* renamed from: a */
        public boolean m27637a(int i, int i2) {
            if (this.f11615a) {
                int i3 = this.f11616b - i2;
                this.f11616b = i3;
                if (this.f11617c == 0 && i == 181) {
                    this.f11617c = i3;
                } else {
                    this.f11615a = false;
                    return true;
                }
            } else if (i == 179) {
                this.f11615a = true;
            }
            byte[] bArr = f11614e;
            m27636a(bArr, 0, bArr.length);
            return false;
        }
    }

    public C3169p() {
        this(null);
    }

    public C3169p(C3163j0 j0Var) {
        this.f11602e = j0Var;
        this.f11604g = new boolean[4];
        this.f11605h = new C3170a(128);
        if (j0Var != null) {
            this.f11606i = new C3180v(178, 128);
            this.f11603f = new C2904v();
            return;
        }
        this.f11606i = null;
        this.f11603f = null;
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
    public static android.util.Pair<com.google.android.exoplayer2.Format, java.lang.Long> m27639a(p131c.p161d.p170b.p188c.p210w0.p217x.C3169p.C3170a r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p217x.C3169p.m27639a(c.d.b.c.w0.x.p$a, java.lang.String):android.util.Pair");
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27599a() {
        C2899s.m28572a(this.f11604g);
        this.f11605h.m27638a();
        if (this.f11602e != null) {
            this.f11606i.m27588b();
        }
        this.f11607j = 0L;
        this.f11608k = false;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27598a(long j, int i) {
        this.f11609l = j;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27597a(C2904v vVar) {
        int i;
        int c = vVar.m28543c();
        int d = vVar.m28541d();
        byte[] bArr = vVar.f10530a;
        this.f11607j += vVar.m28552a();
        this.f11599b.mo28036a(vVar, vVar.m28552a());
        while (true) {
            int a = C2899s.m28573a(bArr, c, d, this.f11604g);
            if (a == d) {
                break;
            }
            int i2 = a + 3;
            int i3 = vVar.f10530a[i2] & 255;
            int i4 = a - c;
            boolean z = false;
            if (!this.f11600c) {
                if (i4 > 0) {
                    this.f11605h.m27636a(bArr, c, a);
                }
                if (this.f11605h.m27637a(i3, i4 < 0 ? -i4 : 0)) {
                    Pair<Format, Long> a2 = m27639a(this.f11605h, this.f11598a);
                    this.f11599b.mo28034a((Format) a2.first);
                    this.f11601d = ((Long) a2.second).longValue();
                    this.f11600c = true;
                }
            }
            if (this.f11602e != null) {
                if (i4 > 0) {
                    this.f11606i.m27589a(bArr, c, a);
                    i = 0;
                } else {
                    i = -i4;
                }
                if (this.f11606i.m27590a(i)) {
                    C3180v vVar2 = this.f11606i;
                    this.f11603f.m28547a(this.f11606i.f11736d, C2899s.m28569c(vVar2.f11736d, vVar2.f11737e));
                    this.f11602e.m27668a(this.f11611n, this.f11603f);
                }
                if (i3 == 178 && vVar.f10530a[a + 2] == 1) {
                    this.f11606i.m27587b(i3);
                }
            }
            if (i3 == 0 || i3 == 179) {
                int i5 = d - a;
                if (this.f11608k && this.f11613p && this.f11600c) {
                    this.f11599b.mo28037a(this.f11611n, this.f11612o ? 1 : 0, ((int) (this.f11607j - this.f11610m)) - i5, i5, null);
                }
                if (!this.f11608k || this.f11613p) {
                    this.f11610m = this.f11607j - i5;
                    long j = this.f11609l;
                    if (j == -9223372036854775807L) {
                        j = this.f11608k ? this.f11611n + this.f11601d : 0L;
                    }
                    this.f11611n = j;
                    this.f11612o = false;
                    this.f11609l = -9223372036854775807L;
                    this.f11608k = true;
                }
                if (i3 == 0) {
                    z = true;
                }
                this.f11613p = z;
            } else if (i3 == 184) {
                this.f11612o = true;
            }
            c = i2;
        }
        if (!this.f11600c) {
            this.f11605h.m27636a(bArr, c, d);
        }
        if (this.f11602e != null) {
            this.f11606i.m27589a(bArr, c, d);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27596a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        dVar.m27684a();
        this.f11598a = dVar.m27683b();
        this.f11599b = iVar.mo28048a(dVar.m27682c(), 2);
        C3163j0 j0Var = this.f11602e;
        if (j0Var != null) {
            j0Var.m27667a(iVar, dVar);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: b */
    public void mo27595b() {
    }
}
