package p1727n3.p1732a0.p1733a;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import p1727n3.p1732a0.p1733a.C25385b;
import p1727n3.p1807k.p1812c.C26493a;
/* renamed from: n3.a0.a.a */
/* loaded from: classes-dex2jar.jar:n3/a0/a/a.class */
public final class C25382a {

    /* renamed from: f */
    public static final Comparator<C25384b> f70785f = new C25383a();

    /* renamed from: a */
    public final int[] f70786a;

    /* renamed from: b */
    public final int[] f70787b;

    /* renamed from: c */
    public final List<C25385b.C25390e> f70788c;

    /* renamed from: d */
    public final C25385b.AbstractC25388c[] f70789d;

    /* renamed from: e */
    public final float[] f70790e = new float[3];

    /* renamed from: n3.a0.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/a0/a/a$a.class */
    public static final class C25383a implements Comparator<C25384b> {
        @Override // java.util.Comparator
        public int compare(C25384b c25384b, C25384b c25384b2) {
            return c25384b2.m3684b() - c25384b.m3684b();
        }
    }

    /* renamed from: n3.a0.a.a$b */
    /* loaded from: classes-dex2jar.jar:n3/a0/a/a$b.class */
    public class C25384b {

        /* renamed from: a */
        public int f70791a;

        /* renamed from: b */
        public int f70792b;

        /* renamed from: c */
        public int f70793c;

        /* renamed from: d */
        public int f70794d;

        /* renamed from: e */
        public int f70795e;

        /* renamed from: f */
        public int f70796f;

        /* renamed from: g */
        public int f70797g;

        /* renamed from: h */
        public int f70798h;

        /* renamed from: i */
        public int f70799i;

        public C25384b(int i, int i2) {
            C25382a.this = r4;
            this.f70791a = i;
            this.f70792b = i2;
            m3685a();
        }

        /* renamed from: a */
        public final void m3685a() {
            C25382a c25382a = C25382a.this;
            int[] iArr = c25382a.f70786a;
            int[] iArr2 = c25382a.f70787b;
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE;
            int i4 = 0;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = Integer.MAX_VALUE;
            int i8 = this.f70791a;
            while (i8 <= this.f70792b) {
                int i9 = iArr[i8];
                int i10 = i4 + iArr2[i9];
                int i11 = (i9 >> 10) & 31;
                int i12 = (i9 >> 5) & 31;
                int i13 = i9 & 31;
                int i14 = i2;
                if (i11 > i2) {
                    i14 = i11;
                }
                int i15 = i;
                if (i11 < i) {
                    i15 = i11;
                }
                int i16 = i6;
                if (i12 > i6) {
                    i16 = i12;
                }
                int i17 = i5;
                if (i12 < i5) {
                    i17 = i12;
                }
                int i18 = i3;
                if (i13 > i3) {
                    i18 = i13;
                }
                int i19 = i7;
                if (i13 < i7) {
                    i19 = i13;
                }
                i8++;
                i = i15;
                i5 = i17;
                i7 = i19;
                i2 = i14;
                i6 = i16;
                i3 = i18;
                i4 = i10;
            }
            this.f70794d = i;
            this.f70795e = i2;
            this.f70796f = i5;
            this.f70797g = i6;
            this.f70798h = i7;
            this.f70799i = i3;
            this.f70793c = i4;
        }

        /* renamed from: b */
        public final int m3684b() {
            int i = this.f70795e;
            int i2 = this.f70794d;
            return ((this.f70799i - this.f70798h) + 1) * ((this.f70797g - this.f70796f) + 1) * ((i - i2) + 1);
        }
    }

    public C25382a(int[] iArr, int i, C25385b.AbstractC25388c[] abstractC25388cArr) {
        int i2;
        C25384b c25384b;
        int i3;
        this.f70789d = abstractC25388cArr;
        int[] iArr2 = new int[32768];
        this.f70787b = iArr2;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            int i5 = iArr[i4];
            int m3687c = m3687c(Color.blue(i5), 8, 5) | (m3687c(Color.red(i5), 8, 5) << 10) | (m3687c(Color.green(i5), 8, 5) << 5);
            iArr[i4] = m3687c;
            iArr2[m3687c] = iArr2[m3687c] + 1;
        }
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = i7;
            if (i6 >= 32768) {
                break;
            }
            if (iArr2[i6] > 0) {
                int m3689a = m3689a((i6 >> 10) & 31, (i6 >> 5) & 31, i6 & 31);
                float[] fArr = this.f70790e;
                ThreadLocal<double[]> threadLocal = C26493a.f74275a;
                C26493a.m1758a(Color.red(m3689a), Color.green(m3689a), Color.blue(m3689a), fArr);
                if (m3686d(m3689a, this.f70790e)) {
                    iArr2[i6] = 0;
                }
            }
            int i8 = i2;
            if (iArr2[i6] > 0) {
                i8 = i2 + 1;
            }
            i6++;
            i7 = i8;
        }
        int[] iArr3 = new int[i2];
        this.f70786a = iArr3;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int i11 = i10;
            if (i9 >= 32768) {
                break;
            }
            int i12 = i11;
            if (iArr2[i9] > 0) {
                iArr3[i11] = i9;
                i12 = i11 + 1;
            }
            i9++;
            i10 = i12;
        }
        if (i2 <= i) {
            this.f70788c = new ArrayList();
            for (int i13 = 0; i13 < i2; i13++) {
                int i14 = iArr3[i13];
                this.f70788c.add(new C25385b.C25390e(m3689a((i14 >> 10) & 31, (i14 >> 5) & 31, i14 & 31), iArr2[i14]));
            }
            return;
        }
        PriorityQueue priorityQueue = new PriorityQueue(i, f70785f);
        priorityQueue.offer(new C25384b(0, this.f70786a.length - 1));
        while (priorityQueue.size() < i && (c25384b = (C25384b) priorityQueue.poll()) != null) {
            int i15 = c25384b.f70792b;
            int i16 = c25384b.f70791a;
            int i17 = (i15 + 1) - i16;
            if (!(i17 > 1)) {
                break;
            }
            if (!(i17 > 1)) {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int i18 = c25384b.f70795e - c25384b.f70794d;
            int i19 = c25384b.f70797g - c25384b.f70796f;
            int i20 = c25384b.f70799i - c25384b.f70798h;
            int i21 = (i18 < i19 || i18 < i20) ? (i19 < i18 || i19 < i20) ? -1 : -2 : -3;
            C25382a c25382a = C25382a.this;
            int[] iArr4 = c25382a.f70786a;
            int[] iArr5 = c25382a.f70787b;
            m3688b(iArr4, i21, i16, i15);
            Arrays.sort(iArr4, c25384b.f70791a, c25384b.f70792b + 1);
            m3688b(iArr4, i21, c25384b.f70791a, c25384b.f70792b);
            int i22 = c25384b.f70793c / 2;
            int i23 = c25384b.f70791a;
            int i24 = 0;
            while (true) {
                int i25 = c25384b.f70792b;
                if (i23 > i25) {
                    i3 = c25384b.f70791a;
                    break;
                }
                i24 += iArr5[iArr4[i23]];
                if (i24 >= i22) {
                    i3 = Math.min(i25 - 1, i23);
                    break;
                }
                i23++;
            }
            int i26 = i3;
            C25384b c25384b2 = new C25384b(i26 + 1, c25384b.f70792b);
            c25384b.f70792b = i26;
            c25384b.m3685a();
            priorityQueue.offer(c25384b2);
            priorityQueue.offer(c25384b);
        }
        ArrayList arrayList = new ArrayList(priorityQueue.size());
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            C25384b c25384b3 = (C25384b) it.next();
            C25382a c25382a2 = C25382a.this;
            int[] iArr6 = c25382a2.f70786a;
            int[] iArr7 = c25382a2.f70787b;
            int i27 = 0;
            int i28 = 0;
            int i29 = 0;
            int i30 = 0;
            for (int i31 = c25384b3.f70791a; i31 <= c25384b3.f70792b; i31++) {
                int i32 = iArr6[i31];
                int i33 = iArr7[i32];
                i30 += i33;
                i27 += ((i32 >> 10) & 31) * i33;
                i28 += ((i32 >> 5) & 31) * i33;
                i29 += i33 * (i32 & 31);
            }
            float f = i30;
            C25385b.C25390e c25390e = new C25385b.C25390e(m3689a(Math.round(i27 / f), Math.round(i28 / f), Math.round(i29 / f)), i30);
            if (!m3686d(c25390e.f70816d, c25390e.m3680b())) {
                arrayList.add(c25390e);
            }
        }
        this.f70788c = arrayList;
    }

    /* renamed from: a */
    public static int m3689a(int i, int i2, int i3) {
        return Color.rgb(m3687c(i, 5, 8), m3687c(i2, 5, 8), m3687c(i3, 5, 8));
    }

    /* renamed from: b */
    public static void m3688b(int[] iArr, int i, int i2, int i3) {
        if (i == -2) {
            for (int i4 = i2; i4 <= i3; i4++) {
                int i5 = iArr[i4];
                iArr[i4] = (i5 & 31) | (((i5 >> 5) & 31) << 10) | (((i5 >> 10) & 31) << 5);
            }
        } else if (i == -1) {
            while (i2 <= i3) {
                int i6 = iArr[i2];
                iArr[i2] = ((i6 >> 10) & 31) | ((i6 & 31) << 10) | (((i6 >> 5) & 31) << 5);
                i2++;
            }
        }
    }

    /* renamed from: c */
    public static int m3687c(int i, int i2, int i3) {
        return (i3 > i2 ? i << (i3 - i2) : i >> (i2 - i3)) & ((1 << i3) - 1);
    }

    /* renamed from: d */
    public final boolean m3686d(int i, float[] fArr) {
        C25385b.AbstractC25388c[] abstractC25388cArr = this.f70789d;
        if (abstractC25388cArr == null || abstractC25388cArr.length <= 0) {
            return false;
        }
        int length = abstractC25388cArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (!this.f70789d[i2].mo3682a(i, fArr)) {
                return true;
            }
        }
        return false;
    }
}
