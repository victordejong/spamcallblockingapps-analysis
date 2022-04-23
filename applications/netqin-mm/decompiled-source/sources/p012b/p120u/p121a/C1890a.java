package p012b.p120u.p121a;

import android.graphics.Color;
import com.google.common.collect.RegularImmutableMap;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;
import p012b.p042i.p046j.C0891b;
import p012b.p120u.p121a.C1893b;
/* renamed from: b.u.a.a */
/* loaded from: classes-dex2jar.jar:b/u/a/a.class */
public final class C1890a {

    /* renamed from: f */
    public static final Comparator<C1892b> f7449f = new C1891a();

    /* renamed from: a */
    public final int[] f7450a;

    /* renamed from: b */
    public final int[] f7451b;

    /* renamed from: c */
    public final List<C1893b.C1899e> f7452c;

    /* renamed from: d */
    public final C1893b.AbstractC1897c[] f7453d;

    /* renamed from: e */
    public final float[] f7454e = new float[3];

    /* renamed from: b.u.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/u/a/a$a.class */
    public static final class C1891a implements Comparator<C1892b> {
        /* renamed from: a */
        public int compare(C1892b bVar, C1892b bVar2) {
            return bVar2.m31790g() - bVar.m31790g();
        }
    }

    /* renamed from: b.u.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/u/a/a$b.class */
    public class C1892b {

        /* renamed from: a */
        public int f7455a;

        /* renamed from: b */
        public int f7456b;

        /* renamed from: c */
        public int f7457c;

        /* renamed from: d */
        public int f7458d;

        /* renamed from: e */
        public int f7459e;

        /* renamed from: f */
        public int f7460f;

        /* renamed from: g */
        public int f7461g;

        /* renamed from: h */
        public int f7462h;

        /* renamed from: i */
        public int f7463i;

        public C1892b(int i, int i2) {
            this.f7455a = i;
            this.f7456b = i2;
            m31794c();
        }

        /* renamed from: a */
        public final boolean m31796a() {
            boolean z = true;
            if (m31792e() <= 1) {
                z = false;
            }
            return z;
        }

        /* renamed from: b */
        public final int m31795b() {
            int f = m31791f();
            C1890a aVar = C1890a.this;
            int[] iArr = aVar.f7450a;
            int[] iArr2 = aVar.f7451b;
            C1890a.m31805a(iArr, f, this.f7455a, this.f7456b);
            Arrays.sort(iArr, this.f7455a, this.f7456b + 1);
            C1890a.m31805a(iArr, f, this.f7455a, this.f7456b);
            int i = this.f7457c / 2;
            int i2 = this.f7455a;
            int i3 = 0;
            while (true) {
                int i4 = this.f7456b;
                if (i2 > i4) {
                    return this.f7455a;
                }
                i3 += iArr2[iArr[i2]];
                if (i3 >= i) {
                    return Math.min(i4 - 1, i2);
                }
                i2++;
            }
        }

        /* renamed from: c */
        public final void m31794c() {
            C1890a aVar = C1890a.this;
            int[] iArr = aVar.f7450a;
            int[] iArr2 = aVar.f7451b;
            int i = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            int i2 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            int i3 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = 0;
            for (int i8 = this.f7455a; i8 <= this.f7456b; i8++) {
                int i9 = iArr[i8];
                i7 += iArr2[i9];
                int g = C1890a.m31798g(i9);
                int f = C1890a.m31799f(i9);
                int e = C1890a.m31800e(i9);
                i4 = i4;
                if (g > i4) {
                    i4 = g;
                }
                i = i;
                if (g < i) {
                    i = g;
                }
                i5 = i5;
                if (f > i5) {
                    i5 = f;
                }
                i2 = i2;
                if (f < i2) {
                    i2 = f;
                }
                i6 = i6;
                if (e > i6) {
                    i6 = e;
                }
                i3 = i3;
                if (e < i3) {
                    i3 = e;
                }
            }
            this.f7458d = i;
            this.f7459e = i4;
            this.f7460f = i2;
            this.f7461g = i5;
            this.f7462h = i3;
            this.f7463i = i6;
            this.f7457c = i7;
        }

        /* renamed from: d */
        public final C1893b.C1899e m31793d() {
            C1890a aVar = C1890a.this;
            int[] iArr = aVar.f7450a;
            int[] iArr2 = aVar.f7451b;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = this.f7455a; i5 <= this.f7456b; i5++) {
                int i6 = iArr[i5];
                int i7 = iArr2[i6];
                i2 += i7;
                i += C1890a.m31798g(i6) * i7;
                i3 += C1890a.m31799f(i6) * i7;
                i4 += i7 * C1890a.m31800e(i6);
            }
            float f = i2;
            return new C1893b.C1899e(C1890a.m31810a(Math.round(i / f), Math.round(i3 / f), Math.round(i4 / f)), i2);
        }

        /* renamed from: e */
        public final int m31792e() {
            return (this.f7456b + 1) - this.f7455a;
        }

        /* renamed from: f */
        public final int m31791f() {
            int i = this.f7459e - this.f7458d;
            int i2 = this.f7461g - this.f7460f;
            int i3 = this.f7463i - this.f7462h;
            if (i < i2 || i < i3) {
                return (i2 < i || i2 < i3) ? -1 : -2;
            }
            return -3;
        }

        /* renamed from: g */
        public final int m31790g() {
            return ((this.f7459e - this.f7458d) + 1) * ((this.f7461g - this.f7460f) + 1) * ((this.f7463i - this.f7462h) + 1);
        }

        /* renamed from: h */
        public final C1892b m31789h() {
            if (m31796a()) {
                int b = m31795b();
                C1892b bVar = new C1892b(b + 1, this.f7456b);
                this.f7456b = b;
                m31794c();
                return bVar;
            }
            throw new IllegalStateException("Can not split a box with only 1 color");
        }
    }

    public C1890a(int[] iArr, int i, C1893b.AbstractC1897c[] cVarArr) {
        this.f7453d = cVarArr;
        int[] iArr2 = new int[RegularImmutableMap.SHORT_MAX_SIZE];
        this.f7451b = iArr2;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int d = m31801d(iArr[i2]);
            iArr[i2] = d;
            iArr2[d] = iArr2[d] + 1;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < 32768; i4++) {
            if (iArr2[i4] > 0 && m31804b(i4)) {
                iArr2[i4] = 0;
            }
            i3 = i3;
            if (iArr2[i4] > 0) {
                i3++;
            }
        }
        int[] iArr3 = new int[i3];
        this.f7450a = iArr3;
        int i5 = 0;
        for (int i6 = 0; i6 < 32768; i6++) {
            i5 = i5;
            if (iArr2[i6] > 0) {
                iArr3[i5] = i6;
                i5++;
            }
        }
        if (i3 <= i) {
            this.f7452c = new ArrayList();
            for (int i7 = 0; i7 < i3; i7++) {
                int i8 = iArr3[i7];
                this.f7452c.add(new C1893b.C1899e(m31802c(i8), iArr2[i8]));
            }
            return;
        }
        this.f7452c = m31811a(i);
    }

    /* renamed from: a */
    public static int m31810a(int i, int i2, int i3) {
        return Color.rgb(m31803b(i, 5, 8), m31803b(i2, 5, 8), m31803b(i3, 5, 8));
    }

    /* renamed from: a */
    public static void m31805a(int[] iArr, int i, int i2, int i3) {
        if (i == -2) {
            for (int i4 = i2; i4 <= i3; i4++) {
                int i5 = iArr[i4];
                iArr[i4] = m31800e(i5) | (m31799f(i5) << 10) | (m31798g(i5) << 5);
            }
        } else if (i == -1) {
            while (i2 <= i3) {
                int i6 = iArr[i2];
                iArr[i2] = m31798g(i6) | (m31800e(i6) << 10) | (m31799f(i6) << 5);
                i2++;
            }
        }
    }

    /* renamed from: b */
    public static int m31803b(int i, int i2, int i3) {
        return (i3 > i2 ? i << (i3 - i2) : i >> (i2 - i3)) & ((1 << i3) - 1);
    }

    /* renamed from: c */
    public static int m31802c(int i) {
        return m31810a(m31798g(i), m31799f(i), m31800e(i));
    }

    /* renamed from: d */
    public static int m31801d(int i) {
        return m31803b(Color.blue(i), 8, 5) | (m31803b(Color.red(i), 8, 5) << 10) | (m31803b(Color.green(i), 8, 5) << 5);
    }

    /* renamed from: e */
    public static int m31800e(int i) {
        return i & 31;
    }

    /* renamed from: f */
    public static int m31799f(int i) {
        return (i >> 5) & 31;
    }

    /* renamed from: g */
    public static int m31798g(int i) {
        return (i >> 10) & 31;
    }

    /* renamed from: a */
    public List<C1893b.C1899e> m31812a() {
        return this.f7452c;
    }

    /* renamed from: a */
    public final List<C1893b.C1899e> m31811a(int i) {
        PriorityQueue<C1892b> priorityQueue = new PriorityQueue<>(i, f7449f);
        priorityQueue.offer(new C1892b(0, this.f7450a.length - 1));
        m31806a(priorityQueue, i);
        return m31807a(priorityQueue);
    }

    /* renamed from: a */
    public final List<C1893b.C1899e> m31807a(Collection<C1892b> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (C1892b bVar : collection) {
            C1893b.C1899e d = bVar.m31793d();
            if (!m31808a(d)) {
                arrayList.add(d);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m31806a(PriorityQueue<C1892b> priorityQueue, int i) {
        C1892b poll;
        while (priorityQueue.size() < i && (poll = priorityQueue.poll()) != null && poll.m31796a()) {
            priorityQueue.offer(poll.m31789h());
            priorityQueue.offer(poll);
        }
    }

    /* renamed from: a */
    public final boolean m31809a(int i, float[] fArr) {
        C1893b.AbstractC1897c[] cVarArr = this.f7453d;
        if (cVarArr == null || cVarArr.length <= 0) {
            return false;
        }
        int length = cVarArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (!this.f7453d[i2].mo31771a(i, fArr)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m31808a(C1893b.C1899e eVar) {
        return m31809a(eVar.m31765e(), eVar.m31767c());
    }

    /* renamed from: b */
    public final boolean m31804b(int i) {
        int c = m31802c(i);
        C0891b.m35604a(c, this.f7454e);
        return m31809a(c, this.f7454e);
    }
}
