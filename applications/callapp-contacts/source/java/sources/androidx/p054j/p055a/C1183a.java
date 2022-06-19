package androidx.p054j.p055a;

import android.graphics.Color;
import android.util.TimingLogger;
import androidx.core.graphics.C0834a;
import androidx.p054j.p055a.C1186b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;
/* renamed from: androidx.j.a.a */
/* loaded from: classes-dex2jar.jar:androidx/j/a/a.class */
public final class C1183a {

    /* renamed from: g */
    private static final Comparator<C1185a> f4610g = new Comparator<C1185a>() { // from class: androidx.j.a.a.1
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(C1185a c1185a, C1185a c1185a2) {
            return c1185a2.m43398a() - c1185a.m43398a();
        }
    };

    /* renamed from: a */
    final int[] f4611a;

    /* renamed from: b */
    final int[] f4612b;

    /* renamed from: c */
    final List<C1186b.C1192d> f4613c;

    /* renamed from: e */
    final C1186b.AbstractC1190b[] f4615e;

    /* renamed from: f */
    private final float[] f4616f = new float[3];

    /* renamed from: d */
    final TimingLogger f4614d = null;

    /* renamed from: androidx.j.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/j/a/a$a.class */
    public final class C1185a {

        /* renamed from: a */
        int f4617a;

        /* renamed from: c */
        private int f4619c;

        /* renamed from: d */
        private int f4620d;

        /* renamed from: e */
        private int f4621e;

        /* renamed from: f */
        private int f4622f;

        /* renamed from: g */
        private int f4623g;

        /* renamed from: h */
        private int f4624h;

        /* renamed from: i */
        private int f4625i;

        /* renamed from: j */
        private int f4626j;

        C1185a(int i, int i2) {
            C1183a.this = r4;
            this.f4619c = i;
            this.f4617a = i2;
            m43396c();
        }

        /* renamed from: f */
        private int m43393f() {
            return (this.f4617a + 1) - this.f4619c;
        }

        /* renamed from: a */
        final int m43398a() {
            return ((this.f4622f - this.f4621e) + 1) * ((this.f4624h - this.f4623g) + 1) * ((this.f4626j - this.f4625i) + 1);
        }

        /* renamed from: b */
        final boolean m43397b() {
            return m43393f() > 1;
        }

        /* renamed from: c */
        final void m43396c() {
            int[] iArr = C1183a.this.f4611a;
            int[] iArr2 = C1183a.this.f4612b;
            int i = this.f4619c;
            int i2 = Integer.MAX_VALUE;
            int i3 = Integer.MAX_VALUE;
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = Integer.MIN_VALUE;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                if (i > this.f4617a) {
                    this.f4621e = i2;
                    this.f4622f = i5;
                    this.f4623g = i3;
                    this.f4624h = i6;
                    this.f4625i = i4;
                    this.f4626j = i7;
                    this.f4620d = i9;
                    return;
                }
                int i10 = iArr[i];
                int i11 = i9 + iArr2[i10];
                int m43408a = C1183a.m43408a(i10);
                int m43402b = C1183a.m43402b(i10);
                int m43400c = C1183a.m43400c(i10);
                int i12 = i5;
                if (m43408a > i5) {
                    i12 = m43408a;
                }
                int i13 = i2;
                if (m43408a < i2) {
                    i13 = m43408a;
                }
                int i14 = i6;
                if (m43402b > i6) {
                    i14 = m43402b;
                }
                int i15 = i3;
                if (m43402b < i3) {
                    i15 = m43402b;
                }
                int i16 = i7;
                if (m43400c > i7) {
                    i16 = m43400c;
                }
                int i17 = i4;
                if (m43400c < i4) {
                    i17 = m43400c;
                }
                i++;
                i2 = i13;
                i3 = i15;
                i4 = i17;
                i5 = i12;
                i6 = i14;
                i7 = i16;
                i8 = i11;
            }
        }

        /* renamed from: d */
        final int m43395d() {
            int i = this.f4622f - this.f4621e;
            int i2 = this.f4624h - this.f4623g;
            int i3 = this.f4626j - this.f4625i;
            int i4 = (i < i2 || i < i3) ? (i2 < i || i2 < i3) ? -1 : -2 : -3;
            int[] iArr = C1183a.this.f4611a;
            int[] iArr2 = C1183a.this.f4612b;
            C1183a.m43403a(iArr, i4, this.f4619c, this.f4617a);
            Arrays.sort(iArr, this.f4619c, this.f4617a + 1);
            C1183a.m43403a(iArr, i4, this.f4619c, this.f4617a);
            int i5 = this.f4620d / 2;
            int i6 = this.f4619c;
            int i7 = 0;
            while (true) {
                int i8 = this.f4617a;
                if (i6 <= i8) {
                    i7 += iArr2[iArr[i6]];
                    if (i7 >= i5) {
                        return Math.min(i8 - 1, i6);
                    }
                    i6++;
                } else {
                    return this.f4619c;
                }
            }
        }

        /* renamed from: e */
        final C1186b.C1192d m43394e() {
            int[] iArr = C1183a.this.f4611a;
            int[] iArr2 = C1183a.this.f4612b;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = this.f4619c; i5 <= this.f4617a; i5++) {
                int i6 = iArr[i5];
                int i7 = iArr2[i6];
                i2 += i7;
                i += C1183a.m43408a(i6) * i7;
                i3 += C1183a.m43402b(i6) * i7;
                i4 += i7 * C1183a.m43400c(i6);
            }
            float f = i2;
            return new C1186b.C1192d(C1183a.m43407a(Math.round(i / f), Math.round(i3 / f), Math.round(i4 / f)), i2);
        }
    }

    public C1183a(int[] iArr, int i, C1186b.AbstractC1190b[] abstractC1190bArr) {
        int i2;
        this.f4615e = abstractC1190bArr;
        int[] iArr2 = new int[32768];
        this.f4612b = iArr2;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            int i4 = iArr[i3];
            int m43401b = m43401b(Color.blue(i4), 8, 5) | (m43401b(Color.red(i4), 8, 5) << 10) | (m43401b(Color.green(i4), 8, 5) << 5);
            iArr[i3] = m43401b;
            iArr2[m43401b] = iArr2[m43401b] + 1;
        }
        int i5 = 0;
        int i6 = 0;
        while (true) {
            i2 = i6;
            if (i5 >= 32768) {
                break;
            }
            if (iArr2[i5] > 0) {
                C0834a.m44399a(m43399d(i5), this.f4616f);
                if (m43404a(this.f4616f)) {
                    iArr2[i5] = 0;
                }
            }
            int i7 = i2;
            if (iArr2[i5] > 0) {
                i7 = i2 + 1;
            }
            i5++;
            i6 = i7;
        }
        int[] iArr3 = new int[i2];
        this.f4611a = iArr3;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int i10 = i9;
            if (i8 >= 32768) {
                break;
            }
            int i11 = i10;
            if (iArr2[i8] > 0) {
                iArr3[i10] = i8;
                i11 = i10 + 1;
            }
            i8++;
            i9 = i11;
        }
        if (i2 > i) {
            PriorityQueue priorityQueue = new PriorityQueue(i, f4610g);
            priorityQueue.offer(new C1185a(0, this.f4611a.length - 1));
            m43405a(priorityQueue, i);
            this.f4613c = m43406a(priorityQueue);
            return;
        }
        this.f4613c = new ArrayList();
        for (int i12 = 0; i12 < i2; i12++) {
            int i13 = iArr3[i12];
            this.f4613c.add(new C1186b.C1192d(m43399d(i13), iArr2[i13]));
        }
    }

    /* renamed from: a */
    static int m43408a(int i) {
        return (i >> 10) & 31;
    }

    /* renamed from: a */
    static int m43407a(int i, int i2, int i3) {
        return Color.rgb(m43401b(i, 5, 8), m43401b(i2, 5, 8), m43401b(i3, 5, 8));
    }

    /* renamed from: a */
    private List<C1186b.C1192d> m43406a(Collection<C1185a> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (C1185a c1185a : collection) {
            C1186b.C1192d m43394e = c1185a.m43394e();
            if (!m43404a(m43394e.m43386a())) {
                arrayList.add(m43394e);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private static void m43405a(PriorityQueue<C1185a> priorityQueue, int i) {
        C1185a poll;
        while (priorityQueue.size() < i && (poll = priorityQueue.poll()) != null && poll.m43397b()) {
            if (!poll.m43397b()) {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int m43395d = poll.m43395d();
            C1185a c1185a = new C1185a(m43395d + 1, poll.f4617a);
            poll.f4617a = m43395d;
            poll.m43396c();
            priorityQueue.offer(c1185a);
            priorityQueue.offer(poll);
        }
    }

    /* renamed from: a */
    static void m43403a(int[] iArr, int i, int i2, int i3) {
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

    /* renamed from: a */
    private boolean m43404a(float[] fArr) {
        C1186b.AbstractC1190b[] abstractC1190bArr = this.f4615e;
        if (abstractC1190bArr == null || abstractC1190bArr.length <= 0) {
            return false;
        }
        int length = abstractC1190bArr.length;
        for (int i = 0; i < length; i++) {
            if (!this.f4615e[i].mo43387a(fArr)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    static int m43402b(int i) {
        return (i >> 5) & 31;
    }

    /* renamed from: b */
    private static int m43401b(int i, int i2, int i3) {
        return (i3 > i2 ? i << (i3 - i2) : i >> (i2 - i3)) & ((1 << i3) - 1);
    }

    /* renamed from: c */
    static int m43400c(int i) {
        return i & 31;
    }

    /* renamed from: d */
    private static int m43399d(int i) {
        return m43407a((i >> 10) & 31, (i >> 5) & 31, i & 31);
    }
}
