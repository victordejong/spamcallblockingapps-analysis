package p193e.p1577m.p1578a.p1641e;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.flexbox.FlexItem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.e.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/e/c.class */
public class C24873c {

    /* renamed from: a */
    public final AbstractC24871a f69772a;

    /* renamed from: b */
    public boolean[] f69773b;

    /* renamed from: c */
    public int[] f69774c;

    /* renamed from: d */
    public long[] f69775d;

    /* renamed from: e */
    public long[] f69776e;

    /* renamed from: e.m.a.e.c$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/e/c$b.class */
    public static class C24875b {

        /* renamed from: a */
        public List<C24872b> f69777a;

        /* renamed from: b */
        public int f69778b;

        /* renamed from: a */
        public void m4303a() {
            this.f69777a = null;
            this.f69778b = 0;
        }
    }

    /* renamed from: e.m.a.e.c$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/e/c$c.class */
    public static class C24876c implements Comparable<C24876c> {

        /* renamed from: a */
        public int f69779a;

        /* renamed from: b */
        public int f69780b;

        public C24876c() {
        }

        public C24876c(C24874a c24874a) {
        }

        @Override // java.lang.Comparable
        public int compareTo(C24876c c24876c) {
            C24876c c24876c2 = c24876c;
            int i = this.f69780b;
            int i2 = c24876c2.f69780b;
            return i != i2 ? i - i2 : this.f69779a - c24876c2.f69779a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Order{order=");
            m8728C.append(this.f69780b);
            m8728C.append(", index=");
            return C22128a.m8701I2(m8728C, this.f69779a, '}');
        }
    }

    public C24873c(AbstractC24871a abstractC24871a) {
        this.f69772a = abstractC24871a;
    }

    /* renamed from: A */
    public void m4331A(int i) {
        View mo4339e;
        if (i >= this.f69772a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f69772a.getFlexDirection();
        if (this.f69772a.getAlignItems() != 4) {
            for (C24872b c24872b : this.f69772a.getFlexLinesInternal()) {
                for (Integer num : c24872b.f69767n) {
                    View mo4339e2 = this.f69772a.mo4339e(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        m4304z(mo4339e2, c24872b.f69760g, num.intValue());
                    } else if (flexDirection != 2 && flexDirection != 3) {
                        throw new IllegalArgumentException(C22128a.m8611i2("Invalid flex direction: ", flexDirection));
                    } else {
                        m4305y(mo4339e2, c24872b.f69760g, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = this.f69774c;
        List<C24872b> flexLinesInternal = this.f69772a.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i2 = iArr != null ? iArr[i] : 0; i2 < size; i2++) {
            C24872b c24872b2 = flexLinesInternal.get(i2);
            int i3 = c24872b2.f69761h;
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = c24872b2.f69768o + i4;
                if (i4 < this.f69772a.getFlexItemCount() && (mo4339e = this.f69772a.mo4339e(i5)) != null && mo4339e.getVisibility() != 8) {
                    FlexItem flexItem = (FlexItem) mo4339e.getLayoutParams();
                    if (flexItem.mo39148U0() == -1 || flexItem.mo39148U0() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            m4304z(mo4339e, c24872b2.f69760g, i5);
                        } else if (flexDirection != 2 && flexDirection != 3) {
                            throw new IllegalArgumentException(C22128a.m8611i2("Invalid flex direction: ", flexDirection));
                        } else {
                            m4305y(mo4339e, c24872b2.f69760g, i5);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: B */
    public final void m4330B(int i, int i2, int i3, View view) {
        long[] jArr = this.f69775d;
        if (jArr != null) {
            jArr[i] = (i2 & 4294967295L) | (i3 << 32);
        }
        long[] jArr2 = this.f69776e;
        if (jArr2 != null) {
            jArr2[i] = (view.getMeasuredWidth() & 4294967295L) | (view.getMeasuredHeight() << 32);
        }
    }

    /* renamed from: a */
    public final void m4329a(List<C24872b> list, C24872b c24872b, int i, int i2) {
        c24872b.f69766m = i2;
        this.f69772a.mo4336h(c24872b);
        c24872b.f69769p = i;
        list.add(c24872b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:91:0x044e, code lost:
        if (r0 < (r0 + r23)) goto L92;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x05b9  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x05bf  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x05df  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x05e6  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0616  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0620  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0689  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0693  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x06dd  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0750  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0463  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m4328b(p193e.p1577m.p1578a.p1641e.C24873c.C24875b r10, int r11, int r12, int r13, int r14, int r15, java.util.List<p193e.p1577m.p1578a.p1641e.C24872b> r16) {
        /*
            Method dump skipped, instructions count: 2041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1641e.C24873c.m4328b(e.m.a.e.c$b, int, int, int, int, int, java.util.List):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4327c(android.view.View r7, int r8) {
        /*
            r6 = this;
            r0 = r7
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            com.google.android.flexbox.FlexItem r0 = (com.google.android.flexbox.FlexItem) r0
            r9 = r0
            r0 = r7
            int r0 = r0.getMeasuredWidth()
            r10 = r0
            r0 = r7
            int r0 = r0.getMeasuredHeight()
            r11 = r0
            r0 = r9
            int r0 = r0.mo39151K()
            r12 = r0
            r0 = 1
            r13 = r0
            r0 = r10
            r1 = r12
            if (r0 >= r1) goto L31
            r0 = r9
            int r0 = r0.mo39151K()
            r12 = r0
            goto L44
        L31:
            r0 = r10
            r1 = r9
            int r1 = r1.mo39152B1()
            if (r0 <= r1) goto L52
            r0 = r9
            int r0 = r0.mo39152B1()
            r12 = r0
        L44:
            r0 = 1
            r14 = r0
            r0 = r12
            r10 = r0
            r0 = r14
            r12 = r0
            goto L55
        L52:
            r0 = 0
            r12 = r0
        L55:
            r0 = r11
            r1 = r9
            int r1 = r1.mo39145b2()
            if (r0 >= r1) goto L6b
            r0 = r9
            int r0 = r0.mo39145b2()
            r12 = r0
            goto L89
        L6b:
            r0 = r11
            r1 = r9
            int r1 = r1.mo39144h2()
            if (r0 <= r1) goto L81
            r0 = r9
            int r0 = r0.mo39144h2()
            r12 = r0
            goto L89
        L81:
            r0 = r12
            r13 = r0
            r0 = r11
            r12 = r0
        L89:
            r0 = r13
            if (r0 == 0) goto Lbd
            r0 = r10
            r1 = 1073741824(0x40000000, float:2.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r10 = r0
            r0 = r12
            r1 = 1073741824(0x40000000, float:2.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r12 = r0
            r0 = r7
            r1 = r10
            r2 = r12
            r0.measure(r1, r2)
            r0 = r6
            r1 = r8
            r2 = r10
            r3 = r12
            r4 = r7
            r0.m4330B(r1, r2, r3, r4)
            r0 = r6
            e.m.a.e.a r0 = r0.f69772a
            r1 = r8
            r2 = r7
            r0.mo4335i(r1, r2)
        Lbd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1641e.C24873c.m4327c(android.view.View, int):void");
    }

    /* renamed from: d */
    public void m4326d(List<C24872b> list, int i) {
        int i2 = this.f69774c[i];
        int i3 = i2;
        if (i2 == -1) {
            i3 = 0;
        }
        for (int size = list.size() - 1; size >= i3; size--) {
            list.remove(size);
        }
        int[] iArr = this.f69774c;
        int length = iArr.length - 1;
        if (i > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i, length, -1);
        }
        long[] jArr = this.f69775d;
        int length2 = jArr.length - 1;
        if (i > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i, length2, 0L);
        }
    }

    /* renamed from: e */
    public final List<C24872b> m4325e(List<C24872b> list, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        C24872b c24872b = new C24872b();
        c24872b.f69760g = (i - i2) / 2;
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (i3 == 0) {
                arrayList.add(c24872b);
            }
            arrayList.add(list.get(i3));
            if (i3 == list.size() - 1) {
                arrayList.add(c24872b);
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public final List<C24876c> m4324f(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            FlexItem flexItem = (FlexItem) this.f69772a.mo4342b(i2).getLayoutParams();
            C24876c c24876c = new C24876c(null);
            c24876c.f69780b = flexItem.getOrder();
            c24876c.f69779a = i2;
            arrayList.add(c24876c);
        }
        return arrayList;
    }

    /* renamed from: g */
    public void m4323g(int i, int i2, int i3) {
        int i4;
        int i5;
        float f;
        int i6;
        int flexDirection = this.f69772a.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            i4 = mode;
            i5 = size;
        } else if (flexDirection != 2 && flexDirection != 3) {
            throw new IllegalArgumentException(C22128a.m8611i2("Invalid flex direction: ", flexDirection));
        } else {
            i4 = View.MeasureSpec.getMode(i);
            i5 = View.MeasureSpec.getSize(i);
        }
        List<C24872b> flexLinesInternal = this.f69772a.getFlexLinesInternal();
        if (i4 == 1073741824) {
            int sumOfCrossSize = this.f69772a.getSumOfCrossSize() + i3;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).f69760g = i5 - i3;
            } else if (flexLinesInternal.size() >= 2) {
                int alignContent = this.f69772a.getAlignContent();
                if (alignContent == 1) {
                    C24872b c24872b = new C24872b();
                    c24872b.f69760g = i5 - sumOfCrossSize;
                    flexLinesInternal.add(0, c24872b);
                } else if (alignContent == 2) {
                    this.f69772a.setFlexLines(m4325e(flexLinesInternal, i5, sumOfCrossSize));
                } else if (alignContent == 3) {
                    if (sumOfCrossSize >= i5) {
                        return;
                    }
                    float size2 = (i5 - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size3 = flexLinesInternal.size();
                    float f2 = 0.0f;
                    int i7 = 0;
                    while (i7 < size3) {
                        arrayList.add(flexLinesInternal.get(i7));
                        float f3 = f2;
                        if (i7 != flexLinesInternal.size() - 1) {
                            C24872b c24872b2 = new C24872b();
                            if (i7 == flexLinesInternal.size() - 2) {
                                c24872b2.f69760g = Math.round(f2 + size2);
                                f2 = 0.0f;
                            } else {
                                c24872b2.f69760g = Math.round(size2);
                            }
                            int i8 = c24872b2.f69760g;
                            float f4 = (size2 - i8) + f2;
                            if (f4 > 1.0f) {
                                c24872b2.f69760g = i8 + 1;
                                f = f4 - 1.0f;
                            } else {
                                f = f4;
                                if (f4 < -1.0f) {
                                    c24872b2.f69760g = i8 - 1;
                                    f = f4 + 1.0f;
                                }
                            }
                            arrayList.add(c24872b2);
                            f3 = f;
                        }
                        i7++;
                        f2 = f3;
                    }
                    this.f69772a.setFlexLines(arrayList);
                } else if (alignContent == 4) {
                    if (sumOfCrossSize >= i5) {
                        this.f69772a.setFlexLines(m4325e(flexLinesInternal, i5, sumOfCrossSize));
                        return;
                    }
                    int size4 = (i5 - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    C24872b c24872b3 = new C24872b();
                    c24872b3.f69760g = size4;
                    for (C24872b c24872b4 : flexLinesInternal) {
                        arrayList2.add(c24872b3);
                        arrayList2.add(c24872b4);
                        arrayList2.add(c24872b3);
                    }
                    this.f69772a.setFlexLines(arrayList2);
                } else if (alignContent == 5 && sumOfCrossSize < i5) {
                    float size5 = (i5 - sumOfCrossSize) / flexLinesInternal.size();
                    int size6 = flexLinesInternal.size();
                    float f5 = 0.0f;
                    for (int i9 = 0; i9 < size6; i9++) {
                        C24872b c24872b5 = flexLinesInternal.get(i9);
                        float f6 = c24872b5.f69760g + size5;
                        float f7 = f6;
                        float f8 = f5;
                        if (i9 == flexLinesInternal.size() - 1) {
                            f7 = f6 + f5;
                            f8 = 0.0f;
                        }
                        int round = Math.round(f7);
                        float f9 = (f7 - round) + f8;
                        if (f9 > 1.0f) {
                            i6 = round + 1;
                            f5 = f9 - 1.0f;
                        } else {
                            f5 = f9;
                            i6 = round;
                            if (f9 < -1.0f) {
                                i6 = round - 1;
                                f5 = f9 + 1.0f;
                            }
                        }
                        c24872b5.f69760g = i6;
                    }
                }
            }
        }
    }

    /* renamed from: h */
    public void m4322h(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int flexItemCount = this.f69772a.getFlexItemCount();
        boolean[] zArr = this.f69773b;
        if (zArr == null) {
            int i7 = flexItemCount;
            if (flexItemCount < 10) {
                i7 = 10;
            }
            this.f69773b = new boolean[i7];
        } else if (zArr.length < flexItemCount) {
            int length = zArr.length * 2;
            int i8 = flexItemCount;
            if (length >= flexItemCount) {
                i8 = length;
            }
            this.f69773b = new boolean[i8];
        } else {
            Arrays.fill(zArr, false);
        }
        if (i3 >= this.f69772a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f69772a.getFlexDirection();
        int flexDirection2 = this.f69772a.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int largestMainSize = this.f69772a.getLargestMainSize();
            if (mode == 1073741824) {
                largestMainSize = size;
            } else if (largestMainSize > size) {
                largestMainSize = size;
            }
            i5 = this.f69772a.getPaddingLeft();
            i4 = this.f69772a.getPaddingRight();
            i6 = largestMainSize;
        } else if (flexDirection2 != 2 && flexDirection2 != 3) {
            throw new IllegalArgumentException(C22128a.m8611i2("Invalid flex direction: ", flexDirection));
        } else {
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                size2 = this.f69772a.getLargestMainSize();
            }
            i5 = this.f69772a.getPaddingTop();
            i4 = this.f69772a.getPaddingBottom();
            i6 = size2;
        }
        int i9 = i4 + i5;
        int[] iArr = this.f69774c;
        int i10 = 0;
        if (iArr != null) {
            i10 = iArr[i3];
        }
        List<C24872b> flexLinesInternal = this.f69772a.getFlexLinesInternal();
        int size3 = flexLinesInternal.size();
        while (i10 < size3) {
            C24872b c24872b = flexLinesInternal.get(i10);
            int i11 = c24872b.f69758e;
            if (i11 < i6 && c24872b.f69770q) {
                m4318l(i, i2, c24872b, i6, i9, false);
            } else if (i11 > i6 && c24872b.f69771r) {
                m4307w(i, i2, c24872b, i6, i9, false);
            }
            i10++;
        }
    }

    /* renamed from: i */
    public void m4321i(int i) {
        int[] iArr = this.f69774c;
        if (iArr == null) {
            int i2 = i;
            if (i < 10) {
                i2 = 10;
            }
            this.f69774c = new int[i2];
        } else if (iArr.length >= i) {
        } else {
            int length = iArr.length * 2;
            int i3 = i;
            if (length >= i) {
                i3 = length;
            }
            this.f69774c = Arrays.copyOf(iArr, i3);
        }
    }

    /* renamed from: j */
    public void m4320j(int i) {
        long[] jArr = this.f69775d;
        if (jArr == null) {
            int i2 = i;
            if (i < 10) {
                i2 = 10;
            }
            this.f69775d = new long[i2];
        } else if (jArr.length >= i) {
        } else {
            int length = jArr.length * 2;
            int i3 = i;
            if (length >= i) {
                i3 = length;
            }
            this.f69775d = Arrays.copyOf(jArr, i3);
        }
    }

    /* renamed from: k */
    public void m4319k(int i) {
        long[] jArr = this.f69776e;
        if (jArr == null) {
            int i2 = i;
            if (i < 10) {
                i2 = 10;
            }
            this.f69776e = new long[i2];
        } else if (jArr.length >= i) {
        } else {
            int length = jArr.length * 2;
            int i3 = i;
            if (length >= i) {
                i3 = length;
            }
            this.f69776e = Arrays.copyOf(jArr, i3);
        }
    }

    /* JADX WARN: Type inference failed for: r0v109, types: [double] */
    /* JADX WARN: Type inference failed for: r0v113, types: [double] */
    /* JADX WARN: Type inference failed for: r0v194, types: [double] */
    /* JADX WARN: Type inference failed for: r0v196, types: [double] */
    /* renamed from: l */
    public final void m4318l(int i, int i2, C24872b c24872b, int i3, int i4, boolean z) {
        int i5;
        int i6;
        char c;
        char c2;
        float f = c24872b.f69763j;
        if (f > 0.0f) {
            int i7 = c24872b.f69758e;
            if (i3 < i7) {
                return;
            }
            float f2 = (i3 - i7) / f;
            c24872b.f69758e = i4 + c24872b.f69759f;
            if (!z) {
                c24872b.f69760g = Integer.MIN_VALUE;
            }
            boolean z2 = false;
            int i8 = 0;
            float f3 = 0.0f;
            for (int i9 = 0; i9 < c24872b.f69761h; i9++) {
                int i10 = c24872b.f69768o + i9;
                View mo4339e = this.f69772a.mo4339e(i10);
                if (mo4339e != null && mo4339e.getVisibility() != 8) {
                    FlexItem flexItem = (FlexItem) mo4339e.getLayoutParams();
                    int flexDirection = this.f69772a.getFlexDirection();
                    if (flexDirection == 0 || flexDirection == 1) {
                        int measuredWidth = mo4339e.getMeasuredWidth();
                        long[] jArr = this.f69776e;
                        if (jArr != null) {
                            measuredWidth = (int) jArr[i10];
                        }
                        int measuredHeight = mo4339e.getMeasuredHeight();
                        long[] jArr2 = this.f69776e;
                        int i11 = i7;
                        int i12 = measuredHeight;
                        if (jArr2 != null) {
                            i12 = m4317m(jArr2[i10]);
                        }
                        if (!this.f69773b[i10] && flexItem.mo39142l1() > 0.0f) {
                            float mo39142l1 = (flexItem.mo39142l1() * f2) + measuredWidth;
                            float f4 = mo39142l1;
                            float f5 = f3;
                            if (i9 == c24872b.f69761h - 1) {
                                f4 = mo39142l1 + f3;
                                f5 = 0.0f;
                            }
                            int round = Math.round(f4);
                            if (round > flexItem.mo39152B1()) {
                                i6 = flexItem.mo39152B1();
                                this.f69773b[i10] = true;
                                c24872b.f69763j -= flexItem.mo39142l1();
                                z2 = true;
                                f3 = f5;
                            } else {
                                f3 = (f4 - round) + f5;
                                double d = f3;
                                if (d > 1.0d) {
                                    i6 = round + 1;
                                    c = d - 1.0d;
                                } else {
                                    i6 = round;
                                    if (d < -1.0d) {
                                        i6 = round - 1;
                                        c = d + 1.0d;
                                    }
                                }
                                f3 = c;
                            }
                            int m4316n = m4316n(i2, flexItem, c24872b.f69766m);
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                            mo4339e.measure(makeMeasureSpec, m4316n);
                            measuredWidth = mo4339e.getMeasuredWidth();
                            i12 = mo4339e.getMeasuredHeight();
                            m4330B(i10, makeMeasureSpec, m4316n, mo4339e);
                            this.f69772a.mo4335i(i10, mo4339e);
                        }
                        int max = Math.max(i8, this.f69772a.mo4340d(mo4339e) + flexItem.mo39141n0() + flexItem.mo39150Q() + i12);
                        c24872b.f69758e = flexItem.mo39146Z1() + flexItem.mo39149R1() + measuredWidth + c24872b.f69758e;
                        i5 = max;
                        i7 = i11;
                    } else {
                        int measuredHeight2 = mo4339e.getMeasuredHeight();
                        long[] jArr3 = this.f69776e;
                        if (jArr3 != null) {
                            measuredHeight2 = m4317m(jArr3[i10]);
                        }
                        int measuredWidth2 = mo4339e.getMeasuredWidth();
                        long[] jArr4 = this.f69776e;
                        if (jArr4 != null) {
                            measuredWidth2 = (int) jArr4[i10];
                        }
                        if (!this.f69773b[i10] && flexItem.mo39142l1() > 0.0f) {
                            float mo39142l12 = (flexItem.mo39142l1() * f2) + measuredHeight2;
                            float f6 = f3;
                            float f7 = mo39142l12;
                            if (i9 == c24872b.f69761h - 1) {
                                f7 = mo39142l12 + f3;
                                f6 = 0.0f;
                            }
                            int round2 = Math.round(f7);
                            if (round2 > flexItem.mo39144h2()) {
                                round2 = flexItem.mo39144h2();
                                this.f69773b[i10] = true;
                                c24872b.f69763j -= flexItem.mo39142l1();
                                z2 = true;
                                f3 = f6;
                            } else {
                                f3 = (f7 - round2) + f6;
                                double d2 = f3;
                                if (d2 > 1.0d) {
                                    round2++;
                                    c2 = d2 - 1.0d;
                                } else if (d2 < -1.0d) {
                                    round2--;
                                    c2 = d2 + 1.0d;
                                }
                                f3 = c2;
                            }
                            int m4315o = m4315o(i, flexItem, c24872b.f69766m);
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                            mo4339e.measure(m4315o, makeMeasureSpec2);
                            measuredWidth2 = mo4339e.getMeasuredWidth();
                            measuredHeight2 = mo4339e.getMeasuredHeight();
                            m4330B(i10, m4315o, makeMeasureSpec2, mo4339e);
                            this.f69772a.mo4335i(i10, mo4339e);
                        }
                        int max2 = Math.max(i8, this.f69772a.mo4340d(mo4339e) + flexItem.mo39146Z1() + flexItem.mo39149R1() + measuredWidth2);
                        c24872b.f69758e = flexItem.mo39141n0() + flexItem.mo39150Q() + measuredHeight2 + c24872b.f69758e;
                        i5 = max2;
                    }
                    c24872b.f69760g = Math.max(c24872b.f69760g, i5);
                    i8 = i5;
                }
            }
            if (!z2 || i7 == c24872b.f69758e) {
                return;
            }
            m4318l(i, i2, c24872b, i3, i4, true);
        }
    }

    /* renamed from: m */
    public int m4317m(long j) {
        return (int) (j >> 32);
    }

    /* renamed from: n */
    public final int m4316n(int i, FlexItem flexItem, int i2) {
        int i3;
        AbstractC24871a abstractC24871a = this.f69772a;
        int paddingTop = abstractC24871a.getPaddingTop();
        int paddingBottom = this.f69772a.getPaddingBottom();
        int mo4341c = abstractC24871a.mo4341c(i, flexItem.mo39141n0() + flexItem.mo39150Q() + paddingBottom + paddingTop + i2, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(mo4341c);
        if (size > flexItem.mo39144h2()) {
            i3 = View.MeasureSpec.makeMeasureSpec(flexItem.mo39144h2(), View.MeasureSpec.getMode(mo4341c));
        } else {
            i3 = mo4341c;
            if (size < flexItem.mo39145b2()) {
                i3 = View.MeasureSpec.makeMeasureSpec(flexItem.mo39145b2(), View.MeasureSpec.getMode(mo4341c));
            }
        }
        return i3;
    }

    /* renamed from: o */
    public final int m4315o(int i, FlexItem flexItem, int i2) {
        int i3;
        AbstractC24871a abstractC24871a = this.f69772a;
        int paddingLeft = abstractC24871a.getPaddingLeft();
        int paddingRight = this.f69772a.getPaddingRight();
        int mo4337g = abstractC24871a.mo4337g(i, flexItem.mo39146Z1() + flexItem.mo39149R1() + paddingRight + paddingLeft + i2, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(mo4337g);
        if (size > flexItem.mo39152B1()) {
            i3 = View.MeasureSpec.makeMeasureSpec(flexItem.mo39152B1(), View.MeasureSpec.getMode(mo4337g));
        } else {
            i3 = mo4337g;
            if (size < flexItem.mo39151K()) {
                i3 = View.MeasureSpec.makeMeasureSpec(flexItem.mo39151K(), View.MeasureSpec.getMode(mo4337g));
            }
        }
        return i3;
    }

    /* renamed from: p */
    public final int m4314p(FlexItem flexItem, boolean z) {
        return z ? flexItem.mo39141n0() : flexItem.mo39146Z1();
    }

    /* renamed from: q */
    public final int m4313q(FlexItem flexItem, boolean z) {
        return z ? flexItem.mo39146Z1() : flexItem.mo39141n0();
    }

    /* renamed from: r */
    public final int m4312r(FlexItem flexItem, boolean z) {
        return z ? flexItem.mo39150Q() : flexItem.mo39149R1();
    }

    /* renamed from: s */
    public final int m4311s(FlexItem flexItem, boolean z) {
        return z ? flexItem.mo39149R1() : flexItem.mo39150Q();
    }

    /* renamed from: t */
    public final boolean m4310t(int i, int i2, C24872b c24872b) {
        boolean z = true;
        if (i != i2 - 1 || c24872b.m4333a() == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: u */
    public void m4309u(View view, C24872b c24872b, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f69772a.getAlignItems();
        if (flexItem.mo39148U0() != -1) {
            alignItems = flexItem.mo39148U0();
        }
        int i5 = c24872b.f69760g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.f69772a.getFlexWrap() != 2) {
                    int i6 = i2 + i5;
                    view.layout(i, (i6 - view.getMeasuredHeight()) - flexItem.mo39141n0(), i3, i6 - flexItem.mo39141n0());
                    return;
                }
                int measuredHeight = view.getMeasuredHeight();
                view.layout(i, flexItem.mo39150Q() + measuredHeight + (i2 - i5), i3, flexItem.mo39150Q() + view.getMeasuredHeight() + (i4 - i5));
                return;
            } else if (alignItems == 2) {
                int mo39150Q = ((flexItem.mo39150Q() + (i5 - view.getMeasuredHeight())) - flexItem.mo39141n0()) / 2;
                if (this.f69772a.getFlexWrap() != 2) {
                    int i7 = i2 + mo39150Q;
                    view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                    return;
                }
                int i8 = i2 - mo39150Q;
                view.layout(i, i8, i3, view.getMeasuredHeight() + i8);
                return;
            } else if (alignItems == 3) {
                if (this.f69772a.getFlexWrap() != 2) {
                    int max = Math.max(c24872b.f69765l - view.getBaseline(), flexItem.mo39150Q());
                    view.layout(i, i2 + max, i3, i4 + max);
                    return;
                }
                int max2 = Math.max(view.getBaseline() + (c24872b.f69765l - view.getMeasuredHeight()), flexItem.mo39141n0());
                view.layout(i, i2 - max2, i3, i4 - max2);
                return;
            } else if (alignItems != 4) {
                return;
            }
        }
        if (this.f69772a.getFlexWrap() != 2) {
            view.layout(i, flexItem.mo39150Q() + i2, i3, flexItem.mo39150Q() + i4);
        } else {
            view.layout(i, i2 - flexItem.mo39141n0(), i3, i4 - flexItem.mo39141n0());
        }
    }

    /* renamed from: v */
    public void m4308v(View view, C24872b c24872b, boolean z, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f69772a.getAlignItems();
        if (flexItem.mo39148U0() != -1) {
            alignItems = flexItem.mo39148U0();
        }
        int i5 = c24872b.f69760g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z) {
                    view.layout(((i + i5) - view.getMeasuredWidth()) - flexItem.mo39146Z1(), i2, ((i3 + i5) - view.getMeasuredWidth()) - flexItem.mo39146Z1(), i4);
                    return;
                }
                int measuredWidth = view.getMeasuredWidth();
                view.layout(flexItem.mo39149R1() + measuredWidth + (i - i5), i2, flexItem.mo39149R1() + view.getMeasuredWidth() + (i3 - i5), i4);
                return;
            } else if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth2 = (((i5 - view.getMeasuredWidth()) + marginLayoutParams.getMarginStart()) - marginLayoutParams.getMarginEnd()) / 2;
                if (!z) {
                    view.layout(i + measuredWidth2, i2, i3 + measuredWidth2, i4);
                    return;
                } else {
                    view.layout(i - measuredWidth2, i2, i3 - measuredWidth2, i4);
                    return;
                }
            } else if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (!z) {
            view.layout(flexItem.mo39149R1() + i, i2, flexItem.mo39149R1() + i3, i4);
        } else {
            view.layout(i - flexItem.mo39146Z1(), i2, i3 - flexItem.mo39146Z1(), i4);
        }
    }

    /* renamed from: w */
    public final void m4307w(int i, int i2, C24872b c24872b, int i3, int i4, boolean z) {
        int i5;
        int i6;
        float f;
        int i7;
        int i8 = c24872b.f69758e;
        float f2 = c24872b.f69764k;
        if (f2 <= 0.0f || i3 > i8) {
            return;
        }
        float f3 = (i8 - i3) / f2;
        c24872b.f69758e = i4 + c24872b.f69759f;
        if (!z) {
            c24872b.f69760g = Integer.MIN_VALUE;
        }
        boolean z2 = false;
        int i9 = 0;
        float f4 = 0.0f;
        for (int i10 = 0; i10 < c24872b.f69761h; i10++) {
            int i11 = c24872b.f69768o + i10;
            View mo4339e = this.f69772a.mo4339e(i11);
            if (mo4339e != null && mo4339e.getVisibility() != 8) {
                FlexItem flexItem = (FlexItem) mo4339e.getLayoutParams();
                int flexDirection = this.f69772a.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int measuredWidth = mo4339e.getMeasuredWidth();
                    long[] jArr = this.f69776e;
                    if (jArr != null) {
                        measuredWidth = (int) jArr[i11];
                    }
                    int measuredHeight = mo4339e.getMeasuredHeight();
                    long[] jArr2 = this.f69776e;
                    if (jArr2 != null) {
                        measuredHeight = m4317m(jArr2[i11]);
                    }
                    if (!this.f69773b[i11] && flexItem.mo39147W0() > 0.0f) {
                        float mo39147W0 = measuredWidth - (flexItem.mo39147W0() * f3);
                        float f5 = mo39147W0;
                        float f6 = f4;
                        if (i10 == c24872b.f69761h - 1) {
                            f5 = mo39147W0 + f4;
                            f6 = 0.0f;
                        }
                        int round = Math.round(f5);
                        if (round < flexItem.mo39151K()) {
                            i6 = flexItem.mo39151K();
                            this.f69773b[i11] = true;
                            c24872b.f69764k -= flexItem.mo39147W0();
                            z2 = true;
                        } else {
                            float f7 = (f5 - round) + f6;
                            double d = f7;
                            if (d > 1.0d) {
                                i6 = round + 1;
                                f = f7 - 1.0f;
                            } else {
                                f = f7;
                                i6 = round;
                                if (d < -1.0d) {
                                    i6 = round - 1;
                                    f = f7 + 1.0f;
                                }
                            }
                            f6 = f;
                        }
                        int m4316n = m4316n(i2, flexItem, c24872b.f69766m);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                        mo4339e.measure(makeMeasureSpec, m4316n);
                        measuredWidth = mo4339e.getMeasuredWidth();
                        measuredHeight = mo4339e.getMeasuredHeight();
                        m4330B(i11, makeMeasureSpec, m4316n, mo4339e);
                        this.f69772a.mo4335i(i11, mo4339e);
                        f4 = f6;
                    }
                    int max = Math.max(i9, this.f69772a.mo4340d(mo4339e) + flexItem.mo39141n0() + flexItem.mo39150Q() + measuredHeight);
                    c24872b.f69758e = flexItem.mo39146Z1() + flexItem.mo39149R1() + measuredWidth + c24872b.f69758e;
                    i5 = max;
                } else {
                    int measuredHeight2 = mo4339e.getMeasuredHeight();
                    long[] jArr3 = this.f69776e;
                    if (jArr3 != null) {
                        measuredHeight2 = m4317m(jArr3[i11]);
                    }
                    int measuredWidth2 = mo4339e.getMeasuredWidth();
                    long[] jArr4 = this.f69776e;
                    if (jArr4 != null) {
                        measuredWidth2 = (int) jArr4[i11];
                    }
                    if (!this.f69773b[i11] && flexItem.mo39147W0() > 0.0f) {
                        float mo39147W02 = measuredHeight2 - (flexItem.mo39147W0() * f3);
                        float f8 = f4;
                        float f9 = mo39147W02;
                        if (i10 == c24872b.f69761h - 1) {
                            f9 = mo39147W02 + f4;
                            f8 = 0.0f;
                        }
                        int round2 = Math.round(f9);
                        if (round2 < flexItem.mo39145b2()) {
                            i7 = flexItem.mo39145b2();
                            this.f69773b[i11] = true;
                            c24872b.f69764k -= flexItem.mo39147W0();
                            z2 = true;
                            f4 = f8;
                        } else {
                            float f10 = (f9 - round2) + f8;
                            double d2 = f10;
                            if (d2 > 1.0d) {
                                i7 = round2 + 1;
                                f4 = f10 - 1.0f;
                            } else {
                                f4 = f10;
                                i7 = round2;
                                if (d2 < -1.0d) {
                                    i7 = round2 - 1;
                                    f4 = f10 + 1.0f;
                                }
                            }
                        }
                        int m4315o = m4315o(i, flexItem, c24872b.f69766m);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                        mo4339e.measure(m4315o, makeMeasureSpec2);
                        measuredWidth2 = mo4339e.getMeasuredWidth();
                        measuredHeight2 = mo4339e.getMeasuredHeight();
                        m4330B(i11, m4315o, makeMeasureSpec2, mo4339e);
                        this.f69772a.mo4335i(i11, mo4339e);
                    }
                    int max2 = Math.max(i9, this.f69772a.mo4340d(mo4339e) + flexItem.mo39146Z1() + flexItem.mo39149R1() + measuredWidth2);
                    c24872b.f69758e = flexItem.mo39141n0() + flexItem.mo39150Q() + measuredHeight2 + c24872b.f69758e;
                    i5 = max2;
                }
                c24872b.f69760g = Math.max(c24872b.f69760g, i5);
                i9 = i5;
            }
        }
        if (!z2 || i8 == c24872b.f69758e) {
            return;
        }
        m4307w(i, i2, c24872b, i3, i4, true);
    }

    /* renamed from: x */
    public final int[] m4306x(int i, List<C24876c> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        int i2 = 0;
        for (C24876c c24876c : list) {
            int i3 = c24876c.f69779a;
            iArr[i2] = i3;
            sparseIntArray.append(i3, c24876c.f69780b);
            i2++;
        }
        return iArr;
    }

    /* renamed from: y */
    public final void m4305y(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.mo39149R1()) - flexItem.mo39146Z1()) - this.f69772a.mo4340d(view), flexItem.mo39151K()), flexItem.mo39152B1());
        long[] jArr = this.f69776e;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? m4317m(jArr[i2]) : view.getMeasuredHeight(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        m4330B(i2, makeMeasureSpec2, makeMeasureSpec, view);
        this.f69772a.mo4335i(i2, view);
    }

    /* renamed from: z */
    public final void m4304z(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.mo39150Q()) - flexItem.mo39141n0()) - this.f69772a.mo4340d(view), flexItem.mo39145b2()), flexItem.mo39144h2());
        long[] jArr = this.f69776e;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? (int) jArr[i2] : view.getMeasuredWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        m4330B(i2, makeMeasureSpec, makeMeasureSpec2, view);
        this.f69772a.mo4335i(i2, view);
    }
}
