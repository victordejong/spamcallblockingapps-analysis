package androidx.j.a;

import android.graphics.Color;
import android.util.TimingLogger;
import androidx.j.a.b;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/j/a/a.class */
public final class a {
    private static final Comparator<C0069a> g = new Comparator<C0069a>() { // from class: androidx.j.a.a.1
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(C0069a aVar, C0069a aVar2) {
            return aVar2.a() - aVar.a();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final int[] f2455a;

    /* renamed from: b  reason: collision with root package name */
    final int[] f2456b;

    /* renamed from: c  reason: collision with root package name */
    final List<b.d> f2457c;
    final b.AbstractC0070b[] e;
    private final float[] f = new float[3];

    /* renamed from: d  reason: collision with root package name */
    final TimingLogger f2458d = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.j.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/j/a/a$a.class */
    public final class C0069a {

        /* renamed from: a  reason: collision with root package name */
        int f2459a;

        /* renamed from: c  reason: collision with root package name */
        private int f2461c;

        /* renamed from: d  reason: collision with root package name */
        private int f2462d;
        private int e;
        private int f;
        private int g;
        private int h;
        private int i;
        private int j;

        C0069a(int i, int i2) {
            this.f2461c = i;
            this.f2459a = i2;
            c();
        }

        private int f() {
            return (this.f2459a + 1) - this.f2461c;
        }

        final int a() {
            return ((this.f - this.e) + 1) * ((this.h - this.g) + 1) * ((this.j - this.i) + 1);
        }

        final boolean b() {
            return f() > 1;
        }

        final void c() {
            int[] iArr = a.this.f2455a;
            int[] iArr2 = a.this.f2456b;
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MAX_VALUE;
            int i3 = Integer.MAX_VALUE;
            int i4 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            int i5 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            int i6 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            int i7 = 0;
            for (int i8 = this.f2461c; i8 <= this.f2459a; i8++) {
                int i9 = iArr[i8];
                i7 += iArr2[i9];
                int a2 = a.a(i9);
                int b2 = a.b(i9);
                int c2 = a.c(i9);
                i4 = i4;
                if (a2 > i4) {
                    i4 = a2;
                }
                i = i;
                if (a2 < i) {
                    i = a2;
                }
                i5 = i5;
                if (b2 > i5) {
                    i5 = b2;
                }
                i2 = i2;
                if (b2 < i2) {
                    i2 = b2;
                }
                i6 = i6;
                if (c2 > i6) {
                    i6 = c2;
                }
                i3 = i3;
                if (c2 < i3) {
                    i3 = c2;
                }
            }
            this.e = i;
            this.f = i4;
            this.g = i2;
            this.h = i5;
            this.i = i3;
            this.j = i6;
            this.f2462d = i7;
        }

        final int d() {
            int i = this.f - this.e;
            int i2 = this.h - this.g;
            int i3 = this.j - this.i;
            int i4 = (i < i2 || i < i3) ? (i2 < i || i2 < i3) ? -1 : -2 : -3;
            int[] iArr = a.this.f2455a;
            int[] iArr2 = a.this.f2456b;
            a.a(iArr, i4, this.f2461c, this.f2459a);
            Arrays.sort(iArr, this.f2461c, this.f2459a + 1);
            a.a(iArr, i4, this.f2461c, this.f2459a);
            int i5 = this.f2462d / 2;
            int i6 = this.f2461c;
            int i7 = 0;
            while (true) {
                int i8 = this.f2459a;
                if (i6 > i8) {
                    return this.f2461c;
                }
                i7 += iArr2[iArr[i6]];
                if (i7 >= i5) {
                    return Math.min(i8 - 1, i6);
                }
                i6++;
            }
        }

        final b.d e() {
            int[] iArr = a.this.f2455a;
            int[] iArr2 = a.this.f2456b;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = this.f2461c; i5 <= this.f2459a; i5++) {
                int i6 = iArr[i5];
                int i7 = iArr2[i6];
                i2 += i7;
                i += a.a(i6) * i7;
                i3 += a.b(i6) * i7;
                i4 += i7 * a.c(i6);
            }
            float f = i2;
            return new b.d(a.a(Math.round(i / f), Math.round(i3 / f), Math.round(i4 / f)), i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(int[] iArr, int i, b.AbstractC0070b[] bVarArr) {
        this.e = bVarArr;
        int[] iArr2 = new int[32768];
        this.f2456b = iArr2;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = iArr[i2];
            int b2 = b(Color.blue(i3), 8, 5) | (b(Color.red(i3), 8, 5) << 10) | (b(Color.green(i3), 8, 5) << 5);
            iArr[i2] = b2;
            iArr2[b2] = iArr2[b2] + 1;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < 32768; i5++) {
            if (iArr2[i5] > 0) {
                androidx.core.graphics.a.a(d(i5), this.f);
                if (a(this.f)) {
                    iArr2[i5] = 0;
                }
            }
            i4 = i4;
            if (iArr2[i5] > 0) {
                i4++;
            }
        }
        int[] iArr3 = new int[i4];
        this.f2455a = iArr3;
        int i6 = 0;
        for (int i7 = 0; i7 < 32768; i7++) {
            i6 = i6;
            if (iArr2[i7] > 0) {
                iArr3[i6] = i7;
                i6++;
            }
        }
        if (i4 <= i) {
            this.f2457c = new ArrayList();
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = iArr3[i8];
                this.f2457c.add(new b.d(d(i9), iArr2[i9]));
            }
            return;
        }
        PriorityQueue priorityQueue = new PriorityQueue(i, g);
        priorityQueue.offer(new C0069a(0, this.f2455a.length - 1));
        a(priorityQueue, i);
        this.f2457c = a(priorityQueue);
    }

    static int a(int i) {
        return (i >> 10) & 31;
    }

    static int a(int i, int i2, int i3) {
        return Color.rgb(b(i, 5, 8), b(i2, 5, 8), b(i3, 5, 8));
    }

    private List<b.d> a(Collection<C0069a> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (C0069a aVar : collection) {
            b.d e = aVar.e();
            if (!a(e.a())) {
                arrayList.add(e);
            }
        }
        return arrayList;
    }

    private static void a(PriorityQueue<C0069a> priorityQueue, int i) {
        C0069a poll;
        while (priorityQueue.size() < i && (poll = priorityQueue.poll()) != null && poll.b()) {
            if (poll.b()) {
                int d2 = poll.d();
                C0069a aVar = new C0069a(d2 + 1, poll.f2459a);
                poll.f2459a = d2;
                poll.c();
                priorityQueue.offer(aVar);
                priorityQueue.offer(poll);
            } else {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
        }
    }

    static void a(int[] iArr, int i, int i2, int i3) {
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

    private boolean a(float[] fArr) {
        b.AbstractC0070b[] bVarArr = this.e;
        if (bVarArr == null || bVarArr.length <= 0) {
            return false;
        }
        int length = bVarArr.length;
        for (int i = 0; i < length; i++) {
            if (!this.e[i].a(fArr)) {
                return true;
            }
        }
        return false;
    }

    static int b(int i) {
        return (i >> 5) & 31;
    }

    private static int b(int i, int i2, int i3) {
        return (i3 > i2 ? i << (i3 - i2) : i >> (i2 - i3)) & ((1 << i3) - 1);
    }

    static int c(int i) {
        return i & 31;
    }

    private static int d(int i) {
        return a((i >> 10) & 31, (i >> 5) & 31, i & 31);
    }
}
