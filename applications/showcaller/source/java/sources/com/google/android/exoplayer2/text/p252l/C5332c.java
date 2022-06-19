package com.google.android.exoplayer2.text.p252l;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.AbstractC5325i;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.text.C5324h;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.l.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/c.class */
public final class C5332c extends AbstractC5336e {

    /* renamed from: g */
    private final C5536v f16973g = new C5536v();

    /* renamed from: h */
    private final C5535u f16974h = new C5535u();

    /* renamed from: i */
    private final int f16975i;

    /* renamed from: j */
    private final C5333a[] f16976j;

    /* renamed from: k */
    private C5333a f16977k;

    /* renamed from: l */
    private List<C5317b> f16978l;

    /* renamed from: m */
    private List<C5317b> f16979m;

    /* renamed from: n */
    private C5334b f16980n;

    /* renamed from: o */
    private int f16981o;

    /* renamed from: com.google.android.exoplayer2.text.l.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/c$a.class */
    public static final class C5333a {

        /* renamed from: b */
        public static final int f16983b;

        /* renamed from: c */
        public static final int f16984c;

        /* renamed from: h */
        private static final int[] f16989h;

        /* renamed from: k */
        private static final int[] f16992k;

        /* renamed from: A */
        private int f16993A;

        /* renamed from: B */
        private int f16994B;

        /* renamed from: C */
        private int f16995C;

        /* renamed from: D */
        private int f16996D;

        /* renamed from: E */
        private int f16997E;

        /* renamed from: F */
        private int f16998F;

        /* renamed from: G */
        private int f16999G;

        /* renamed from: l */
        private final List<SpannableString> f17000l = new ArrayList();

        /* renamed from: m */
        private final SpannableStringBuilder f17001m = new SpannableStringBuilder();

        /* renamed from: n */
        private boolean f17002n;

        /* renamed from: o */
        private boolean f17003o;

        /* renamed from: p */
        private int f17004p;

        /* renamed from: q */
        private boolean f17005q;

        /* renamed from: r */
        private int f17006r;

        /* renamed from: s */
        private int f17007s;

        /* renamed from: t */
        private int f17008t;

        /* renamed from: u */
        private int f17009u;

        /* renamed from: v */
        private boolean f17010v;

        /* renamed from: w */
        private int f17011w;

        /* renamed from: x */
        private int f17012x;

        /* renamed from: y */
        private int f17013y;

        /* renamed from: z */
        private int f17014z;

        /* renamed from: a */
        public static final int f16982a = m19601h(2, 2, 2, 0);

        /* renamed from: d */
        private static final int[] f16985d = {0, 0, 0, 0, 0, 2, 0};

        /* renamed from: e */
        private static final int[] f16986e = {0, 0, 0, 0, 0, 0, 2};

        /* renamed from: f */
        private static final int[] f16987f = {3, 3, 3, 3, 3, 3, 1};

        /* renamed from: g */
        private static final boolean[] f16988g = {false, false, false, true, true, true, false};

        /* renamed from: i */
        private static final int[] f16990i = {0, 1, 2, 3, 4, 3, 4};

        /* renamed from: j */
        private static final int[] f16991j = {0, 0, 0, 0, 0, 3, 3};

        static {
            int m19601h = m19601h(0, 0, 0, 0);
            f16983b = m19601h;
            int m19601h2 = m19601h(0, 0, 0, 3);
            f16984c = m19601h2;
            f16989h = new int[]{m19601h, m19601h2, m19601h, m19601h, m19601h2, m19601h, m19601h};
            f16992k = new int[]{m19601h, m19601h, m19601h, m19601h, m19601h, m19601h2, m19601h2};
        }

        public C5333a() {
            m19597l();
        }

        /* renamed from: g */
        public static int m19602g(int i, int i2, int i3) {
            return m19601h(i, i2, i3, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0065  */
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m19601h(int r5, int r6, int r7, int r8) {
            /*
                r0 = 0
                r9 = r0
                r0 = r5
                r1 = 0
                r2 = 4
                int r0 = com.google.android.exoplayer2.util.C5508e.m18913c(r0, r1, r2)
                r0 = r6
                r1 = 0
                r2 = 4
                int r0 = com.google.android.exoplayer2.util.C5508e.m18913c(r0, r1, r2)
                r0 = r7
                r1 = 0
                r2 = 4
                int r0 = com.google.android.exoplayer2.util.C5508e.m18913c(r0, r1, r2)
                r0 = r8
                r1 = 0
                r2 = 4
                int r0 = com.google.android.exoplayer2.util.C5508e.m18913c(r0, r1, r2)
                r0 = r8
                if (r0 == 0) goto L40
                r0 = r8
                r1 = 1
                if (r0 == r1) goto L40
                r0 = r8
                r1 = 2
                if (r0 == r1) goto L3a
                r0 = r8
                r1 = 3
                if (r0 == r1) goto L35
                goto L40
            L35:
                r0 = 0
                r8 = r0
                goto L44
            L3a:
                r0 = 127(0x7f, float:1.78E-43)
                r8 = r0
                goto L44
            L40:
                r0 = 255(0xff, float:3.57E-43)
                r8 = r0
            L44:
                r0 = r5
                r1 = 1
                if (r0 <= r1) goto L50
                r0 = 255(0xff, float:3.57E-43)
                r5 = r0
                goto L52
            L50:
                r0 = 0
                r5 = r0
            L52:
                r0 = r6
                r1 = 1
                if (r0 <= r1) goto L5e
                r0 = 255(0xff, float:3.57E-43)
                r6 = r0
                goto L60
            L5e:
                r0 = 0
                r6 = r0
            L60:
                r0 = r7
                r1 = 1
                if (r0 <= r1) goto L6a
                r0 = 255(0xff, float:3.57E-43)
                r9 = r0
            L6a:
                r0 = r8
                r1 = r5
                r2 = r6
                r3 = r9
                int r0 = android.graphics.Color.argb(r0, r1, r2, r3)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p252l.C5332c.C5333a.m19601h(int, int, int, int):int");
        }

        /* renamed from: a */
        public void m19608a(char c) {
            if (c != '\n') {
                this.f17001m.append(c);
                return;
            }
            this.f17000l.add(m19605d());
            this.f17001m.clear();
            if (this.f16993A != -1) {
                this.f16993A = 0;
            }
            if (this.f16994B != -1) {
                this.f16994B = 0;
            }
            if (this.f16995C != -1) {
                this.f16995C = 0;
            }
            if (this.f16997E != -1) {
                this.f16997E = 0;
            }
            while (true) {
                if ((!this.f17010v || this.f17000l.size() < this.f17009u) && this.f17000l.size() < 15) {
                    return;
                }
                this.f17000l.remove(0);
            }
        }

        /* renamed from: b */
        public void m19607b() {
            int length = this.f17001m.length();
            if (length > 0) {
                this.f17001m.delete(length - 1, length);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0102  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x011d  */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.android.exoplayer2.text.p252l.C5331b m19606c() {
            /*
                Method dump skipped, instructions count: 329
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p252l.C5332c.C5333a.m19606c():com.google.android.exoplayer2.text.l.b");
        }

        /* renamed from: d */
        public SpannableString m19605d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f17001m);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f16993A != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f16993A, length, 33);
                }
                if (this.f16994B != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f16994B, length, 33);
                }
                if (this.f16995C != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f16996D), this.f16995C, length, 33);
                }
                if (this.f16997E != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f16998F), this.f16997E, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        /* renamed from: e */
        public void m19604e() {
            this.f17000l.clear();
            this.f17001m.clear();
            this.f16993A = -1;
            this.f16994B = -1;
            this.f16995C = -1;
            this.f16997E = -1;
            this.f16999G = 0;
        }

        /* renamed from: f */
        public void m19603f(boolean z, boolean z2, boolean z3, int i, boolean z4, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.f17002n = true;
            this.f17003o = z;
            this.f17010v = z2;
            this.f17004p = i;
            this.f17005q = z4;
            this.f17006r = i2;
            this.f17007s = i3;
            this.f17008t = i6;
            int i9 = i4 + 1;
            if (this.f17009u != i9) {
                this.f17009u = i9;
                while (true) {
                    if ((!z2 || this.f17000l.size() < this.f17009u) && this.f17000l.size() < 15) {
                        break;
                    }
                    this.f17000l.remove(0);
                }
            }
            if (i7 != 0 && this.f17012x != i7) {
                this.f17012x = i7;
                int i10 = i7 - 1;
                m19592q(f16989h[i10], f16984c, f16988g[i10], 0, f16986e[i10], f16987f[i10], f16985d[i10]);
            }
            if (i8 == 0 || this.f17013y == i8) {
                return;
            }
            this.f17013y = i8;
            int i11 = i8 - 1;
            m19596m(0, 1, 1, false, false, f16991j[i11], f16990i[i11]);
            m19595n(f16982a, f16992k[i11], f16983b);
        }

        /* renamed from: i */
        public boolean m19600i() {
            return this.f17002n;
        }

        /* renamed from: j */
        public boolean m19599j() {
            return !m19600i() || (this.f17000l.isEmpty() && this.f17001m.length() == 0);
        }

        /* renamed from: k */
        public boolean m19598k() {
            return this.f17003o;
        }

        /* renamed from: l */
        public void m19597l() {
            m19604e();
            this.f17002n = false;
            this.f17003o = false;
            this.f17004p = 4;
            this.f17005q = false;
            this.f17006r = 0;
            this.f17007s = 0;
            this.f17008t = 0;
            this.f17009u = 15;
            this.f17010v = true;
            this.f17011w = 0;
            this.f17012x = 0;
            this.f17013y = 0;
            int i = f16983b;
            this.f17014z = i;
            this.f16996D = f16982a;
            this.f16998F = i;
        }

        /* renamed from: m */
        public void m19596m(int i, int i2, int i3, boolean z, boolean z2, int i4, int i5) {
            if (this.f16993A != -1) {
                if (!z) {
                    this.f17001m.setSpan(new StyleSpan(2), this.f16993A, this.f17001m.length(), 33);
                    this.f16993A = -1;
                }
            } else if (z) {
                this.f16993A = this.f17001m.length();
            }
            if (this.f16994B == -1) {
                if (!z2) {
                    return;
                }
                this.f16994B = this.f17001m.length();
            } else if (z2) {
            } else {
                this.f17001m.setSpan(new UnderlineSpan(), this.f16994B, this.f17001m.length(), 33);
                this.f16994B = -1;
            }
        }

        /* renamed from: n */
        public void m19595n(int i, int i2, int i3) {
            if (this.f16995C != -1 && this.f16996D != i) {
                this.f17001m.setSpan(new ForegroundColorSpan(this.f16996D), this.f16995C, this.f17001m.length(), 33);
            }
            if (i != f16982a) {
                this.f16995C = this.f17001m.length();
                this.f16996D = i;
            }
            if (this.f16997E != -1 && this.f16998F != i2) {
                this.f17001m.setSpan(new BackgroundColorSpan(this.f16998F), this.f16997E, this.f17001m.length(), 33);
            }
            if (i2 != f16983b) {
                this.f16997E = this.f17001m.length();
                this.f16998F = i2;
            }
        }

        /* renamed from: o */
        public void m19594o(int i, int i2) {
            if (this.f16999G != i) {
                m19608a('\n');
            }
            this.f16999G = i;
        }

        /* renamed from: p */
        public void m19593p(boolean z) {
            this.f17003o = z;
        }

        /* renamed from: q */
        public void m19592q(int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
            this.f17014z = i;
            this.f17011w = i6;
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.l.c$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/c$b.class */
    public static final class C5334b {

        /* renamed from: a */
        public final int f17015a;

        /* renamed from: b */
        public final int f17016b;

        /* renamed from: c */
        public final byte[] f17017c;

        /* renamed from: d */
        int f17018d = 0;

        public C5334b(int i, int i2) {
            this.f17015a = i;
            this.f17016b = i2;
            this.f17017c = new byte[(i2 * 2) - 1];
        }
    }

    public C5332c(int i, List<byte[]> list) {
        this.f16975i = i == -1 ? 1 : i;
        this.f16976j = new C5333a[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.f16976j[i2] = new C5333a();
        }
        this.f16977k = this.f16976j[0];
        m19622D();
    }

    /* renamed from: A */
    private void m19625A() {
        this.f16974h.m18694q(4);
        int m18703h = this.f16974h.m18703h(4);
        this.f16974h.m18694q(2);
        this.f16977k.m19594o(m18703h, this.f16974h.m18703h(6));
    }

    /* renamed from: B */
    private void m19624B() {
        int m19601h = C5333a.m19601h(this.f16974h.m18703h(2), this.f16974h.m18703h(2), this.f16974h.m18703h(2), this.f16974h.m18703h(2));
        int m18703h = this.f16974h.m18703h(2);
        int m19602g = C5333a.m19602g(this.f16974h.m18703h(2), this.f16974h.m18703h(2), this.f16974h.m18703h(2));
        int i = m18703h;
        if (this.f16974h.m18704g()) {
            i = m18703h | 4;
        }
        boolean m18704g = this.f16974h.m18704g();
        int m18703h2 = this.f16974h.m18703h(2);
        int m18703h3 = this.f16974h.m18703h(2);
        int m18703h4 = this.f16974h.m18703h(2);
        this.f16974h.m18694q(8);
        this.f16977k.m19592q(m19601h, m19602g, m18704g, i, m18703h2, m18703h3, m18703h4);
    }

    /* renamed from: C */
    private void m19623C() {
        C5334b c5334b = this.f16980n;
        int i = c5334b.f17018d;
        if (i != (c5334b.f17016b * 2) - 1) {
            C5526o.m18742f("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f16980n.f17016b * 2) - 1) + ", but current index is " + this.f16980n.f17018d + " (sequence number " + this.f16980n.f17015a + "); ignoring packet");
            return;
        }
        this.f16974h.m18697n(c5334b.f17017c, i);
        int m18703h = this.f16974h.m18703h(3);
        int m18703h2 = this.f16974h.m18703h(5);
        int i2 = m18703h;
        if (m18703h == 7) {
            this.f16974h.m18694q(2);
            int m18703h3 = this.f16974h.m18703h(6);
            i2 = m18703h3;
            if (m18703h3 < 7) {
                C5526o.m18742f("Cea708Decoder", "Invalid extended service number: " + m18703h3);
                i2 = m18703h3;
            }
        }
        if (m18703h2 == 0) {
            if (i2 == 0) {
                return;
            }
            C5526o.m18742f("Cea708Decoder", "serviceNumber is non-zero (" + i2 + ") when blockSize is 0");
        } else if (i2 != this.f16975i) {
        } else {
            boolean z = false;
            while (this.f16974h.m18709b() > 0) {
                int m18703h4 = this.f16974h.m18703h(8);
                if (m18703h4 == 16) {
                    int m18703h5 = this.f16974h.m18703h(8);
                    if (m18703h5 <= 31) {
                        m19617r(m18703h5);
                    } else {
                        if (m18703h5 <= 127) {
                            m19612w(m18703h5);
                        } else if (m18703h5 <= 159) {
                            m19616s(m18703h5);
                        } else if (m18703h5 <= 255) {
                            m19611x(m18703h5);
                        } else {
                            C5526o.m18742f("Cea708Decoder", "Invalid extended command: " + m18703h5);
                        }
                        z = true;
                    }
                } else if (m18703h4 <= 31) {
                    m19619p(m18703h4);
                } else {
                    if (m18703h4 <= 127) {
                        m19614u(m18703h4);
                    } else if (m18703h4 <= 159) {
                        m19618q(m18703h4);
                    } else if (m18703h4 <= 255) {
                        m19613v(m18703h4);
                    } else {
                        C5526o.m18742f("Cea708Decoder", "Invalid base command: " + m18703h4);
                    }
                    z = true;
                }
            }
            if (!z) {
                return;
            }
            this.f16978l = m19620o();
        }
    }

    /* renamed from: D */
    private void m19622D() {
        for (int i = 0; i < 8; i++) {
            this.f16976j[i].m19597l();
        }
    }

    /* renamed from: n */
    private void m19621n() {
        if (this.f16980n == null) {
            return;
        }
        m19623C();
        this.f16980n = null;
    }

    /* renamed from: o */
    private List<C5317b> m19620o() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.f16976j[i].m19599j() && this.f16976j[i].m19598k()) {
                arrayList.add(this.f16976j[i].m19606c());
            }
        }
        Collections.sort(arrayList);
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: p */
    private void m19619p(int i) {
        if (i != 0) {
            if (i == 3) {
                this.f16978l = m19620o();
            } else if (i == 8) {
                this.f16977k.m19607b();
            } else {
                switch (i) {
                    case 12:
                        m19622D();
                        return;
                    case 13:
                        this.f16977k.m19608a('\n');
                        return;
                    case 14:
                        return;
                    default:
                        if (i >= 17 && i <= 23) {
                            C5526o.m18742f("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i);
                            this.f16974h.m18694q(8);
                            return;
                        } else if (i < 24 || i > 31) {
                            C5526o.m18742f("Cea708Decoder", "Invalid C0 command: " + i);
                            return;
                        } else {
                            C5526o.m18742f("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i);
                            this.f16974h.m18694q(16);
                            return;
                        }
                }
            }
        }
    }

    /* renamed from: q */
    private void m19618q(int i) {
        C5333a c5333a;
        switch (i) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i2 = i - 128;
                if (this.f16981o == i2) {
                    return;
                }
                this.f16981o = i2;
                this.f16977k = this.f16976j[i2];
                return;
            case 136:
                for (int i3 = 1; i3 <= 8; i3++) {
                    if (this.f16974h.m18704g()) {
                        this.f16976j[8 - i3].m19604e();
                    }
                }
                return;
            case 137:
                for (int i4 = 1; i4 <= 8; i4++) {
                    if (this.f16974h.m18704g()) {
                        this.f16976j[8 - i4].m19593p(true);
                    }
                }
                return;
            case 138:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.f16974h.m18704g()) {
                        this.f16976j[8 - i5].m19593p(false);
                    }
                }
                return;
            case 139:
                for (int i6 = 1; i6 <= 8; i6++) {
                    if (this.f16974h.m18704g()) {
                        this.f16976j[8 - i6].m19593p(!c5333a.m19598k());
                    }
                }
                return;
            case 140:
                for (int i7 = 1; i7 <= 8; i7++) {
                    if (this.f16974h.m18704g()) {
                        this.f16976j[8 - i7].m19597l();
                    }
                }
                return;
            case 141:
                this.f16974h.m18694q(8);
                return;
            case 142:
                return;
            case 143:
                m19622D();
                return;
            case 144:
                if (!this.f16977k.m19600i()) {
                    this.f16974h.m18694q(16);
                    return;
                } else {
                    m19610y();
                    return;
                }
            case 145:
                if (!this.f16977k.m19600i()) {
                    this.f16974h.m18694q(24);
                    return;
                } else {
                    m19609z();
                    return;
                }
            case 146:
                if (!this.f16977k.m19600i()) {
                    this.f16974h.m18694q(16);
                    return;
                } else {
                    m19625A();
                    return;
                }
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                C5526o.m18742f("Cea708Decoder", "Invalid C1 command: " + i);
                return;
            case 151:
                if (!this.f16977k.m19600i()) {
                    this.f16974h.m18694q(32);
                    return;
                } else {
                    m19624B();
                    return;
                }
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i8 = i - 152;
                m19615t(i8);
                if (this.f16981o == i8) {
                    return;
                }
                this.f16981o = i8;
                this.f16977k = this.f16976j[i8];
                return;
        }
    }

    /* renamed from: r */
    private void m19617r(int i) {
        if (i <= 7) {
            return;
        }
        if (i <= 15) {
            this.f16974h.m18694q(8);
        } else if (i <= 23) {
            this.f16974h.m18694q(16);
        } else if (i > 31) {
        } else {
            this.f16974h.m18694q(24);
        }
    }

    /* renamed from: s */
    private void m19616s(int i) {
        if (i <= 135) {
            this.f16974h.m18694q(32);
        } else if (i <= 143) {
            this.f16974h.m18694q(40);
        } else if (i > 159) {
        } else {
            this.f16974h.m18694q(2);
            this.f16974h.m18694q(this.f16974h.m18703h(6) * 8);
        }
    }

    /* renamed from: t */
    private void m19615t(int i) {
        C5333a c5333a = this.f16976j[i];
        this.f16974h.m18694q(2);
        boolean m18704g = this.f16974h.m18704g();
        boolean m18704g2 = this.f16974h.m18704g();
        boolean m18704g3 = this.f16974h.m18704g();
        int m18703h = this.f16974h.m18703h(3);
        boolean m18704g4 = this.f16974h.m18704g();
        int m18703h2 = this.f16974h.m18703h(7);
        int m18703h3 = this.f16974h.m18703h(8);
        int m18703h4 = this.f16974h.m18703h(4);
        int m18703h5 = this.f16974h.m18703h(4);
        this.f16974h.m18694q(2);
        int m18703h6 = this.f16974h.m18703h(6);
        this.f16974h.m18694q(2);
        c5333a.m19603f(m18704g, m18704g2, m18704g3, m18703h, m18704g4, m18703h2, m18703h3, m18703h5, m18703h6, m18703h4, this.f16974h.m18703h(3), this.f16974h.m18703h(3));
    }

    /* renamed from: u */
    private void m19614u(int i) {
        if (i == 127) {
            this.f16977k.m19608a((char) 9835);
        } else {
            this.f16977k.m19608a((char) (i & 255));
        }
    }

    /* renamed from: v */
    private void m19613v(int i) {
        this.f16977k.m19608a((char) (i & 255));
    }

    /* renamed from: w */
    private void m19612w(int i) {
        if (i == 32) {
            this.f16977k.m19608a(' ');
        } else if (i == 33) {
            this.f16977k.m19608a((char) 160);
        } else if (i == 37) {
            this.f16977k.m19608a((char) 8230);
        } else if (i == 42) {
            this.f16977k.m19608a((char) 352);
        } else if (i == 44) {
            this.f16977k.m19608a((char) 338);
        } else if (i == 63) {
            this.f16977k.m19608a((char) 376);
        } else if (i == 57) {
            this.f16977k.m19608a((char) 8482);
        } else if (i == 58) {
            this.f16977k.m19608a((char) 353);
        } else if (i == 60) {
            this.f16977k.m19608a((char) 339);
        } else if (i == 61) {
            this.f16977k.m19608a((char) 8480);
        } else {
            switch (i) {
                case 48:
                    this.f16977k.m19608a((char) 9608);
                    return;
                case 49:
                    this.f16977k.m19608a((char) 8216);
                    return;
                case 50:
                    this.f16977k.m19608a((char) 8217);
                    return;
                case 51:
                    this.f16977k.m19608a((char) 8220);
                    return;
                case 52:
                    this.f16977k.m19608a((char) 8221);
                    return;
                case 53:
                    this.f16977k.m19608a((char) 8226);
                    return;
                default:
                    switch (i) {
                        case 118:
                            this.f16977k.m19608a((char) 8539);
                            return;
                        case 119:
                            this.f16977k.m19608a((char) 8540);
                            return;
                        case 120:
                            this.f16977k.m19608a((char) 8541);
                            return;
                        case 121:
                            this.f16977k.m19608a((char) 8542);
                            return;
                        case 122:
                            this.f16977k.m19608a((char) 9474);
                            return;
                        case 123:
                            this.f16977k.m19608a((char) 9488);
                            return;
                        case 124:
                            this.f16977k.m19608a((char) 9492);
                            return;
                        case 125:
                            this.f16977k.m19608a((char) 9472);
                            return;
                        case 126:
                            this.f16977k.m19608a((char) 9496);
                            return;
                        case 127:
                            this.f16977k.m19608a((char) 9484);
                            return;
                        default:
                            C5526o.m18742f("Cea708Decoder", "Invalid G2 character: " + i);
                            return;
                    }
            }
        }
    }

    /* renamed from: x */
    private void m19611x(int i) {
        if (i == 160) {
            this.f16977k.m19608a((char) 13252);
            return;
        }
        C5526o.m18742f("Cea708Decoder", "Invalid G3 character: " + i);
        this.f16977k.m19608a('_');
    }

    /* renamed from: y */
    private void m19610y() {
        this.f16977k.m19596m(this.f16974h.m18703h(4), this.f16974h.m18703h(2), this.f16974h.m18703h(2), this.f16974h.m18704g(), this.f16974h.m18704g(), this.f16974h.m18703h(3), this.f16974h.m18703h(3));
    }

    /* renamed from: z */
    private void m19609z() {
        int m19601h = C5333a.m19601h(this.f16974h.m18703h(2), this.f16974h.m18703h(2), this.f16974h.m18703h(2), this.f16974h.m18703h(2));
        int m19601h2 = C5333a.m19601h(this.f16974h.m18703h(2), this.f16974h.m18703h(2), this.f16974h.m18703h(2), this.f16974h.m18703h(2));
        this.f16974h.m18694q(2);
        this.f16977k.m19595n(m19601h, m19601h2, C5333a.m19602g(this.f16974h.m18703h(2), this.f16974h.m18703h(2), this.f16974h.m18703h(2)));
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e, com.google.android.exoplayer2.text.AbstractC5321f
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo19590a(long j) {
        super.mo19590a(j);
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e, com.google.android.exoplayer2.p242b1.AbstractC4856c
    /* renamed from: b */
    public /* bridge */ /* synthetic */ void mo19589b() {
        super.mo19589b();
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e
    /* renamed from: f */
    protected AbstractC5320e mo19585f() {
        List<C5317b> list = this.f16978l;
        this.f16979m = list;
        return new C5340f(list);
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e, com.google.android.exoplayer2.p242b1.AbstractC4856c
    public void flush() {
        super.flush();
        this.f16978l = null;
        this.f16979m = null;
        this.f16981o = 0;
        this.f16977k = this.f16976j[0];
        m19622D();
        this.f16980n = null;
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e
    /* renamed from: g */
    protected void mo19584g(C5324h c5324h) {
        this.f16973g.m18682K(c5324h.f14775e.array(), c5324h.f14775e.limit());
        while (this.f16973g.m18678a() >= 3) {
            int m18653z = this.f16973g.m18653z() & 7;
            int i = m18653z & 3;
            boolean z = false;
            boolean z2 = (m18653z & 4) == 4;
            byte m18653z2 = (byte) this.f16973g.m18653z();
            byte m18653z3 = (byte) this.f16973g.m18653z();
            if (i == 2 || i == 3) {
                if (z2) {
                    if (i == 3) {
                        m19621n();
                        int i2 = m18653z2 & 63;
                        int i3 = i2;
                        if (i2 == 0) {
                            i3 = 64;
                        }
                        C5334b c5334b = new C5334b((m18653z2 & 192) >> 6, i3);
                        this.f16980n = c5334b;
                        byte[] bArr = c5334b.f17017c;
                        int i4 = c5334b.f17018d;
                        c5334b.f17018d = i4 + 1;
                        bArr[i4] = m18653z3;
                    } else {
                        if (i == 2) {
                            z = true;
                        }
                        C5508e.m18915a(z);
                        C5334b c5334b2 = this.f16980n;
                        if (c5334b2 == null) {
                            C5526o.m18745c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c5334b2.f17017c;
                            int i5 = c5334b2.f17018d;
                            int i6 = i5 + 1;
                            c5334b2.f17018d = i6;
                            bArr2[i5] = m18653z2;
                            c5334b2.f17018d = i6 + 1;
                            bArr2[i6] = m18653z3;
                        }
                    }
                    C5334b c5334b3 = this.f16980n;
                    if (c5334b3.f17018d == (c5334b3.f17016b * 2) - 1) {
                        m19621n();
                    }
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e
    /* renamed from: h */
    public /* bridge */ /* synthetic */ C5324h mo19583h() {
        return super.mo19587d();
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e
    /* renamed from: i */
    public /* bridge */ /* synthetic */ AbstractC5325i mo19582i() {
        return super.mo19588c();
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e
    /* renamed from: j */
    protected boolean mo19581j() {
        return this.f16978l != this.f16979m;
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e
    /* renamed from: k */
    public /* bridge */ /* synthetic */ void mo19580k(C5324h c5324h) {
        super.mo19586e(c5324h);
    }
}
