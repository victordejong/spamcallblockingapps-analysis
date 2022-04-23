package p131c.p161d.p170b.p188c.p210w0.p217x;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import java.util.Collections;
import p131c.p161d.p170b.p188c.p203g1.C2884h;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.t */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/t.class */
public final class C3178t implements AbstractC3168o {

    /* renamed from: a */
    public final String f11701a;

    /* renamed from: b */
    public final C2904v f11702b;

    /* renamed from: c */
    public final C2903u f11703c;

    /* renamed from: d */
    public AbstractC3054q f11704d;

    /* renamed from: e */
    public Format f11705e;

    /* renamed from: f */
    public String f11706f;

    /* renamed from: g */
    public int f11707g;

    /* renamed from: h */
    public int f11708h;

    /* renamed from: i */
    public int f11709i;

    /* renamed from: j */
    public int f11710j;

    /* renamed from: k */
    public long f11711k;

    /* renamed from: l */
    public boolean f11712l;

    /* renamed from: m */
    public int f11713m;

    /* renamed from: n */
    public int f11714n;

    /* renamed from: o */
    public int f11715o;

    /* renamed from: p */
    public boolean f11716p;

    /* renamed from: q */
    public long f11717q;

    /* renamed from: r */
    public int f11718r;

    /* renamed from: s */
    public long f11719s;

    /* renamed from: t */
    public int f11720t;

    public C3178t(String str) {
        this.f11701a = str;
        C2904v vVar = new C2904v(1024);
        this.f11702b = vVar;
        this.f11703c = new C2903u(vVar.f10530a);
    }

    /* renamed from: f */
    public static long m27600f(C2903u uVar) {
        return uVar.m28565a((uVar.m28565a(2) + 1) * 8);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27599a() {
        this.f11707g = 0;
        this.f11712l = false;
    }

    /* renamed from: a */
    public final void m27607a(int i) {
        this.f11702b.m28542c(i);
        this.f11703c.m28562a(this.f11702b.f10530a);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27598a(long j, int i) {
        this.f11711k = j;
    }

    /* renamed from: a */
    public final void m27606a(C2903u uVar) throws ParserException {
        if (!uVar.m28554e()) {
            this.f11712l = true;
            m27601e(uVar);
        } else if (!this.f11712l) {
            return;
        }
        if (this.f11713m != 0) {
            throw new ParserException();
        } else if (this.f11714n == 0) {
            m27605a(uVar, m27602d(uVar));
            if (this.f11716p) {
                uVar.m28556c((int) this.f11717q);
            }
        } else {
            throw new ParserException();
        }
    }

    /* renamed from: a */
    public final void m27605a(C2903u uVar, int i) {
        int d = uVar.m28555d();
        if ((d & 7) == 0) {
            this.f11702b.m28538e(d >> 3);
        } else {
            uVar.m28560a(this.f11702b.f10530a, 0, i * 8);
            this.f11702b.m28538e(0);
        }
        this.f11704d.mo28036a(this.f11702b, i);
        this.f11704d.mo28037a(this.f11711k, 1, i, 0, null);
        this.f11711k += this.f11719s;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27597a(C2904v vVar) throws ParserException {
        while (vVar.m28552a() > 0) {
            int i = this.f11707g;
            if (i != 0) {
                if (i == 1) {
                    int r = vVar.m28524r();
                    if ((r & 224) == 224) {
                        this.f11710j = r;
                        this.f11707g = 2;
                    } else if (r != 86) {
                        this.f11707g = 0;
                    }
                } else if (i == 2) {
                    int r2 = ((this.f11710j & (-225)) << 8) | vVar.m28524r();
                    this.f11709i = r2;
                    if (r2 > this.f11702b.f10530a.length) {
                        m27607a(r2);
                    }
                    this.f11708h = 0;
                    this.f11707g = 3;
                } else if (i == 3) {
                    int min = Math.min(vVar.m28552a(), this.f11709i - this.f11708h);
                    vVar.m28546a(this.f11703c.f10526a, this.f11708h, min);
                    int i2 = this.f11708h + min;
                    this.f11708h = i2;
                    if (i2 == this.f11709i) {
                        this.f11703c.m28558b(0);
                        m27606a(this.f11703c);
                        this.f11707g = 0;
                    }
                } else {
                    throw new IllegalStateException();
                }
            } else if (vVar.m28524r() == 86) {
                this.f11707g = 1;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27596a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        dVar.m27684a();
        this.f11704d = iVar.mo28048a(dVar.m27682c(), 1);
        this.f11706f = dVar.m27683b();
    }

    /* renamed from: b */
    public final int m27604b(C2903u uVar) throws ParserException {
        int b = uVar.m28559b();
        Pair<Integer, Integer> a = C2884h.m28695a(uVar, true);
        this.f11718r = ((Integer) a.first).intValue();
        this.f11720t = ((Integer) a.second).intValue();
        return b - uVar.m28559b();
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: b */
    public void mo27595b() {
    }

    /* renamed from: c */
    public final void m27603c(C2903u uVar) {
        int a = uVar.m28565a(3);
        this.f11715o = a;
        if (a == 0) {
            uVar.m28556c(8);
        } else if (a == 1) {
            uVar.m28556c(9);
        } else if (a == 3 || a == 4 || a == 5) {
            uVar.m28556c(6);
        } else if (a == 6 || a == 7) {
            uVar.m28556c(1);
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: d */
    public final int m27602d(C2903u uVar) throws ParserException {
        int a;
        int i;
        if (this.f11715o == 0) {
            int i2 = 0;
            do {
                a = uVar.m28565a(8);
                i = i2 + a;
                i2 = i;
            } while (a == 255);
            return i;
        }
        throw new ParserException();
    }

    /* renamed from: e */
    public final void m27601e(C2903u uVar) throws ParserException {
        boolean e;
        int a = uVar.m28565a(1);
        int a2 = a == 1 ? uVar.m28565a(1) : 0;
        this.f11713m = a2;
        if (a2 == 0) {
            if (a == 1) {
                m27600f(uVar);
            }
            if (uVar.m28554e()) {
                this.f11714n = uVar.m28565a(6);
                int a3 = uVar.m28565a(4);
                int a4 = uVar.m28565a(3);
                if (a3 == 0 && a4 == 0) {
                    if (a == 0) {
                        int d = uVar.m28555d();
                        int b = m27604b(uVar);
                        uVar.m28558b(d);
                        byte[] bArr = new byte[(b + 7) / 8];
                        uVar.m28560a(bArr, 0, b);
                        Format a5 = Format.m18698a(this.f11706f, "audio/mp4a-latm", null, -1, -1, this.f11720t, this.f11718r, Collections.singletonList(bArr), null, 0, this.f11701a);
                        if (!a5.equals(this.f11705e)) {
                            this.f11705e = a5;
                            this.f11719s = 1024000000 / a5.f21966w;
                            this.f11704d.mo28034a(a5);
                        }
                    } else {
                        uVar.m28556c(((int) m27600f(uVar)) - m27604b(uVar));
                    }
                    m27603c(uVar);
                    boolean e2 = uVar.m28554e();
                    this.f11716p = e2;
                    this.f11717q = 0L;
                    if (e2) {
                        if (a == 1) {
                            this.f11717q = m27600f(uVar);
                        } else {
                            do {
                                e = uVar.m28554e();
                                this.f11717q = (this.f11717q << 8) + uVar.m28565a(8);
                            } while (e);
                        }
                    }
                    if (uVar.m28554e()) {
                        uVar.m28556c(8);
                        return;
                    }
                    return;
                }
                throw new ParserException();
            }
            throw new ParserException();
        }
        throw new ParserException();
    }
}
