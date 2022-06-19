package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import com.google.android.exoplayer2.Format;
import java.util.Arrays;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24407g;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/f.class */
public final class C24369f implements AbstractC24373j {

    /* renamed from: v */
    public static final byte[] f67817v = {73, 68, 51};

    /* renamed from: a */
    public final boolean f67818a;

    /* renamed from: d */
    public final String f67821d;

    /* renamed from: e */
    public String f67822e;

    /* renamed from: f */
    public AbstractC24422s f67823f;

    /* renamed from: g */
    public AbstractC24422s f67824g;

    /* renamed from: h */
    public int f67825h;

    /* renamed from: i */
    public int f67826i;

    /* renamed from: j */
    public int f67827j;

    /* renamed from: k */
    public boolean f67828k;

    /* renamed from: l */
    public boolean f67829l;

    /* renamed from: o */
    public int f67832o;

    /* renamed from: p */
    public boolean f67833p;

    /* renamed from: r */
    public int f67835r;

    /* renamed from: s */
    public long f67836s;

    /* renamed from: t */
    public AbstractC24422s f67837t;

    /* renamed from: u */
    public long f67838u;

    /* renamed from: b */
    public final C24797s f67819b = new C24797s(new byte[7]);

    /* renamed from: c */
    public final C24798t f67820c = new C24798t(Arrays.copyOf(f67817v, 10));

    /* renamed from: m */
    public int f67830m = -1;

    /* renamed from: n */
    public int f67831n = -1;

    /* renamed from: q */
    public long f67834q = -9223372036854775807L;

    public C24369f(boolean z, String str) {
        m5197h();
        this.f67818a = z;
        this.f67821d = str;
    }

    /* renamed from: g */
    public static boolean m5198g(int i) {
        return (i & 65526) == 65520;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: a */
    public void mo5184a() {
        this.f67829l = false;
        m5197h();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: b */
    public void mo5183b() {
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: c */
    public void mo5182c(long j, int i) {
        this.f67836s = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x0418 A[EDGE_INSN: B:147:0x0418->B:100:0x0418 ?: BREAK  , SYNTHETIC] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo5181d(p193e.p1577m.p1578a.p1596c.p1636q1.C24798t r13) throws p193e.p1577m.p1578a.p1596c.C24560m0 {
        /*
            Method dump skipped, instructions count: 1262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24369f.mo5181d(e.m.a.c.q1.t):void");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24373j
    /* renamed from: e */
    public void mo5180e(AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        c24365d.m5203a();
        this.f67822e = c24365d.m5202b();
        this.f67823f = abstractC24409i.mo4960i(c24365d.m5201c(), 1);
        if (!this.f67818a) {
            this.f67824g = new C24407g();
            return;
        }
        c24365d.m5203a();
        AbstractC24422s mo4960i = abstractC24409i.mo4960i(c24365d.m5201c(), 4);
        this.f67824g = mo4960i;
        mo4960i.mo4928b(Format.m39250k(c24365d.m5202b(), "application/id3", null, -1, null));
    }

    /* renamed from: f */
    public final boolean m5199f(C24798t c24798t, byte[] bArr, int i) {
        int min = Math.min(c24798t.m4545a(), i - this.f67826i);
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, this.f67826i, min);
        c24798t.f69505b += min;
        int i2 = this.f67826i + min;
        this.f67826i = i2;
        return i2 == i;
    }

    /* renamed from: h */
    public final void m5197h() {
        this.f67825h = 0;
        this.f67826i = 0;
        this.f67827j = 256;
    }

    /* renamed from: i */
    public final boolean m5196i(C24798t c24798t, byte[] bArr, int i) {
        if (c24798t.m4545a() < i) {
            return false;
        }
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, i);
        c24798t.f69505b += i;
        return true;
    }
}
