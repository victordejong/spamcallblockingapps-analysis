package com.google.android.exoplayer2.text.p254n;

import android.graphics.Bitmap;
import com.google.android.exoplayer2.text.AbstractC5318c;
import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;
/* renamed from: com.google.android.exoplayer2.text.n.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/n/a.class */
public final class C5353a extends AbstractC5318c {

    /* renamed from: o */
    private final C5536v f17086o = new C5536v();

    /* renamed from: p */
    private final C5536v f17087p = new C5536v();

    /* renamed from: q */
    private final C5354a f17088q = new C5354a();

    /* renamed from: r */
    private Inflater f17089r;

    /* renamed from: com.google.android.exoplayer2.text.n.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/n/a$a.class */
    public static final class C5354a {

        /* renamed from: a */
        private final C5536v f17090a = new C5536v();

        /* renamed from: b */
        private final int[] f17091b = new int[256];

        /* renamed from: c */
        private boolean f17092c;

        /* renamed from: d */
        private int f17093d;

        /* renamed from: e */
        private int f17094e;

        /* renamed from: f */
        private int f17095f;

        /* renamed from: g */
        private int f17096g;

        /* renamed from: h */
        private int f17097h;

        /* renamed from: i */
        private int f17098i;

        /* renamed from: e */
        public void m19546e(C5536v c5536v, int i) {
            int m18690C;
            if (i < 4) {
                return;
            }
            c5536v.m18679N(3);
            int i2 = i - 4;
            int i3 = i2;
            if ((c5536v.m18653z() & 128) != 0) {
                if (i2 < 7 || (m18690C = c5536v.m18690C()) < 4) {
                    return;
                }
                this.f17097h = c5536v.m18687F();
                this.f17098i = c5536v.m18687F();
                this.f17090a.m18684I(m18690C - 4);
                i3 = i2 - 7;
            }
            int m18676c = this.f17090a.m18676c();
            int m18675d = this.f17090a.m18675d();
            if (m18676c >= m18675d || i3 <= 0) {
                return;
            }
            int min = Math.min(i3, m18675d - m18676c);
            c5536v.m18671h(this.f17090a.f17941a, m18676c, min);
            this.f17090a.m18680M(m18676c + min);
        }

        /* renamed from: f */
        public void m19545f(C5536v c5536v, int i) {
            if (i < 19) {
                return;
            }
            this.f17093d = c5536v.m18687F();
            this.f17094e = c5536v.m18687F();
            c5536v.m18679N(11);
            this.f17095f = c5536v.m18687F();
            this.f17096g = c5536v.m18687F();
        }

        /* renamed from: g */
        public void m19544g(C5536v c5536v, int i) {
            if (i % 5 != 2) {
                return;
            }
            c5536v.m18679N(2);
            Arrays.fill(this.f17091b, 0);
            int i2 = i / 5;
            for (int i3 = 0; i3 < i2; i3++) {
                int m18653z = c5536v.m18653z();
                int m18653z2 = c5536v.m18653z();
                int m18653z3 = c5536v.m18653z();
                int m18653z4 = c5536v.m18653z();
                int m18653z5 = c5536v.m18653z();
                double d = m18653z2;
                double d2 = m18653z3 - 128;
                int i4 = (int) ((1.402d * d2) + d);
                double d3 = m18653z4 - 128;
                int i5 = (int) ((d - (0.34414d * d3)) - (d2 * 0.71414d));
                int i6 = (int) (d + (d3 * 1.772d));
                this.f17091b[m18653z] = C5515h0.m18819n(i6, 0, 255) | (C5515h0.m18819n(i5, 0, 255) << 8) | (m18653z5 << 24) | (C5515h0.m18819n(i4, 0, 255) << 16);
            }
            this.f17092c = true;
        }

        /* renamed from: d */
        public C5317b m19547d() {
            if (this.f17093d == 0 || this.f17094e == 0 || this.f17097h == 0 || this.f17098i == 0 || this.f17090a.m18675d() == 0 || this.f17090a.m18676c() != this.f17090a.m18675d() || !this.f17092c) {
                return null;
            }
            this.f17090a.m18680M(0);
            int i = this.f17097h * this.f17098i;
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int m18653z = this.f17090a.m18653z();
                if (m18653z != 0) {
                    iArr[i2] = this.f17091b[m18653z];
                    i2++;
                } else {
                    int m18653z2 = this.f17090a.m18653z();
                    if (m18653z2 != 0) {
                        int m18653z3 = (m18653z2 & 64) == 0 ? m18653z2 & 63 : ((m18653z2 & 63) << 8) | this.f17090a.m18653z();
                        int i3 = (m18653z2 & 128) == 0 ? 0 : this.f17091b[this.f17090a.m18653z()];
                        int i4 = m18653z3 + i2;
                        Arrays.fill(iArr, i2, i4, i3);
                        i2 = i4;
                    }
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(iArr, this.f17097h, this.f17098i, Bitmap.Config.ARGB_8888);
            float f = this.f17095f;
            int i5 = this.f17093d;
            float f2 = f / i5;
            float f3 = this.f17096g;
            int i6 = this.f17094e;
            return new C5317b(createBitmap, f2, 0, f3 / i6, 0, this.f17097h / i5, this.f17098i / i6);
        }

        /* renamed from: h */
        public void m19543h() {
            this.f17093d = 0;
            this.f17094e = 0;
            this.f17095f = 0;
            this.f17096g = 0;
            this.f17097h = 0;
            this.f17098i = 0;
            this.f17090a.m18684I(0);
            this.f17092c = false;
        }
    }

    public C5353a() {
        super("PgsDecoder");
    }

    /* renamed from: C */
    private void m19552C(C5536v c5536v) {
        if (c5536v.m18678a() <= 0 || c5536v.m18673f() != 120) {
            return;
        }
        if (this.f17089r == null) {
            this.f17089r = new Inflater();
        }
        if (!C5515h0.m18853S(c5536v, this.f17087p, this.f17089r)) {
            return;
        }
        C5536v c5536v2 = this.f17087p;
        c5536v.m18682K(c5536v2.f17941a, c5536v2.m18675d());
    }

    /* renamed from: D */
    private static C5317b m19551D(C5536v c5536v, C5354a c5354a) {
        C5317b c5317b;
        int m18675d = c5536v.m18675d();
        int m18653z = c5536v.m18653z();
        int m18687F = c5536v.m18687F();
        int m18676c = c5536v.m18676c() + m18687F;
        if (m18676c > m18675d) {
            c5536v.m18680M(m18675d);
            return null;
        }
        if (m18653z != 128) {
            switch (m18653z) {
                case 20:
                    c5354a.m19544g(c5536v, m18687F);
                    c5317b = null;
                    break;
                case 21:
                    c5354a.m19546e(c5536v, m18687F);
                    c5317b = null;
                    break;
                case 22:
                    c5354a.m19545f(c5536v, m18687F);
                    c5317b = null;
                    break;
                default:
                    c5317b = null;
                    break;
            }
        } else {
            C5317b m19547d = c5354a.m19547d();
            c5354a.m19543h();
            c5317b = m19547d;
        }
        c5536v.m18680M(m18676c);
        return c5317b;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5318c
    /* renamed from: z */
    protected AbstractC5320e mo19377z(byte[] bArr, int i, boolean z) {
        this.f17086o.m18682K(bArr, i);
        m19552C(this.f17086o);
        this.f17088q.m19543h();
        ArrayList arrayList = new ArrayList();
        while (this.f17086o.m18678a() >= 3) {
            C5317b m19551D = m19551D(this.f17086o, this.f17088q);
            if (m19551D != null) {
                arrayList.add(m19551D);
            }
        }
        return new C5355b(Collections.unmodifiableList(arrayList));
    }
}
