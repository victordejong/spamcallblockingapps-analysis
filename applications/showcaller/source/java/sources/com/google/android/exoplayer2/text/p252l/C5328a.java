package com.google.android.exoplayer2.text.p252l;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.AbstractC5325i;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.text.C5324h;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.l.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/a.class */
public final class C5328a extends AbstractC5336e {

    /* renamed from: g */
    private static final int[] f16937g = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: h */
    private static final int[] f16938h = {0, 4, 8, 12, 16, 20, 24, 28};

    /* renamed from: i */
    private static final int[] f16939i = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};

    /* renamed from: j */
    private static final int[] f16940j = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};

    /* renamed from: k */
    private static final int[] f16941k = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};

    /* renamed from: l */
    private static final int[] f16942l = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};

    /* renamed from: m */
    private static final int[] f16943m = {195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};

    /* renamed from: n */
    private static final boolean[] f16944n = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: A */
    private byte f16945A;

    /* renamed from: B */
    private byte f16946B;

    /* renamed from: D */
    private boolean f16948D;

    /* renamed from: p */
    private final int f16950p;

    /* renamed from: q */
    private final int f16951q;

    /* renamed from: r */
    private final int f16952r;

    /* renamed from: u */
    private List<C5317b> f16955u;

    /* renamed from: v */
    private List<C5317b> f16956v;

    /* renamed from: w */
    private int f16957w;

    /* renamed from: x */
    private int f16958x;

    /* renamed from: y */
    private boolean f16959y;

    /* renamed from: z */
    private boolean f16960z;

    /* renamed from: o */
    private final C5536v f16949o = new C5536v();

    /* renamed from: s */
    private final ArrayList<C5329a> f16953s = new ArrayList<>();

    /* renamed from: t */
    private C5329a f16954t = new C5329a(0, 4);

    /* renamed from: C */
    private int f16947C = 0;

    /* renamed from: com.google.android.exoplayer2.text.l.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/a$a.class */
    public static class C5329a {

        /* renamed from: a */
        private final List<C5330a> f16961a = new ArrayList();

        /* renamed from: b */
        private final List<SpannableString> f16962b = new ArrayList();

        /* renamed from: c */
        private final StringBuilder f16963c = new StringBuilder();

        /* renamed from: d */
        private int f16964d;

        /* renamed from: e */
        private int f16965e;

        /* renamed from: f */
        private int f16966f;

        /* renamed from: g */
        private int f16967g;

        /* renamed from: h */
        private int f16968h;

        /* renamed from: com.google.android.exoplayer2.text.l.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/a$a$a.class */
        public static class C5330a {

            /* renamed from: a */
            public final int f16969a;

            /* renamed from: b */
            public final boolean f16970b;

            /* renamed from: c */
            public int f16971c;

            public C5330a(int i, boolean z, int i2) {
                this.f16969a = i;
                this.f16970b = z;
                this.f16971c = i2;
            }
        }

        public C5329a(int i, int i2) {
            m19634j(i);
            m19631m(i2);
        }

        /* renamed from: h */
        private SpannableString m19636h() {
            int i;
            int i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f16963c);
            int length = spannableStringBuilder.length();
            int i3 = 0;
            int i4 = -1;
            int i5 = -1;
            int i6 = 0;
            int i7 = -1;
            int i8 = -1;
            boolean z = false;
            while (i3 < this.f16961a.size()) {
                C5330a c5330a = this.f16961a.get(i3);
                boolean z2 = c5330a.f16970b;
                int i9 = c5330a.f16969a;
                int i10 = i8;
                boolean z3 = z;
                if (i9 != 8) {
                    boolean z4 = i9 == 7;
                    if (i9 != 7) {
                        i8 = C5328a.f16939i[i9];
                    }
                    z3 = z4;
                    i10 = i8;
                }
                int i11 = c5330a.f16971c;
                int i12 = i3 + 1;
                if (i11 == (i12 < this.f16961a.size() ? this.f16961a.get(i12).f16971c : length)) {
                    i3 = i12;
                    i8 = i10;
                    z = z3;
                } else {
                    if (i4 == -1 || z2) {
                        i = i4;
                        if (i4 == -1) {
                            i = i4;
                            if (z2) {
                                i = i11;
                            }
                        }
                    } else {
                        m19627q(spannableStringBuilder, i4, i11);
                        i = -1;
                    }
                    if (i5 == -1 || z3) {
                        i2 = i5;
                        if (i5 == -1) {
                            i2 = i5;
                            if (z3) {
                                i2 = i11;
                            }
                        }
                    } else {
                        m19629o(spannableStringBuilder, i5, i11);
                        i2 = -1;
                    }
                    i3 = i12;
                    i4 = i;
                    i5 = i2;
                    i8 = i10;
                    z = z3;
                    if (i10 != i7) {
                        m19630n(spannableStringBuilder, i6, i11, i7);
                        i7 = i10;
                        i3 = i12;
                        i4 = i;
                        i5 = i2;
                        i6 = i11;
                        i8 = i10;
                        z = z3;
                    }
                }
            }
            if (i4 != -1 && i4 != length) {
                m19627q(spannableStringBuilder, i4, length);
            }
            if (i5 != -1 && i5 != length) {
                m19629o(spannableStringBuilder, i5, length);
            }
            if (i6 != length) {
                m19630n(spannableStringBuilder, i6, length, i7);
            }
            return new SpannableString(spannableStringBuilder);
        }

        /* renamed from: n */
        private static void m19630n(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
        }

        /* renamed from: o */
        private static void m19629o(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
        }

        /* renamed from: q */
        private static void m19627q(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }

        /* renamed from: e */
        public void m19639e(char c) {
            this.f16963c.append(c);
        }

        /* renamed from: f */
        public void m19638f() {
            C5330a c5330a;
            int i;
            int length = this.f16963c.length();
            if (length > 0) {
                this.f16963c.delete(length - 1, length);
                for (int size = this.f16961a.size() - 1; size >= 0 && (i = (c5330a = this.f16961a.get(size)).f16971c) == length; size--) {
                    c5330a.f16971c = i - 1;
                }
            }
        }

        /* renamed from: g */
        public C5317b m19637g(int i) {
            float f;
            int i2;
            int i3;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.f16962b.size(); i4++) {
                spannableStringBuilder.append((CharSequence) this.f16962b.get(i4));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) m19636h());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i5 = this.f16965e + this.f16966f;
            int length = (32 - i5) - spannableStringBuilder.length();
            int i6 = i5 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.f16967g != 2 || (Math.abs(i6) >= 3 && length >= 0)) ? (this.f16967g != 2 || i6 <= 0) ? 0 : 2 : 1;
            }
            if (i != 1) {
                if (i == 2) {
                    i5 = 32 - length;
                }
                f = ((i5 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            if (this.f16967g != 1) {
                i2 = this.f16964d;
                if (i2 <= 7) {
                    i3 = 0;
                    return new C5317b(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i2, 1, i3, f, i, -3.4028235E38f);
                }
            }
            i2 = (this.f16964d - 15) - 2;
            i3 = 2;
            return new C5317b(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i2, 1, i3, f, i, -3.4028235E38f);
        }

        /* renamed from: i */
        public boolean m19635i() {
            return this.f16961a.isEmpty() && this.f16962b.isEmpty() && this.f16963c.length() == 0;
        }

        /* renamed from: j */
        public void m19634j(int i) {
            this.f16967g = i;
            this.f16961a.clear();
            this.f16962b.clear();
            this.f16963c.setLength(0);
            this.f16964d = 15;
            this.f16965e = 0;
            this.f16966f = 0;
        }

        /* renamed from: k */
        public void m19633k() {
            this.f16962b.add(m19636h());
            this.f16963c.setLength(0);
            this.f16961a.clear();
            int min = Math.min(this.f16968h, this.f16964d);
            while (this.f16962b.size() >= min) {
                this.f16962b.remove(0);
            }
        }

        /* renamed from: l */
        public void m19632l(int i) {
            this.f16967g = i;
        }

        /* renamed from: m */
        public void m19631m(int i) {
            this.f16968h = i;
        }

        /* renamed from: p */
        public void m19628p(int i, boolean z) {
            this.f16961a.add(new C5330a(i, z, this.f16963c.length()));
        }
    }

    public C5328a(String str, int i) {
        this.f16950p = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i == 1) {
            this.f16952r = 0;
            this.f16951q = 0;
        } else if (i == 2) {
            this.f16952r = 1;
            this.f16951q = 0;
        } else if (i == 3) {
            this.f16952r = 0;
            this.f16951q = 1;
        } else if (i != 4) {
            C5526o.m18742f("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f16952r = 0;
            this.f16951q = 0;
        } else {
            this.f16952r = 1;
            this.f16951q = 1;
        }
        m19659L(0);
        m19660K();
        this.f16948D = true;
    }

    /* renamed from: A */
    private static boolean m19670A(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 32;
    }

    /* renamed from: B */
    private static boolean m19669B(byte b, byte b2) {
        return (b & 246) == 20 && (b2 & 240) == 32;
    }

    /* renamed from: C */
    private static boolean m19668C(byte b, byte b2) {
        return (b & 240) == 16 && (b2 & 192) == 64;
    }

    /* renamed from: D */
    private static boolean m19667D(byte b) {
        return (b & 240) == 16;
    }

    /* renamed from: E */
    private boolean m19666E(boolean z, byte b, byte b2) {
        if (!z || !m19667D(b)) {
            this.f16960z = false;
            return false;
        } else if (this.f16960z && this.f16945A == b && this.f16946B == b2) {
            this.f16960z = false;
            return true;
        } else {
            this.f16960z = true;
            this.f16945A = b;
            this.f16946B = b2;
            return false;
        }
    }

    /* renamed from: F */
    private static boolean m19665F(byte b) {
        return (b & 247) == 20;
    }

    /* renamed from: G */
    private static boolean m19664G(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 48;
    }

    /* renamed from: H */
    private static boolean m19663H(byte b, byte b2) {
        return (b & 247) == 23 && b2 >= 33 && b2 <= 35;
    }

    /* renamed from: I */
    private static boolean m19662I(byte b) {
        boolean z = true;
        if (1 > b || b > 15) {
            z = false;
        }
        return z;
    }

    /* renamed from: J */
    private void m19661J(byte b, byte b2) {
        if (m19662I(b)) {
            this.f16948D = false;
        } else if (!m19665F(b)) {
        } else {
            if (b2 != 32 && b2 != 47) {
                switch (b2) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b2) {
                            case 41:
                                break;
                            case 42:
                            case 43:
                                this.f16948D = false;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.f16948D = true;
        }
    }

    /* renamed from: K */
    private void m19660K() {
        this.f16954t.m19634j(this.f16957w);
        this.f16953s.clear();
        this.f16953s.add(this.f16954t);
    }

    /* renamed from: L */
    private void m19659L(int i) {
        int i2 = this.f16957w;
        if (i2 == i) {
            return;
        }
        this.f16957w = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.f16953s.size(); i3++) {
                this.f16953s.get(i3).m19632l(i);
            }
            return;
        }
        m19660K();
        if (i2 != 3 && i != 1 && i != 0) {
            return;
        }
        this.f16955u = Collections.emptyList();
    }

    /* renamed from: M */
    private void m19658M(int i) {
        this.f16958x = i;
        this.f16954t.m19631m(i);
    }

    /* renamed from: N */
    private boolean m19657N(byte b) {
        if (m19645y(b)) {
            this.f16947C = m19654p(b);
        }
        return this.f16947C == this.f16952r;
    }

    /* renamed from: o */
    private static char m19655o(byte b) {
        return (char) f16940j[(b & Byte.MAX_VALUE) - 32];
    }

    /* renamed from: p */
    private static int m19654p(byte b) {
        return (b >> 3) & 1;
    }

    /* renamed from: q */
    private List<C5317b> m19653q() {
        int size = this.f16953s.size();
        ArrayList arrayList = new ArrayList(size);
        int i = 2;
        int i2 = 0;
        while (i2 < size) {
            C5317b m19637g = this.f16953s.get(i2).m19637g(Integer.MIN_VALUE);
            arrayList.add(m19637g);
            int i3 = i;
            if (m19637g != null) {
                i3 = Math.min(i, m19637g.f16911l);
            }
            i2++;
            i = i3;
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            C5317b c5317b = (C5317b) arrayList.get(i4);
            if (c5317b != null) {
                C5317b c5317b2 = c5317b;
                if (c5317b.f16911l != i) {
                    c5317b2 = this.f16953s.get(i4).m19637g(i);
                }
                arrayList2.add(c5317b2);
            }
        }
        return arrayList2;
    }

    /* renamed from: r */
    private static char m19652r(byte b) {
        return (char) f16942l[b & 31];
    }

    /* renamed from: s */
    private static char m19651s(byte b) {
        return (char) f16943m[b & 31];
    }

    /* renamed from: t */
    private static char m19650t(byte b, byte b2) {
        return (b & 1) == 0 ? m19652r(b2) : m19651s(b2);
    }

    /* renamed from: u */
    private static char m19649u(byte b) {
        return (char) f16941k[b & 15];
    }

    /* renamed from: v */
    private void m19648v(byte b) {
        this.f16954t.m19639e(' ');
        this.f16954t.m19628p((b >> 1) & 7, (b & 1) == 1);
    }

    /* renamed from: w */
    private void m19647w(byte b) {
        if (b == 32) {
            m19659L(2);
        } else if (b == 41) {
            m19659L(3);
        } else {
            switch (b) {
                case 37:
                    m19659L(1);
                    m19658M(2);
                    return;
                case 38:
                    m19659L(1);
                    m19658M(3);
                    return;
                case 39:
                    m19659L(1);
                    m19658M(4);
                    return;
                default:
                    int i = this.f16957w;
                    if (i == 0) {
                        return;
                    }
                    if (b == 33) {
                        this.f16954t.m19638f();
                        return;
                    }
                    switch (b) {
                        case 44:
                            this.f16955u = Collections.emptyList();
                            int i2 = this.f16957w;
                            if (i2 != 1 && i2 != 3) {
                                return;
                            }
                            m19660K();
                            return;
                        case 45:
                            if (i != 1 || this.f16954t.m19635i()) {
                                return;
                            }
                            this.f16954t.m19633k();
                            return;
                        case 46:
                            m19660K();
                            return;
                        case 47:
                            this.f16955u = m19653q();
                            m19660K();
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    /* renamed from: x */
    private void m19646x(byte b, byte b2) {
        int i = f16937g[b & 7];
        boolean z = false;
        int i2 = i;
        if ((b2 & 32) != 0) {
            i2 = i + 1;
        }
        if (i2 != this.f16954t.f16964d) {
            if (this.f16957w != 1 && !this.f16954t.m19635i()) {
                C5329a c5329a = new C5329a(this.f16957w, this.f16958x);
                this.f16954t = c5329a;
                this.f16953s.add(c5329a);
            }
            this.f16954t.f16964d = i2;
        }
        boolean z2 = (b2 & 16) == 16;
        if ((b2 & 1) == 1) {
            z = true;
        }
        int i3 = (b2 >> 1) & 7;
        this.f16954t.m19628p(z2 ? 8 : i3, z);
        if (z2) {
            this.f16954t.f16965e = f16938h[i3];
        }
    }

    /* renamed from: y */
    private static boolean m19645y(byte b) {
        return (b & 224) == 0;
    }

    /* renamed from: z */
    private static boolean m19644z(byte b, byte b2) {
        return (b & 246) == 18 && (b2 & 224) == 32;
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e, com.google.android.exoplayer2.text.AbstractC5321f
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo19590a(long j) {
        super.mo19590a(j);
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e, com.google.android.exoplayer2.p242b1.AbstractC4856c
    /* renamed from: b */
    public void mo19589b() {
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e
    /* renamed from: f */
    protected AbstractC5320e mo19585f() {
        List<C5317b> list = this.f16955u;
        this.f16956v = list;
        return new C5340f(list);
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e, com.google.android.exoplayer2.p242b1.AbstractC4856c
    public void flush() {
        super.flush();
        this.f16955u = null;
        this.f16956v = null;
        m19659L(0);
        m19658M(4);
        m19660K();
        this.f16959y = false;
        this.f16960z = false;
        this.f16945A = (byte) 0;
        this.f16946B = (byte) 0;
        this.f16947C = 0;
        this.f16948D = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x00c3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0017 A[SYNTHETIC] */
    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void mo19584g(com.google.android.exoplayer2.text.C5324h r6) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p252l.C5328a.mo19584g(com.google.android.exoplayer2.text.h):void");
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
        return this.f16955u != this.f16956v;
    }

    @Override // com.google.android.exoplayer2.text.p252l.AbstractC5336e
    /* renamed from: k */
    public /* bridge */ /* synthetic */ void mo19580k(C5324h c5324h) {
        super.mo19586e(c5324h);
    }
}
