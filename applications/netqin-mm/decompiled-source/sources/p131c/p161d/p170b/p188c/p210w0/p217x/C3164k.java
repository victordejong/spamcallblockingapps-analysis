package p131c.p161d.p170b.p188c.p210w0.p217x;

import android.util.Pair;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.Arrays;
import java.util.Collections;
import p131c.p161d.p170b.p188c.p203g1.C2884h;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.C3041f;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.k */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/k.class */
public final class C3164k implements AbstractC3168o {

    /* renamed from: v */
    public static final byte[] f11556v = {73, 68, 51};

    /* renamed from: a */
    public final boolean f11557a;

    /* renamed from: b */
    public final C2903u f11558b;

    /* renamed from: c */
    public final C2904v f11559c;

    /* renamed from: d */
    public final String f11560d;

    /* renamed from: e */
    public String f11561e;

    /* renamed from: f */
    public AbstractC3054q f11562f;

    /* renamed from: g */
    public AbstractC3054q f11563g;

    /* renamed from: h */
    public int f11564h;

    /* renamed from: i */
    public int f11565i;

    /* renamed from: j */
    public int f11566j;

    /* renamed from: k */
    public boolean f11567k;

    /* renamed from: l */
    public boolean f11568l;

    /* renamed from: m */
    public int f11569m;

    /* renamed from: n */
    public int f11570n;

    /* renamed from: o */
    public int f11571o;

    /* renamed from: p */
    public boolean f11572p;

    /* renamed from: q */
    public long f11573q;

    /* renamed from: r */
    public int f11574r;

    /* renamed from: s */
    public long f11575s;

    /* renamed from: t */
    public AbstractC3054q f11576t;

    /* renamed from: u */
    public long f11577u;

    public C3164k(boolean z) {
        this(z, null);
    }

    public C3164k(boolean z, String str) {
        this.f11558b = new C2903u(new byte[7]);
        this.f11559c = new C2904v(Arrays.copyOf(f11556v, 10));
        m27652h();
        this.f11569m = -1;
        this.f11570n = -1;
        this.f11573q = -9223372036854775807L;
        this.f11557a = z;
        this.f11560d = str;
    }

    /* renamed from: a */
    public static boolean m27665a(int i) {
        return (i & 65526) == 65520;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27599a() {
        m27654f();
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27598a(long j, int i) {
        this.f11575s = j;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27597a(C2904v vVar) throws ParserException {
        while (vVar.m28552a() > 0) {
            int i = this.f11564h;
            if (i == 0) {
                m27658c(vVar);
            } else if (i == 1) {
                m27661b(vVar);
            } else if (i != 2) {
                if (i == 3) {
                    if (m27663a(vVar, this.f11558b.f10526a, this.f11567k ? 7 : 5)) {
                        m27657d();
                    }
                } else if (i == 4) {
                    m27656d(vVar);
                } else {
                    throw new IllegalStateException();
                }
            } else if (m27663a(vVar, this.f11559c.f10530a, 10)) {
                m27655e();
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27596a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        dVar.m27684a();
        this.f11561e = dVar.m27683b();
        this.f11562f = iVar.mo28048a(dVar.m27682c(), 1);
        if (this.f11557a) {
            dVar.m27684a();
            AbstractC3054q a = iVar.mo28048a(dVar.m27682c(), 4);
            this.f11563g = a;
            a.mo28034a(Format.m18695a(dVar.m27683b(), "application/id3", (String) null, -1, (DrmInitData) null));
            return;
        }
        this.f11563g = new C3041f();
    }

    /* renamed from: a */
    public final void m27662a(AbstractC3054q qVar, long j, int i, int i2) {
        this.f11564h = 4;
        this.f11565i = i;
        this.f11576t = qVar;
        this.f11577u = j;
        this.f11574r = i2;
    }

    /* renamed from: a */
    public final boolean m27666a(byte b, byte b2) {
        return m27665a(((b & 255) << 8) | (b2 & 255));
    }

    /* renamed from: a */
    public final boolean m27664a(C2904v vVar, int i) {
        boolean z;
        vVar.m28538e(i + 1);
        if (!m27660b(vVar, this.f11558b.f10526a, 1)) {
            return false;
        }
        this.f11558b.m28558b(4);
        int a = this.f11558b.m28565a(1);
        int i2 = this.f11569m;
        if (i2 != -1 && a != i2) {
            return false;
        }
        if (this.f11570n != -1) {
            if (!m27660b(vVar, this.f11558b.f10526a, 1)) {
                return true;
            }
            this.f11558b.m28558b(2);
            if (this.f11558b.m28565a(4) != this.f11570n) {
                return false;
            }
            vVar.m28538e(i + 2);
        }
        if (!m27660b(vVar, this.f11558b.f10526a, 4)) {
            return true;
        }
        this.f11558b.m28558b(14);
        int a2 = this.f11558b.m28565a(13);
        if (a2 <= 6) {
            return false;
        }
        int i3 = i + a2;
        int i4 = i3 + 1;
        if (i4 >= vVar.m28541d()) {
            return true;
        }
        byte[] bArr = vVar.f10530a;
        if (m27666a(bArr[i3], bArr[i4])) {
            z = true;
            if (this.f11569m != -1) {
                if (((vVar.f10530a[i4] & 8) >> 3) == a) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public final boolean m27663a(C2904v vVar, byte[] bArr, int i) {
        int min = Math.min(vVar.m28552a(), i - this.f11565i);
        vVar.m28546a(bArr, this.f11565i, min);
        int i2 = this.f11565i + min;
        this.f11565i = i2;
        return i2 == i;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: b */
    public void mo27595b() {
    }

    /* renamed from: b */
    public final void m27661b(C2904v vVar) {
        if (vVar.m28552a() != 0) {
            this.f11558b.f10526a[0] = vVar.f10530a[vVar.m28543c()];
            this.f11558b.m28558b(2);
            int a = this.f11558b.m28565a(4);
            int i = this.f11570n;
            if (i == -1 || a == i) {
                if (!this.f11568l) {
                    this.f11568l = true;
                    this.f11569m = this.f11571o;
                    this.f11570n = a;
                }
                m27651i();
                return;
            }
            m27654f();
        }
    }

    /* renamed from: b */
    public final boolean m27660b(C2904v vVar, byte[] bArr, int i) {
        if (vVar.m28552a() < i) {
            return false;
        }
        vVar.m28546a(bArr, 0, i);
        return true;
    }

    /* renamed from: c */
    public long m27659c() {
        return this.f11573q;
    }

    /* renamed from: c */
    public final void m27658c(C2904v vVar) {
        byte[] bArr = vVar.f10530a;
        int c = vVar.m28543c();
        int d = vVar.m28541d();
        while (c < d) {
            int i = c + 1;
            int i2 = bArr[c] & 255;
            if (this.f11566j != 512 || !m27666a((byte) -1, (byte) i2) || (!this.f11568l && !m27664a(vVar, i - 2))) {
                int i3 = this.f11566j;
                int i4 = i2 | i3;
                if (i4 == 329) {
                    this.f11566j = 768;
                    c = i;
                } else if (i4 == 511) {
                    this.f11566j = RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN;
                    c = i;
                } else if (i4 == 836) {
                    this.f11566j = 1024;
                    c = i;
                } else if (i4 != 1075) {
                    c = i;
                    if (i3 != 256) {
                        this.f11566j = 256;
                        c = i - 1;
                    }
                } else {
                    m27650j();
                    vVar.m28538e(i);
                    return;
                }
            } else {
                this.f11571o = (i2 & 8) >> 3;
                boolean z = true;
                if ((i2 & 1) != 0) {
                    z = false;
                }
                this.f11567k = z;
                if (!this.f11568l) {
                    m27653g();
                } else {
                    m27651i();
                }
                vVar.m28538e(i);
                return;
            }
        }
        vVar.m28538e(c);
    }

    /* renamed from: d */
    public final void m27657d() throws ParserException {
        this.f11558b.m28558b(0);
        if (!this.f11572p) {
            int a = this.f11558b.m28565a(2) + 1;
            int i = a;
            if (a != 2) {
                C2894o.m28594d("AdtsReader", "Detected audio object type: " + a + ", but assuming AAC LC.");
                i = 2;
            }
            this.f11558b.m28556c(5);
            byte[] a2 = C2884h.m28698a(i, this.f11570n, this.f11558b.m28565a(3));
            Pair<Integer, Integer> a3 = C2884h.m28694a(a2);
            Format a4 = Format.m18698a(this.f11561e, "audio/mp4a-latm", null, -1, -1, ((Integer) a3.second).intValue(), ((Integer) a3.first).intValue(), Collections.singletonList(a2), null, 0, this.f11560d);
            this.f11573q = 1024000000 / a4.f21966w;
            this.f11562f.mo28034a(a4);
            this.f11572p = true;
        } else {
            this.f11558b.m28556c(10);
        }
        this.f11558b.m28556c(4);
        int a5 = (this.f11558b.m28565a(13) - 2) - 5;
        int i2 = a5;
        if (this.f11567k) {
            i2 = a5 - 2;
        }
        m27662a(this.f11562f, this.f11573q, 0, i2);
    }

    /* renamed from: d */
    public final void m27656d(C2904v vVar) {
        int min = Math.min(vVar.m28552a(), this.f11574r - this.f11565i);
        this.f11576t.mo28036a(vVar, min);
        int i = this.f11565i + min;
        this.f11565i = i;
        int i2 = this.f11574r;
        if (i == i2) {
            this.f11576t.mo28037a(this.f11575s, 1, i2, 0, null);
            this.f11575s += this.f11577u;
            m27652h();
        }
    }

    /* renamed from: e */
    public final void m27655e() {
        this.f11563g.mo28036a(this.f11559c, 10);
        this.f11559c.m28538e(6);
        m27662a(this.f11563g, 0L, 10, this.f11559c.m28525q() + 10);
    }

    /* renamed from: f */
    public final void m27654f() {
        this.f11568l = false;
        m27652h();
    }

    /* renamed from: g */
    public final void m27653g() {
        this.f11564h = 1;
        this.f11565i = 0;
    }

    /* renamed from: h */
    public final void m27652h() {
        this.f11564h = 0;
        this.f11565i = 0;
        this.f11566j = 256;
    }

    /* renamed from: i */
    public final void m27651i() {
        this.f11564h = 3;
        this.f11565i = 0;
    }

    /* renamed from: j */
    public final void m27650j() {
        this.f11564h = 2;
        this.f11565i = f11556v.length;
        this.f11574r = 0;
        this.f11559c.m28538e(0);
    }
}
