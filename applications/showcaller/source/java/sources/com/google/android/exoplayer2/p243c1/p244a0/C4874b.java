package com.google.android.exoplayer2.p243c1.p244a0;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.util.C5508e;
import java.util.ArrayDeque;
/* renamed from: com.google.android.exoplayer2.c1.a0.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a0/b.class */
final class C4874b implements AbstractC4878d {

    /* renamed from: a */
    private final byte[] f14857a = new byte[8];

    /* renamed from: b */
    private final ArrayDeque<C4876b> f14858b = new ArrayDeque<>();

    /* renamed from: c */
    private final C4885g f14859c = new C4885g();

    /* renamed from: d */
    private AbstractC4877c f14860d;

    /* renamed from: e */
    private int f14861e;

    /* renamed from: f */
    private int f14862f;

    /* renamed from: g */
    private long f14863g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.c1.a0.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/a0/b$b.class */
    public static final class C4876b {

        /* renamed from: a */
        private final int f14864a;

        /* renamed from: b */
        private final long f14865b;

        private C4876b(int i, long j) {
            this.f14864a = i;
            this.f14865b = j;
        }
    }

    /* renamed from: d */
    private long m21334d(AbstractC4979i abstractC4979i) {
        abstractC4979i.mo21003g();
        while (true) {
            abstractC4979i.mo21000j(this.f14857a, 0, 4);
            int m21274c = C4885g.m21274c(this.f14857a[0]);
            if (m21274c != -1 && m21274c <= 4) {
                int m21276a = (int) C4885g.m21276a(this.f14857a, m21274c, false);
                if (this.f14860d.mo21296c(m21276a)) {
                    abstractC4979i.mo21002h(m21274c);
                    return m21276a;
                }
            }
            abstractC4979i.mo21002h(1);
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [double] */
    /* JADX WARN: Type inference failed for: r0v9, types: [double] */
    /* renamed from: e */
    private double m21333e(AbstractC4979i abstractC4979i, int i) {
        long m21332f = m21332f(abstractC4979i, i);
        return i == 4 ? Float.intBitsToFloat((int) m21332f) : Double.longBitsToDouble(m21332f);
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: f */
    private long m21332f(AbstractC4979i abstractC4979i, int i) {
        abstractC4979i.readFully(this.f14857a, 0, i);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.f14857a[i2] & 255);
        }
        return c;
    }

    /* renamed from: g */
    private String m21331g(AbstractC4979i abstractC4979i, int i) {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        abstractC4979i.readFully(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    @Override // com.google.android.exoplayer2.p243c1.p244a0.AbstractC4878d
    /* renamed from: a */
    public void mo21328a() {
        this.f14861e = 0;
        this.f14858b.clear();
        this.f14859c.m21272e();
    }

    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    @Override // com.google.android.exoplayer2.p243c1.p244a0.AbstractC4878d
    /* renamed from: b */
    public boolean mo21327b(AbstractC4979i abstractC4979i) {
        C5508e.m18911e(this.f14860d);
        while (true) {
            if (!this.f14858b.isEmpty() && abstractC4979i.mo20999k() >= this.f14858b.peek().f14865b) {
                this.f14860d.mo21298a(this.f14858b.pop().f14864a);
                return true;
            }
            if (this.f14861e == 0) {
                ?? m21273d = this.f14859c.m21273d(abstractC4979i, true, false, 4);
                char c = m21273d;
                if (m21273d == -2) {
                    c = m21334d(abstractC4979i);
                }
                if (c == -1) {
                    return false;
                }
                this.f14862f = c;
                this.f14861e = 1;
            }
            if (this.f14861e == 1) {
                this.f14863g = this.f14859c.m21273d(abstractC4979i, false, true, 8);
                this.f14861e = 2;
            }
            int mo21297b = this.f14860d.mo21297b(this.f14862f);
            if (mo21297b != 0) {
                if (mo21297b == 1) {
                    long mo20999k = abstractC4979i.mo20999k();
                    this.f14858b.push(new C4876b(this.f14862f, this.f14863g + mo20999k));
                    this.f14860d.mo21292g(this.f14862f, mo20999k, this.f14863g);
                    this.f14861e = 0;
                    return true;
                } else if (mo21297b == 2) {
                    long j = this.f14863g;
                    if (j <= 8) {
                        this.f14860d.mo21291h(this.f14862f, m21332f(abstractC4979i, (int) j));
                        this.f14861e = 0;
                        return true;
                    }
                    throw new ParserException("Invalid integer size: " + this.f14863g);
                } else if (mo21297b == 3) {
                    long j2 = this.f14863g;
                    if (j2 <= 2147483647L) {
                        this.f14860d.mo21294e(this.f14862f, m21331g(abstractC4979i, (int) j2));
                        this.f14861e = 0;
                        return true;
                    }
                    throw new ParserException("String element size: " + this.f14863g);
                } else if (mo21297b == 4) {
                    this.f14860d.mo21295d(this.f14862f, (int) this.f14863g, abstractC4979i);
                    this.f14861e = 0;
                    return true;
                } else if (mo21297b != 5) {
                    throw new ParserException("Invalid element type " + mo21297b);
                } else {
                    long j3 = this.f14863g;
                    if (j3 == 4 || j3 == 8) {
                        this.f14860d.mo21293f(this.f14862f, m21333e(abstractC4979i, (int) j3));
                        this.f14861e = 0;
                        return true;
                    }
                    throw new ParserException("Invalid float size: " + this.f14863g);
                }
            }
            abstractC4979i.mo21002h((int) this.f14863g);
            this.f14861e = 0;
        }
    }

    @Override // com.google.android.exoplayer2.p243c1.p244a0.AbstractC4878d
    /* renamed from: c */
    public void mo21326c(AbstractC4877c abstractC4877c) {
        this.f14860d = abstractC4877c;
    }
}
