package p193e.p1577m.p1578a.p1596c.p1622m1.p1623m;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.m1.m.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/m/a.class */
public final class C24574a extends AbstractC24581d {

    /* renamed from: h */
    public final int f68700h;

    /* renamed from: i */
    public final int f68701i;

    /* renamed from: j */
    public final int f68702j;

    /* renamed from: m */
    public List<C24562b> f68705m;

    /* renamed from: n */
    public List<C24562b> f68706n;

    /* renamed from: o */
    public int f68707o;

    /* renamed from: p */
    public int f68708p;

    /* renamed from: q */
    public boolean f68709q;

    /* renamed from: r */
    public boolean f68710r;

    /* renamed from: s */
    public byte f68711s;

    /* renamed from: t */
    public byte f68712t;

    /* renamed from: v */
    public boolean f68714v;

    /* renamed from: w */
    public static final int[] f68695w = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: x */
    public static final int[] f68696x = {0, 4, 8, 12, 16, 20, 24, 28};

    /* renamed from: y */
    public static final int[] f68697y = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};

    /* renamed from: z */
    public static final int[] f68698z = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};

    /* renamed from: A */
    public static final int[] f68691A = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};

    /* renamed from: B */
    public static final int[] f68692B = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};

    /* renamed from: C */
    public static final int[] f68693C = {195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};

    /* renamed from: D */
    public static final boolean[] f68694D = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: g */
    public final C24798t f68699g = new C24798t();

    /* renamed from: k */
    public final ArrayList<C24575a> f68703k = new ArrayList<>();

    /* renamed from: l */
    public C24575a f68704l = new C24575a(0, 4);

    /* renamed from: u */
    public int f68713u = 0;

    /* renamed from: e.m.a.c.m1.m.a$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/m/a$a.class */
    public static class C24575a {

        /* renamed from: a */
        public final List<C24576a> f68715a = new ArrayList();

        /* renamed from: b */
        public final List<SpannableString> f68716b = new ArrayList();

        /* renamed from: c */
        public final StringBuilder f68717c = new StringBuilder();

        /* renamed from: d */
        public int f68718d;

        /* renamed from: e */
        public int f68719e;

        /* renamed from: f */
        public int f68720f;

        /* renamed from: g */
        public int f68721g;

        /* renamed from: h */
        public int f68722h;

        /* renamed from: e.m.a.c.m1.m.a$a$a */
        /* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/m/a$a$a.class */
        public static class C24576a {

            /* renamed from: a */
            public final int f68723a;

            /* renamed from: b */
            public final boolean f68724b;

            /* renamed from: c */
            public int f68725c;

            public C24576a(int i, boolean z, int i2) {
                this.f68723a = i;
                this.f68724b = z;
                this.f68725c = i2;
            }
        }

        public C24575a(int i, int i2) {
            m4891e(i);
            this.f68722h = i2;
        }

        /* renamed from: a */
        public void m4895a() {
            C24576a c24576a;
            int i;
            int length = this.f68717c.length();
            if (length > 0) {
                this.f68717c.delete(length - 1, length);
                for (int size = this.f68715a.size() - 1; size >= 0 && (i = (c24576a = this.f68715a.get(size)).f68725c) == length; size--) {
                    c24576a.f68725c = i - 1;
                }
            }
        }

        /* renamed from: b */
        public C24562b m4894b(int i) {
            float f;
            int i2;
            int i3;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.f68716b.size(); i4++) {
                spannableStringBuilder.append((CharSequence) this.f68716b.get(i4));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) m4893c());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i5 = this.f68719e + this.f68720f;
            int length = (32 - i5) - spannableStringBuilder.length();
            int i6 = i5 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.f68721g != 2 || (Math.abs(i6) >= 3 && length >= 0)) ? (this.f68721g != 2 || i6 <= 0) ? 0 : 2 : 1;
            }
            if (i != 1) {
                if (i == 2) {
                    i5 = 32 - length;
                }
                f = ((i5 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            if (this.f68721g != 1) {
                i3 = this.f68718d;
                if (i3 <= 7) {
                    i2 = 0;
                    return new C24562b(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i2, f, i, -3.4028235E38f);
                }
            }
            i3 = (this.f68718d - 15) - 2;
            i2 = 2;
            return new C24562b(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i2, f, i, -3.4028235E38f);
        }

        /* renamed from: c */
        public final SpannableString m4893c() {
            int i;
            int i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f68717c);
            int length = spannableStringBuilder.length();
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            int i6 = 0;
            boolean z = false;
            int i7 = -1;
            int i8 = -1;
            while (i5 < this.f68715a.size()) {
                C24576a c24576a = this.f68715a.get(i5);
                boolean z2 = c24576a.f68724b;
                int i9 = c24576a.f68723a;
                boolean z3 = z;
                int i10 = i4;
                if (i9 != 8) {
                    boolean z4 = i9 == 7;
                    if (i9 != 7) {
                        i4 = C24574a.f68697y[i9];
                    }
                    z3 = z4;
                    i10 = i4;
                }
                int i11 = c24576a.f68725c;
                int i12 = i5 + 1;
                if (i11 == (i12 < this.f68715a.size() ? this.f68715a.get(i12).f68725c : length)) {
                    i5 = i12;
                    z = z3;
                    i4 = i10;
                } else {
                    if (i3 == -1 || z2) {
                        i = i3;
                        if (i3 == -1) {
                            i = i3;
                            if (z2) {
                                i = i11;
                            }
                        }
                    } else {
                        spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i11, 33);
                        i = -1;
                    }
                    if (i8 == -1 || z3) {
                        i2 = i8;
                        if (i8 == -1) {
                            i2 = i8;
                            if (z3) {
                                i2 = i11;
                            }
                        }
                    } else {
                        spannableStringBuilder.setSpan(new StyleSpan(2), i8, i11, 33);
                        i2 = -1;
                    }
                    i5 = i12;
                    i3 = i;
                    i8 = i2;
                    z = z3;
                    i4 = i10;
                    if (i10 != i7) {
                        if (i7 != -1) {
                            spannableStringBuilder.setSpan(new ForegroundColorSpan(i7), i6, i11, 33);
                        }
                        i7 = i10;
                        i5 = i12;
                        i3 = i;
                        i8 = i2;
                        i6 = i11;
                        z = z3;
                        i4 = i10;
                    }
                }
            }
            if (i3 != -1 && i3 != length) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, length, 33);
            }
            if (i8 != -1 && i8 != length) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i8, length, 33);
            }
            if (i6 != length && i7 != -1) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i7), i6, length, 33);
            }
            return new SpannableString(spannableStringBuilder);
        }

        /* renamed from: d */
        public boolean m4892d() {
            return this.f68715a.isEmpty() && this.f68716b.isEmpty() && this.f68717c.length() == 0;
        }

        /* renamed from: e */
        public void m4891e(int i) {
            this.f68721g = i;
            this.f68715a.clear();
            this.f68716b.clear();
            this.f68717c.setLength(0);
            this.f68718d = 15;
            this.f68719e = 0;
            this.f68720f = 0;
        }
    }

    public C24574a(String str, int i) {
        this.f68700h = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i == 1) {
            this.f68702j = 0;
            this.f68701i = 0;
        } else if (i == 2) {
            this.f68702j = 1;
            this.f68701i = 0;
        } else if (i == 3) {
            this.f68702j = 0;
            this.f68701i = 1;
        } else if (i != 4) {
            this.f68702j = 0;
            this.f68701i = 0;
        } else {
            this.f68702j = 1;
            this.f68701i = 1;
        }
        m4897k(0);
        m4898j();
        this.f68714v = true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.p1623m.AbstractC24581d
    /* renamed from: e */
    public AbstractC24565e mo4875e() {
        List<C24562b> list = this.f68705m;
        this.f68706n = list;
        return new C24585e(list);
    }

    /* JADX WARN: Removed duplicated region for block: B:238:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0017 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b8  */
    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.p1623m.AbstractC24581d
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo4874f(p193e.p1577m.p1578a.p1596c.p1622m1.C24570i r8) {
        /*
            Method dump skipped, instructions count: 1512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1622m1.p1623m.C24574a.mo4874f(e.m.a.c.m1.i):void");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.p1623m.AbstractC24581d, p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    public void flush() {
        super.flush();
        this.f68705m = null;
        this.f68706n = null;
        m4897k(0);
        m4896l(4);
        m4898j();
        this.f68709q = false;
        this.f68710r = false;
        this.f68711s = (byte) 0;
        this.f68712t = (byte) 0;
        this.f68713u = 0;
        this.f68714v = true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.p1623m.AbstractC24581d
    /* renamed from: g */
    public boolean mo4873g() {
        return this.f68705m != this.f68706n;
    }

    /* renamed from: i */
    public final List<C24562b> m4899i() {
        int size = this.f68703k.size();
        ArrayList arrayList = new ArrayList(size);
        int i = 2;
        int i2 = 0;
        while (i2 < size) {
            C24562b m4894b = this.f68703k.get(i2).m4894b(Integer.MIN_VALUE);
            arrayList.add(m4894b);
            int i3 = i;
            if (m4894b != null) {
                i3 = Math.min(i, m4894b.f68666h);
            }
            i2++;
            i = i3;
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            C24562b c24562b = (C24562b) arrayList.get(i4);
            if (c24562b != null) {
                C24562b c24562b2 = c24562b;
                if (c24562b.f68666h != i) {
                    c24562b2 = this.f68703k.get(i4).m4894b(i);
                }
                arrayList2.add(c24562b2);
            }
        }
        return arrayList2;
    }

    /* renamed from: j */
    public final void m4898j() {
        this.f68704l.m4891e(this.f68707o);
        this.f68703k.clear();
        this.f68703k.add(this.f68704l);
    }

    /* renamed from: k */
    public final void m4897k(int i) {
        int i2 = this.f68707o;
        if (i2 == i) {
            return;
        }
        this.f68707o = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.f68703k.size(); i3++) {
                this.f68703k.get(i3).f68721g = i;
            }
            return;
        }
        m4898j();
        if (i2 != 3 && i != 1 && i != 0) {
            return;
        }
        this.f68705m = Collections.emptyList();
    }

    /* renamed from: l */
    public final void m4896l(int i) {
        this.f68708p = i;
        this.f68704l.f68722h = i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.p1623m.AbstractC24581d, p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    public void release() {
    }
}
