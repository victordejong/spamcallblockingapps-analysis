package p131c.p161d.p170b.p188c.p190b1;

import com.google.android.exoplayer2.Format;
import java.io.EOFException;
import java.io.IOException;
import p131c.p161d.p170b.p188c.C2692b0;
import p131c.p161d.p170b.p188c.p190b1.C2753x;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2821e;
import p131c.p161d.p170b.p188c.p201f1.C2820d;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p208u0.C3016d;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3023d;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
/* renamed from: c.d.b.c.b1.y */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/y.class */
public class C2755y implements AbstractC3054q {

    /* renamed from: a */
    public final AbstractC2821e f10051a;

    /* renamed from: b */
    public final int f10052b;

    /* renamed from: c */
    public final C2753x f10053c;

    /* renamed from: d */
    public final C2753x.C2754a f10054d = new C2753x.C2754a();

    /* renamed from: e */
    public final C2904v f10055e = new C2904v(32);

    /* renamed from: f */
    public C2756a f10056f;

    /* renamed from: g */
    public C2756a f10057g;

    /* renamed from: h */
    public C2756a f10058h;

    /* renamed from: i */
    public boolean f10059i;

    /* renamed from: j */
    public Format f10060j;

    /* renamed from: k */
    public long f10061k;

    /* renamed from: l */
    public long f10062l;

    /* renamed from: m */
    public boolean f10063m;

    /* renamed from: n */
    public AbstractC2757b f10064n;

    /* renamed from: c.d.b.c.b1.y$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/y$a.class */
    public static final class C2756a {

        /* renamed from: a */
        public final long f10065a;

        /* renamed from: b */
        public final long f10066b;

        /* renamed from: c */
        public boolean f10067c;

        /* renamed from: d */
        public C2820d f10068d;

        /* renamed from: e */
        public C2756a f10069e;

        public C2756a(long j, int i) {
            this.f10065a = j;
            this.f10066b = j + i;
        }

        /* renamed from: a */
        public int m29090a(long j) {
            return ((int) (j - this.f10065a)) + this.f10068d.f10260b;
        }

        /* renamed from: a */
        public C2756a m29091a() {
            this.f10068d = null;
            C2756a aVar = this.f10069e;
            this.f10069e = null;
            return aVar;
        }

        /* renamed from: a */
        public void m29089a(C2820d dVar, C2756a aVar) {
            this.f10068d = dVar;
            this.f10069e = aVar;
            this.f10067c = true;
        }
    }

    /* renamed from: c.d.b.c.b1.y$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/y$b.class */
    public interface AbstractC2757b {
        /* renamed from: a */
        void mo29088a(Format format);
    }

    public C2755y(AbstractC2821e eVar, AbstractC3023d<?> dVar) {
        this.f10051a = eVar;
        this.f10052b = eVar.mo28927c();
        this.f10053c = new C2753x(dVar);
        C2756a aVar = new C2756a(0L, this.f10052b);
        this.f10056f = aVar;
        this.f10057g = aVar;
        this.f10058h = aVar;
    }

    /* renamed from: a */
    public static Format m29109a(Format format, long j) {
        if (format == null) {
            return null;
        }
        Format format2 = format;
        if (j != 0) {
            long j2 = format.f21956m;
            format2 = format;
            if (j2 != Long.MAX_VALUE) {
                format2 = format.m18710a(j2 + j);
            }
        }
        return format2;
    }

    /* renamed from: a */
    public int m29119a() {
        return this.f10053c.m29145a();
    }

    /* renamed from: a */
    public int m29115a(long j, boolean z, boolean z2) {
        return this.f10053c.m29140a(j, z, z2);
    }

    /* renamed from: a */
    public int m29113a(C2692b0 b0Var, C3016d dVar, boolean z, boolean z2, long j) {
        int a = this.f10053c.m29139a(b0Var, dVar, z, z2, this.f10054d);
        if (a == -4 && !dVar.m28143d()) {
            if (dVar.f10904d < j) {
                dVar.m28148a(Integer.MIN_VALUE);
            }
            if (!dVar.m28130h()) {
                m29103b(dVar, this.f10054d);
            }
        }
        return a;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3054q
    /* renamed from: a */
    public int mo28035a(AbstractC3043h hVar, int i, boolean z) throws IOException, InterruptedException {
        int b = m29106b(i);
        C2756a aVar = this.f10058h;
        int read = hVar.read(aVar.f10068d.f10259a, aVar.m29090a(this.f10062l), b);
        if (read != -1) {
            m29118a(read);
            return read;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    /* renamed from: a */
    public final void m29118a(int i) {
        long j = this.f10062l + i;
        this.f10062l = j;
        C2756a aVar = this.f10058h;
        if (j == aVar.f10066b) {
            this.f10058h = aVar.f10069e;
        }
    }

    /* renamed from: a */
    public final void m29117a(long j) {
        while (true) {
            C2756a aVar = this.f10057g;
            if (j >= aVar.f10066b) {
                this.f10057g = aVar.f10069e;
            } else {
                return;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3054q
    /* renamed from: a */
    public void mo28037a(long j, int i, int i2, int i3, AbstractC3054q.C3055a aVar) {
        if (this.f10059i) {
            mo28034a(this.f10060j);
        }
        long j2 = j + this.f10061k;
        if (this.f10063m) {
            if ((i & 1) != 0 && this.f10053c.m29142a(j2)) {
                this.f10063m = false;
            } else {
                return;
            }
        }
        this.f10053c.m29141a(j2, i, (this.f10062l - i2) - i3, i2, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m29116a(long r7, java.nio.ByteBuffer r9, int r10) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r0.m29117a(r1)
        L_0x0005:
            r0 = r10
            if (r0 <= 0) goto L_0x006f
            r0 = r10
            r1 = r6
            c.d.b.c.b1.y$a r1 = r1.f10057g
            long r1 = r1.f10066b
            r2 = r7
            long r1 = r1 - r2
            int r1 = (int) r1
            int r0 = java.lang.Math.min(r0, r1)
            r11 = r0
            r0 = r6
            c.d.b.c.b1.y$a r0 = r0.f10057g
            r12 = r0
            r0 = r9
            r1 = r12
            c.d.b.c.f1.d r1 = r1.f10068d
            byte[] r1 = r1.f10259a
            r2 = r12
            r3 = r7
            int r2 = r2.m29090a(r3)
            r3 = r11
            java.nio.ByteBuffer r0 = r0.put(r1, r2, r3)
            r0 = r10
            r1 = r11
            int r0 = r0 - r1
            r13 = r0
            r0 = r7
            r1 = r11
            long r1 = (long) r1
            long r0 = r0 + r1
            r14 = r0
            r0 = r6
            c.d.b.c.b1.y$a r0 = r0.f10057g
            r12 = r0
            r0 = r14
            r7 = r0
            r0 = r13
            r10 = r0
            r0 = r14
            r1 = r12
            long r1 = r1.f10066b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0005
            r0 = r6
            r1 = r12
            c.d.b.c.b1.y$a r1 = r1.f10069e
            r0.f10057g = r1
            r0 = r14
            r7 = r0
            r0 = r13
            r10 = r0
            goto L_0x0005
        L_0x006f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2755y.m29116a(long, java.nio.ByteBuffer, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m29114a(long r7, byte[] r9, int r10) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r0.m29117a(r1)
            r0 = r10
            r11 = r0
        L_0x0009:
            r0 = r11
            if (r0 <= 0) goto L_0x0077
            r0 = r11
            r1 = r6
            c.d.b.c.b1.y$a r1 = r1.f10057g
            long r1 = r1.f10066b
            r2 = r7
            long r1 = r1 - r2
            int r1 = (int) r1
            int r0 = java.lang.Math.min(r0, r1)
            r12 = r0
            r0 = r6
            c.d.b.c.b1.y$a r0 = r0.f10057g
            r13 = r0
            r0 = r13
            c.d.b.c.f1.d r0 = r0.f10068d
            byte[] r0 = r0.f10259a
            r1 = r13
            r2 = r7
            int r1 = r1.m29090a(r2)
            r2 = r9
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r4 = r12
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r11
            r1 = r12
            int r0 = r0 - r1
            r14 = r0
            r0 = r7
            r1 = r12
            long r1 = (long) r1
            long r0 = r0 + r1
            r15 = r0
            r0 = r6
            c.d.b.c.b1.y$a r0 = r0.f10057g
            r13 = r0
            r0 = r14
            r11 = r0
            r0 = r15
            r7 = r0
            r0 = r15
            r1 = r13
            long r1 = r1.f10066b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0009
            r0 = r6
            r1 = r13
            c.d.b.c.b1.y$a r1 = r1.f10069e
            r0.f10057g = r1
            r0 = r14
            r11 = r0
            r0 = r15
            r7 = r0
            goto L_0x0009
        L_0x0077:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2755y.m29114a(long, byte[], int):void");
    }

    /* renamed from: a */
    public final void m29112a(C2756a aVar) {
        if (aVar.f10067c) {
            C2756a aVar2 = this.f10058h;
            int i = (aVar2.f10067c ? 1 : 0) + (((int) (aVar2.f10065a - aVar.f10065a)) / this.f10052b);
            C2820d[] dVarArr = new C2820d[i];
            for (int i2 = 0; i2 < i; i2++) {
                dVarArr[i2] = aVar.f10068d;
                aVar = aVar.m29091a();
            }
            this.f10051a.mo28929a(dVarArr);
        }
    }

    /* renamed from: a */
    public void m29111a(AbstractC2757b bVar) {
        this.f10064n = bVar;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3054q
    /* renamed from: a */
    public void mo28036a(C2904v vVar, int i) {
        while (i > 0) {
            int b = m29106b(i);
            C2756a aVar = this.f10058h;
            vVar.m28546a(aVar.f10068d.f10259a, aVar.m29090a(this.f10062l), b);
            i -= b;
            m29118a(b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00ba, code lost:
        if (r0.length < r17) goto L_0x00bd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00da, code lost:
        if (r0.length < r17) goto L_0x00dd;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m29110a(p131c.p161d.p170b.p188c.p208u0.C3016d r11, p131c.p161d.p170b.p188c.p190b1.C2753x.C2754a r12) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2755y.m29110a(c.d.b.c.u0.d, c.d.b.c.b1.x$a):void");
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3054q
    /* renamed from: a */
    public void mo28034a(Format format) {
        Format a = m29109a(format, this.f10061k);
        boolean a2 = this.f10053c.m29138a(a);
        this.f10060j = format;
        this.f10059i = false;
        AbstractC2757b bVar = this.f10064n;
        if (bVar != null && a2) {
            bVar.mo29088a(a);
        }
    }

    /* renamed from: a */
    public boolean m29108a(boolean z) {
        return this.f10053c.m29136a(z);
    }

    /* renamed from: b */
    public final int m29106b(int i) {
        C2756a aVar = this.f10058h;
        if (!aVar.f10067c) {
            aVar.m29089a(this.f10051a.mo28932a(), new C2756a(this.f10058h.f10066b, this.f10052b));
        }
        return Math.min(i, (int) (this.f10058h.f10066b - this.f10062l));
    }

    /* renamed from: b */
    public void m29107b() {
        m29105b(this.f10053c.m29135b());
    }

    /* renamed from: b */
    public final void m29105b(long j) {
        C2756a aVar;
        if (j != -1) {
            while (true) {
                aVar = this.f10056f;
                if (j < aVar.f10066b) {
                    break;
                }
                this.f10051a.mo28930a(aVar.f10068d);
                this.f10056f = this.f10056f.m29091a();
            }
            if (this.f10057g.f10065a < aVar.f10065a) {
                this.f10057g = aVar;
            }
        }
    }

    /* renamed from: b */
    public void m29104b(long j, boolean z, boolean z2) {
        m29105b(this.f10053c.m29133b(j, z, z2));
    }

    /* renamed from: b */
    public final void m29103b(C3016d dVar, C2753x.C2754a aVar) {
        if (dVar.m28131g()) {
            m29110a(dVar, aVar);
        }
        if (dVar.m28147b()) {
            this.f10055e.m28542c(4);
            m29114a(aVar.f10049b, this.f10055e.f10530a, 4);
            int v = this.f10055e.m28520v();
            aVar.f10049b += 4;
            aVar.f10048a -= 4;
            dVar.m28134e(v);
            m29116a(aVar.f10049b, dVar.f10903c, v);
            aVar.f10049b += v;
            int i = aVar.f10048a - v;
            aVar.f10048a = i;
            dVar.m28132f(i);
            m29116a(aVar.f10049b, dVar.f10905e, aVar.f10048a);
            return;
        }
        dVar.m28134e(aVar.f10048a);
        m29116a(aVar.f10049b, dVar.f10903c, aVar.f10048a);
    }

    /* renamed from: b */
    public void m29102b(boolean z) {
        this.f10053c.m29132b(z);
        m29112a(this.f10056f);
        C2756a aVar = new C2756a(0L, this.f10052b);
        this.f10056f = aVar;
        this.f10057g = aVar;
        this.f10058h = aVar;
        this.f10062l = 0L;
        this.f10051a.mo28928b();
    }

    /* renamed from: c */
    public long m29101c() {
        return this.f10053c.m29131c();
    }

    /* renamed from: d */
    public int m29100d() {
        return this.f10053c.m29129d();
    }

    /* renamed from: e */
    public Format m29099e() {
        return this.f10053c.m29127e();
    }

    /* renamed from: f */
    public int m29098f() {
        return this.f10053c.m29125f();
    }

    /* renamed from: g */
    public boolean m29097g() {
        return this.f10053c.m29123h();
    }

    /* renamed from: h */
    public void m29096h() throws IOException {
        this.f10053c.m29122i();
    }

    /* renamed from: i */
    public void m29095i() {
        m29107b();
        this.f10053c.m29121j();
    }

    /* renamed from: j */
    public void m29094j() {
        m29093k();
        this.f10053c.m29121j();
    }

    /* renamed from: k */
    public void m29093k() {
        m29102b(false);
    }

    /* renamed from: l */
    public void m29092l() {
        this.f10053c.m29120k();
        this.f10057g = this.f10056f;
    }
}
