package p081h.p203i.p204a.p223d;

import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.flexbox.FlexItem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* renamed from: h.i.a.d.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/d/c.class */
public class C6705c {

    /* renamed from: a */
    public final AbstractC6703a f16598a;

    /* renamed from: b */
    public boolean[] f16599b;
    @Nullable

    /* renamed from: c */
    public int[] f16600c;
    @Nullable

    /* renamed from: d */
    public long[] f16601d;
    @Nullable

    /* renamed from: e */
    public long[] f16602e;

    /* renamed from: h.i.a.d.c$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/d/c$b.class */
    public static class C6707b {

        /* renamed from: a */
        public List<C6704b> f16603a;

        /* renamed from: b */
        public int f16604b;

        /* renamed from: a */
        public void m21986a() {
            this.f16603a = null;
            this.f16604b = 0;
        }
    }

    /* renamed from: h.i.a.d.c$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/d/c$c.class */
    public static class C6708c implements Comparable<C6708c> {

        /* renamed from: a */
        public int f16605a;

        /* renamed from: b */
        public int f16606b;

        public C6708c() {
        }

        /* renamed from: a */
        public int compareTo(@NonNull C6708c cVar) {
            int i = this.f16606b;
            int i2 = cVar.f16606b;
            return i != i2 ? i - i2 : this.f16605a - cVar.f16605a;
        }

        public String toString() {
            return "Order{order=" + this.f16606b + ", index=" + this.f16605a + '}';
        }
    }

    public C6705c(AbstractC6703a aVar) {
        this.f16598a = aVar;
    }

    /* renamed from: a */
    public final int m22030a(int i, FlexItem flexItem, int i2) {
        int i3;
        AbstractC6703a aVar = this.f16598a;
        int b = aVar.mo22049b(i, aVar.getPaddingTop() + this.f16598a.getPaddingBottom() + flexItem.mo32147g() + flexItem.mo32142l() + i2, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(b);
        if (size > flexItem.mo32138p()) {
            i3 = View.MeasureSpec.makeMeasureSpec(flexItem.mo32138p(), View.MeasureSpec.getMode(b));
        } else {
            i3 = b;
            if (size < flexItem.mo32139o()) {
                i3 = View.MeasureSpec.makeMeasureSpec(flexItem.mo32139o(), View.MeasureSpec.getMode(b));
            }
        }
        return i3;
    }

    /* renamed from: a */
    public int m22028a(long j) {
        return (int) (j >> 32);
    }

    /* renamed from: a */
    public final int m22020a(View view, boolean z) {
        return z ? view.getMeasuredHeight() : view.getMeasuredWidth();
    }

    /* renamed from: a */
    public final int m22019a(FlexItem flexItem, boolean z) {
        return z ? flexItem.mo32142l() : flexItem.getMarginEnd();
    }

    /* renamed from: a */
    public final int m22012a(boolean z) {
        return z ? this.f16598a.getPaddingBottom() : this.f16598a.getPaddingEnd();
    }

    @NonNull
    /* renamed from: a */
    public final List<C6708c> m22036a(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            FlexItem flexItem = (FlexItem) this.f16598a.mo22059a(i2).getLayoutParams();
            C6708c cVar = new C6708c();
            cVar.f16606b = flexItem.getOrder();
            cVar.f16605a = i2;
            arrayList.add(cVar);
        }
        return arrayList;
    }

    /* renamed from: a */
    public final List<C6704b> m22014a(List<C6704b> list, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        C6704b bVar = new C6704b();
        bVar.f16588g = (i - i2) / 2;
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            if (i3 == 0) {
                arrayList.add(bVar);
            }
            arrayList.add(list.get(i3));
            if (i3 == list.size() - 1) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m22037a() {
        m21988f(0);
    }

    /* renamed from: a */
    public void m22035a(int i, int i2) {
        m22009b(i, i2, 0);
    }

    /* renamed from: a */
    public void m22034a(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int b = this.f16598a.mo22051b();
        if (b == 0 || b == 1) {
            i4 = View.MeasureSpec.getMode(i2);
            i5 = View.MeasureSpec.getSize(i2);
        } else if (b == 2 || b == 3) {
            i4 = View.MeasureSpec.getMode(i);
            i5 = View.MeasureSpec.getSize(i);
        } else {
            throw new IllegalArgumentException("Invalid flex direction: " + b);
        }
        List<C6704b> d = this.f16598a.mo22047d();
        if (i4 == 1073741824) {
            int h = this.f16598a.mo22043h() + i3;
            if (d.size() == 1) {
                d.get(0).f16588g = i5 - i3;
            } else if (d.size() >= 2) {
                int e = this.f16598a.mo22046e();
                if (e == 1) {
                    C6704b bVar = new C6704b();
                    bVar.f16588g = i5 - h;
                    d.add(0, bVar);
                } else if (e == 2) {
                    this.f16598a.mo22052a(m22014a(d, i5, h));
                } else if (e != 3) {
                    if (e != 4) {
                        if (e == 5 && h < i5) {
                            float size = (i5 - h) / d.size();
                            int size2 = d.size();
                            float f = 0.0f;
                            for (int i7 = 0; i7 < size2; i7++) {
                                C6704b bVar2 = d.get(i7);
                                float f2 = bVar2.f16588g + size;
                                float f3 = f2;
                                float f4 = f;
                                if (i7 == d.size() - 1) {
                                    f3 = f2 + f;
                                    f4 = 0.0f;
                                }
                                int round = Math.round(f3);
                                float f5 = f4 + (f3 - round);
                                if (f5 > 1.0f) {
                                    i6 = round + 1;
                                    f = f5 - 1.0f;
                                } else {
                                    i6 = round;
                                    f = f5;
                                    if (f5 < -1.0f) {
                                        i6 = round - 1;
                                        f = f5 + 1.0f;
                                    }
                                }
                                bVar2.f16588g = i6;
                            }
                        }
                    } else if (h >= i5) {
                        this.f16598a.mo22052a(m22014a(d, i5, h));
                    } else {
                        int size3 = (i5 - h) / (d.size() * 2);
                        ArrayList arrayList = new ArrayList();
                        C6704b bVar3 = new C6704b();
                        bVar3.f16588g = size3;
                        for (C6704b bVar4 : d) {
                            arrayList.add(bVar3);
                            arrayList.add(bVar4);
                            arrayList.add(bVar3);
                        }
                        this.f16598a.mo22052a(arrayList);
                    }
                } else if (h < i5) {
                    float size4 = (i5 - h) / (d.size() - 1);
                    ArrayList arrayList2 = new ArrayList();
                    int size5 = d.size();
                    float f6 = 0.0f;
                    for (int i8 = 0; i8 < size5; i8++) {
                        arrayList2.add(d.get(i8));
                        f6 = f6;
                        if (i8 != d.size() - 1) {
                            C6704b bVar5 = new C6704b();
                            if (i8 == d.size() - 2) {
                                bVar5.f16588g = Math.round(f6 + size4);
                                f6 = 0.0f;
                            } else {
                                bVar5.f16588g = Math.round(size4);
                            }
                            int i9 = bVar5.f16588g;
                            float f7 = f6 + (size4 - i9);
                            if (f7 > 1.0f) {
                                bVar5.f16588g = i9 + 1;
                                f6 = f7 - 1.0f;
                            } else {
                                f6 = f7;
                                if (f7 < -1.0f) {
                                    bVar5.f16588g = i9 - 1;
                                    f6 = f7 + 1.0f;
                                }
                            }
                            arrayList2.add(bVar5);
                        }
                    }
                    this.f16598a.mo22052a(arrayList2);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m22033a(int i, int i2, int i3, View view) {
        long[] jArr = this.f16601d;
        if (jArr != null) {
            jArr[i] = m22010b(i2, i3);
        }
        long[] jArr2 = this.f16602e;
        if (jArr2 != null) {
            jArr2[i] = m22010b(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    /* renamed from: a */
    public final void m22031a(int i, int i2, C6704b bVar, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7;
        double d;
        int i8;
        double d2;
        float f = bVar.f16591j;
        if (f > 0.0f) {
            int i9 = bVar.f16586e;
            if (i3 >= i9) {
                float f2 = (i3 - i9) / f;
                bVar.f16586e = i4 + bVar.f16587f;
                if (!z) {
                    bVar.f16588g = Integer.MIN_VALUE;
                }
                boolean z2 = false;
                float f3 = 0.0f;
                int i10 = 0;
                for (int i11 = 0; i11 < bVar.f16589h; i11++) {
                    int i12 = bVar.f16596o + i11;
                    View b = this.f16598a.mo22050b(i12);
                    if (!(b == null || b.getVisibility() == 8)) {
                        FlexItem flexItem = (FlexItem) b.getLayoutParams();
                        int b2 = this.f16598a.mo22051b();
                        if (b2 == 0 || b2 == 1) {
                            int measuredWidth = b.getMeasuredWidth();
                            long[] jArr = this.f16602e;
                            if (jArr != null) {
                                measuredWidth = m22006b(jArr[i12]);
                            }
                            int measuredHeight = b.getMeasuredHeight();
                            long[] jArr2 = this.f16602e;
                            if (jArr2 != null) {
                                measuredHeight = m22028a(jArr2[i12]);
                            }
                            if (this.f16599b[i12] || flexItem.mo32146h() <= 0.0f) {
                                i6 = measuredWidth;
                            } else {
                                float h = measuredWidth + (flexItem.mo32146h() * f2);
                                float f4 = h;
                                float f5 = f3;
                                if (i11 == bVar.f16589h - 1) {
                                    f4 = h + f3;
                                    f5 = 0.0f;
                                }
                                int round = Math.round(f4);
                                if (round > flexItem.mo32143k()) {
                                    i7 = flexItem.mo32143k();
                                    this.f16599b[i12] = true;
                                    bVar.f16591j -= flexItem.mo32146h();
                                    z2 = true;
                                    f3 = f5;
                                } else {
                                    f3 = f5 + (f4 - round);
                                    double d3 = f3;
                                    if (d3 > 1.0d) {
                                        i7 = round + 1;
                                        d = d3 - 1.0d;
                                    } else {
                                        i7 = round;
                                        z2 = z2;
                                        if (d3 < -1.0d) {
                                            i7 = round - 1;
                                            d = d3 + 1.0d;
                                        }
                                    }
                                    f3 = (float) d;
                                    z2 = z2;
                                }
                                int a = m22030a(i2, flexItem, bVar.f16594m);
                                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                                b.measure(makeMeasureSpec, a);
                                i6 = b.getMeasuredWidth();
                                measuredHeight = b.getMeasuredHeight();
                                m22033a(i12, makeMeasureSpec, a, b);
                                this.f16598a.mo22057a(i12, b);
                            }
                            i5 = Math.max(i10, measuredHeight + flexItem.mo32147g() + flexItem.mo32142l() + this.f16598a.mo22056a(b));
                            bVar.f16586e += i6 + flexItem.mo32141m() + flexItem.mo32140n();
                            i9 = i9;
                        } else {
                            int measuredHeight2 = b.getMeasuredHeight();
                            long[] jArr3 = this.f16602e;
                            if (jArr3 != null) {
                                measuredHeight2 = m22028a(jArr3[i12]);
                            }
                            int measuredWidth2 = b.getMeasuredWidth();
                            long[] jArr4 = this.f16602e;
                            if (jArr4 != null) {
                                measuredWidth2 = m22006b(jArr4[i12]);
                            }
                            if (!this.f16599b[i12] && flexItem.mo32146h() > 0.0f) {
                                float h2 = measuredHeight2 + (flexItem.mo32146h() * f2);
                                float f6 = f3;
                                float f7 = h2;
                                if (i11 == bVar.f16589h - 1) {
                                    f7 = h2 + f3;
                                    f6 = 0.0f;
                                }
                                int round2 = Math.round(f7);
                                if (round2 > flexItem.mo32138p()) {
                                    i8 = flexItem.mo32138p();
                                    this.f16599b[i12] = true;
                                    bVar.f16591j -= flexItem.mo32146h();
                                    z2 = true;
                                    f3 = f6;
                                } else {
                                    f3 = f6 + (f7 - round2);
                                    double d4 = f3;
                                    if (d4 > 1.0d) {
                                        i8 = round2 + 1;
                                        d2 = d4 - 1.0d;
                                    } else {
                                        z2 = z2;
                                        i8 = round2;
                                        if (d4 < -1.0d) {
                                            i8 = round2 - 1;
                                            d2 = d4 + 1.0d;
                                        }
                                    }
                                    f3 = (float) d2;
                                    z2 = z2;
                                }
                                int b3 = m22007b(i, flexItem, bVar.f16594m);
                                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
                                b.measure(b3, makeMeasureSpec2);
                                measuredWidth2 = b.getMeasuredWidth();
                                measuredHeight2 = b.getMeasuredHeight();
                                m22033a(i12, b3, makeMeasureSpec2, b);
                                this.f16598a.mo22057a(i12, b);
                            }
                            i5 = Math.max(i10, measuredWidth2 + flexItem.mo32141m() + flexItem.mo32140n() + this.f16598a.mo22056a(b));
                            bVar.f16586e += measuredHeight2 + flexItem.mo32147g() + flexItem.mo32142l();
                        }
                        bVar.f16588g = Math.max(bVar.f16588g, i5);
                        i10 = i5;
                    }
                }
                if (z2 && i9 != bVar.f16586e) {
                    m22031a(i, i2, bVar, i3, i4, true);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m22026a(android.view.View r7, int r8) {
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
            int r0 = r0.mo32148f()
            r12 = r0
            r0 = 1
            r13 = r0
            r0 = r10
            r1 = r12
            if (r0 >= r1) goto L_0x003c
            r0 = r9
            int r0 = r0.mo32148f()
            r12 = r0
        L_0x002e:
            r0 = 1
            r14 = r0
            r0 = r12
            r10 = r0
            r0 = r14
            r12 = r0
            goto L_0x0055
        L_0x003c:
            r0 = r10
            r1 = r9
            int r1 = r1.mo32143k()
            if (r0 <= r1) goto L_0x0052
            r0 = r9
            int r0 = r0.mo32143k()
            r12 = r0
            goto L_0x002e
        L_0x0052:
            r0 = 0
            r12 = r0
        L_0x0055:
            r0 = r11
            r1 = r9
            int r1 = r1.mo32139o()
            if (r0 >= r1) goto L_0x006b
            r0 = r9
            int r0 = r0.mo32139o()
            r12 = r0
            goto L_0x0089
        L_0x006b:
            r0 = r11
            r1 = r9
            int r1 = r1.mo32138p()
            if (r0 <= r1) goto L_0x0081
            r0 = r9
            int r0 = r0.mo32138p()
            r12 = r0
            goto L_0x0089
        L_0x0081:
            r0 = r12
            r13 = r0
            r0 = r11
            r12 = r0
        L_0x0089:
            r0 = r13
            if (r0 == 0) goto L_0x00bd
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
            r0.m22033a(r1, r2, r3, r4)
            r0 = r6
            h.i.a.d.a r0 = r0.f16598a
            r1 = r8
            r2 = r7
            r0.mo22057a(r1, r2)
        L_0x00bd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p223d.C6705c.m22026a(android.view.View, int):void");
    }

    /* renamed from: a */
    public final void m22025a(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.mo32141m()) - flexItem.mo32140n()) - this.f16598a.mo22056a(view), flexItem.mo32148f()), flexItem.mo32143k());
        long[] jArr = this.f16602e;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? m22028a(jArr[i2]) : view.getMeasuredHeight(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        m22033a(i2, makeMeasureSpec2, makeMeasureSpec, view);
        this.f16598a.mo22057a(i2, view);
    }

    /* renamed from: a */
    public void m22022a(View view, C6704b bVar, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int g = this.f16598a.mo22044g();
        if (flexItem.mo32150d() != -1) {
            g = flexItem.mo32150d();
        }
        int i5 = bVar.f16588g;
        if (g != 0) {
            if (g != 1) {
                if (g == 2) {
                    int measuredHeight = (((i5 - view.getMeasuredHeight()) + flexItem.mo32147g()) - flexItem.mo32142l()) / 2;
                    if (this.f16598a.mo22045f() != 2) {
                        int i6 = i2 + measuredHeight;
                        view.layout(i, i6, i3, view.getMeasuredHeight() + i6);
                        return;
                    }
                    int i7 = i2 - measuredHeight;
                    view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                    return;
                } else if (g != 3) {
                    if (g != 4) {
                        return;
                    }
                } else if (this.f16598a.mo22045f() != 2) {
                    int max = Math.max(bVar.f16593l - view.getBaseline(), flexItem.mo32147g());
                    view.layout(i, i2 + max, i3, i4 + max);
                    return;
                } else {
                    int max2 = Math.max((bVar.f16593l - view.getMeasuredHeight()) + view.getBaseline(), flexItem.mo32142l());
                    view.layout(i, i2 - max2, i3, i4 - max2);
                    return;
                }
            } else if (this.f16598a.mo22045f() != 2) {
                int i8 = i2 + i5;
                view.layout(i, (i8 - view.getMeasuredHeight()) - flexItem.mo32142l(), i3, i8 - flexItem.mo32142l());
                return;
            } else {
                view.layout(i, (i2 - i5) + view.getMeasuredHeight() + flexItem.mo32147g(), i3, (i4 - i5) + view.getMeasuredHeight() + flexItem.mo32147g());
                return;
            }
        }
        if (this.f16598a.mo22045f() != 2) {
            view.layout(i, i2 + flexItem.mo32147g(), i3, i4 + flexItem.mo32147g());
        } else {
            view.layout(i, i2 - flexItem.mo32142l(), i3, i4 - flexItem.mo32142l());
        }
    }

    /* renamed from: a */
    public void m22021a(View view, C6704b bVar, boolean z, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int g = this.f16598a.mo22044g();
        if (flexItem.mo32150d() != -1) {
            g = flexItem.mo32150d();
        }
        int i5 = bVar.f16588g;
        if (g != 0) {
            if (g != 1) {
                if (g == 2) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int measuredWidth = (((i5 - view.getMeasuredWidth()) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams)) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                    if (!z) {
                        view.layout(i + measuredWidth, i2, i3 + measuredWidth, i4);
                        return;
                    } else {
                        view.layout(i - measuredWidth, i2, i3 - measuredWidth, i4);
                        return;
                    }
                } else if (!(g == 3 || g == 4)) {
                    return;
                }
            } else if (!z) {
                view.layout(((i + i5) - view.getMeasuredWidth()) - flexItem.mo32140n(), i2, ((i3 + i5) - view.getMeasuredWidth()) - flexItem.mo32140n(), i4);
                return;
            } else {
                view.layout((i - i5) + view.getMeasuredWidth() + flexItem.mo32141m(), i2, (i3 - i5) + view.getMeasuredWidth() + flexItem.mo32141m(), i4);
                return;
            }
        }
        if (!z) {
            view.layout(i + flexItem.mo32141m(), i2, i3 + flexItem.mo32141m(), i4);
        } else {
            view.layout(i - flexItem.mo32140n(), i2, i3 - flexItem.mo32140n(), i4);
        }
    }

    /* renamed from: a */
    public void m22018a(C6707b bVar, int i, int i2) {
        m22017a(bVar, i, i2, Integer.MAX_VALUE, 0, -1, (List<C6704b>) null);
    }

    /* renamed from: a */
    public void m22017a(C6707b bVar, int i, int i2, int i3, int i4, int i5, @Nullable List<C6704b> list) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12 = i5;
        boolean i13 = this.f16598a.mo22042i();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        List<C6704b> arrayList = list == null ? new ArrayList<>() : list;
        bVar.f16603a = arrayList;
        boolean z = i12 == -1;
        int d = m21991d(i13);
        int b = m21999b(i13);
        int c = m21995c(i13);
        int a = m22012a(i13);
        C6704b bVar2 = new C6704b();
        bVar2.f16596o = i4;
        int i14 = b + d;
        bVar2.f16586e = i14;
        int a2 = this.f16598a.mo22060a();
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = Integer.MIN_VALUE;
        while (true) {
            if (i4 >= a2) {
                i6 = i16;
                break;
            }
            View b2 = this.f16598a.mo22050b(i4);
            if (b2 != null) {
                if (b2.getVisibility() != 8) {
                    FlexItem flexItem = (FlexItem) b2.getLayoutParams();
                    if (flexItem.mo32150d() == 4) {
                        bVar2.f16595n.add(Integer.valueOf(i4));
                    }
                    int f = m21987f(flexItem, i13);
                    int i19 = f;
                    if (flexItem.mo32145i() != -1.0f) {
                        i19 = f;
                        if (mode == 1073741824) {
                            i19 = Math.round(size * flexItem.mo32145i());
                        }
                    }
                    if (i13) {
                        i8 = this.f16598a.mo22058a(i, i14 + m21993d(flexItem, true) + m22002b(flexItem, true), i19);
                        int b3 = this.f16598a.mo22049b(i2, c + a + m21997c(flexItem, true) + m22019a(flexItem, true) + i15, m21989e(flexItem, true));
                        b2.measure(i8, b3);
                        m22033a(i4, i8, b3, b2);
                    } else {
                        int a3 = this.f16598a.mo22058a(i2, c + a + m21997c(flexItem, false) + m22019a(flexItem, false) + i15, m21989e(flexItem, false));
                        i8 = this.f16598a.mo22049b(i, m21993d(flexItem, false) + i14 + m22002b(flexItem, false), i19);
                        b2.measure(a3, i8);
                        m22033a(i4, a3, i8, b2);
                    }
                    this.f16598a.mo22057a(i4, b2);
                    m22026a(b2, i4);
                    i16 = ViewCompat.combineMeasuredStates(i16, ViewCompat.getMeasuredState(b2));
                    if (m22024a(b2, mode, size, bVar2.f16586e, m22002b(flexItem, i13) + m22003b(b2, i13) + m21993d(flexItem, i13), flexItem, i4, i17)) {
                        if (bVar2.m22038c() > 0) {
                            m22013a(arrayList, bVar2, i4 > 0 ? i4 - 1 : 0, i15);
                            i11 = bVar2.f16588g + i15;
                        } else {
                            i11 = i15;
                        }
                        if (i13) {
                            if (flexItem.getHeight() == -1) {
                                AbstractC6703a aVar = this.f16598a;
                                b2.measure(i8, aVar.mo22049b(i2, aVar.getPaddingTop() + this.f16598a.getPaddingBottom() + flexItem.mo32147g() + flexItem.mo32142l() + i11, flexItem.getHeight()));
                                m22026a(b2, i4);
                            }
                        } else if (flexItem.getWidth() == -1) {
                            AbstractC6703a aVar2 = this.f16598a;
                            b2.measure(aVar2.mo22058a(i2, aVar2.getPaddingLeft() + this.f16598a.getPaddingRight() + flexItem.mo32141m() + flexItem.mo32140n() + i11, flexItem.getWidth()), i8);
                            m22026a(b2, i4);
                        }
                        bVar2 = new C6704b();
                        bVar2.f16589h = 1;
                        bVar2.f16586e = i14;
                        bVar2.f16596o = i4;
                        i15 = i11;
                        i10 = Integer.MIN_VALUE;
                        i9 = 0;
                    } else {
                        bVar2.f16589h++;
                        i9 = i17 + 1;
                        i10 = i18;
                    }
                    i7 = i4;
                    int[] iArr = this.f16600c;
                    if (iArr != null) {
                        iArr[i7] = arrayList.size();
                    }
                    bVar2.f16586e += m22003b(b2, i13) + m21993d(flexItem, i13) + m22002b(flexItem, i13);
                    bVar2.f16591j += flexItem.mo32146h();
                    bVar2.f16592k += flexItem.mo32149e();
                    this.f16598a.mo22054a(b2, i7, i9, bVar2);
                    int max = Math.max(i10, m22020a(b2, i13) + m21997c(flexItem, i13) + m22019a(flexItem, i13) + this.f16598a.mo22056a(b2));
                    bVar2.f16588g = Math.max(bVar2.f16588g, max);
                    if (i13) {
                        if (this.f16598a.mo22045f() != 2) {
                            bVar2.f16593l = Math.max(bVar2.f16593l, b2.getBaseline() + flexItem.mo32147g());
                        } else {
                            bVar2.f16593l = Math.max(bVar2.f16593l, (b2.getMeasuredHeight() - b2.getBaseline()) + flexItem.mo32142l());
                        }
                    }
                    int i20 = i15;
                    if (m22032a(i7, a2, bVar2)) {
                        m22013a(arrayList, bVar2, i7, i15);
                        i20 = i15 + bVar2.f16588g;
                    }
                    if (i5 != -1 && arrayList.size() > 0 && arrayList.get(arrayList.size() - 1).f16597p >= i5 && i7 >= i5 && !z) {
                        i20 = -bVar2.m22041a();
                        z = true;
                    }
                    if (i20 > i3 && z) {
                        i6 = i16;
                        break;
                    }
                    i18 = max;
                    i17 = i9;
                    i12 = i5;
                    i15 = i20;
                    i4 = i7 + 1;
                } else {
                    bVar2.f16590i++;
                    bVar2.f16589h++;
                    if (m22032a(i4, a2, bVar2)) {
                        m22013a(arrayList, bVar2, i4, i15);
                    }
                }
            } else if (m22032a(i4, a2, bVar2)) {
                m22013a(arrayList, bVar2, i4, i15);
            }
            i7 = i4;
            i4 = i7 + 1;
        }
        bVar.f16604b = i6;
    }

    /* renamed from: a */
    public void m22016a(C6707b bVar, int i, int i2, int i3, int i4, @Nullable List<C6704b> list) {
        m22017a(bVar, i, i2, i3, i4, -1, list);
    }

    /* renamed from: a */
    public void m22015a(List<C6704b> list, int i) {
        int i2 = this.f16600c[i];
        int i3 = i2;
        if (i2 == -1) {
            i3 = 0;
        }
        for (int size = list.size() - 1; size >= i3; size--) {
            list.remove(size);
        }
        int[] iArr = this.f16600c;
        int length = iArr.length - 1;
        if (i > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i, length, -1);
        }
        long[] jArr = this.f16601d;
        int length2 = jArr.length - 1;
        if (i > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i, length2, 0L);
        }
    }

    /* renamed from: a */
    public final void m22013a(List<C6704b> list, C6704b bVar, int i, int i2) {
        bVar.f16594m = i2;
        this.f16598a.mo22053a(bVar);
        bVar.f16597p = i;
        list.add(bVar);
    }

    /* renamed from: a */
    public final boolean m22032a(int i, int i2, C6704b bVar) {
        boolean z = true;
        if (i != i2 - 1 || bVar.m22038c() == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m22024a(View view, int i, int i2, int i3, int i4, FlexItem flexItem, int i5, int i6) {
        if (this.f16598a.mo22045f() == 0) {
            return false;
        }
        boolean z = true;
        if (flexItem.mo32144j()) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        int a = this.f16598a.mo22055a(view, i5, i6);
        int i7 = i4;
        if (a > 0) {
            i7 = i4 + a;
        }
        if (i2 >= i3 + i7) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final int[] m22029a(int i, List<C6708c> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        int i2 = 0;
        for (C6708c cVar : list) {
            int i3 = cVar.f16605a;
            iArr[i2] = i3;
            sparseIntArray.append(i3, cVar.f16606b);
            i2++;
        }
        return iArr;
    }

    /* renamed from: a */
    public int[] m22027a(SparseIntArray sparseIntArray) {
        int a = this.f16598a.mo22060a();
        return m22029a(a, m22036a(a), sparseIntArray);
    }

    /* renamed from: a */
    public int[] m22023a(View view, int i, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int a = this.f16598a.mo22060a();
        List<C6708c> a2 = m22036a(a);
        C6708c cVar = new C6708c();
        if (view == null || !(layoutParams instanceof FlexItem)) {
            cVar.f16606b = 1;
        } else {
            cVar.f16606b = ((FlexItem) layoutParams).getOrder();
        }
        if (i == -1 || i == a) {
            cVar.f16605a = a;
        } else if (i < this.f16598a.mo22060a()) {
            cVar.f16605a = i;
            while (i < a) {
                a2.get(i).f16605a++;
                i++;
            }
        } else {
            cVar.f16605a = a;
        }
        a2.add(cVar);
        return m22029a(a + 1, a2, sparseIntArray);
    }

    /* renamed from: b */
    public final int m22007b(int i, FlexItem flexItem, int i2) {
        int i3;
        AbstractC6703a aVar = this.f16598a;
        int a = aVar.mo22058a(i, aVar.getPaddingLeft() + this.f16598a.getPaddingRight() + flexItem.mo32141m() + flexItem.mo32140n() + i2, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(a);
        if (size > flexItem.mo32143k()) {
            i3 = View.MeasureSpec.makeMeasureSpec(flexItem.mo32143k(), View.MeasureSpec.getMode(a));
        } else {
            i3 = a;
            if (size < flexItem.mo32148f()) {
                i3 = View.MeasureSpec.makeMeasureSpec(flexItem.mo32148f(), View.MeasureSpec.getMode(a));
            }
        }
        return i3;
    }

    /* renamed from: b */
    public int m22006b(long j) {
        return (int) j;
    }

    /* renamed from: b */
    public final int m22003b(View view, boolean z) {
        return z ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    /* renamed from: b */
    public final int m22002b(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginEnd() : flexItem.mo32142l();
    }

    /* renamed from: b */
    public final int m21999b(boolean z) {
        return z ? this.f16598a.getPaddingEnd() : this.f16598a.getPaddingBottom();
    }

    @VisibleForTesting
    /* renamed from: b */
    public long m22010b(int i, int i2) {
        return (i & 4294967295L) | (i2 << 32);
    }

    /* renamed from: b */
    public final void m22011b(int i) {
        boolean[] zArr = this.f16599b;
        if (zArr == null) {
            int i2 = i;
            if (i < 10) {
                i2 = 10;
            }
            this.f16599b = new boolean[i2];
        } else if (zArr.length < i) {
            int length = zArr.length * 2;
            int i3 = i;
            if (length >= i) {
                i3 = length;
            }
            this.f16599b = new boolean[i3];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    /* renamed from: b */
    public void m22009b(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        m22011b(this.f16598a.mo22060a());
        if (i3 < this.f16598a.mo22060a()) {
            int b = this.f16598a.mo22051b();
            int b2 = this.f16598a.mo22051b();
            if (b2 == 0 || b2 == 1) {
                int mode = View.MeasureSpec.getMode(i);
                i6 = View.MeasureSpec.getSize(i);
                if (mode != 1073741824) {
                    i6 = this.f16598a.mo22048c();
                }
                i5 = this.f16598a.getPaddingLeft();
                i4 = this.f16598a.getPaddingRight();
            } else if (b2 == 2 || b2 == 3) {
                int mode2 = View.MeasureSpec.getMode(i2);
                i6 = View.MeasureSpec.getSize(i2);
                if (mode2 != 1073741824) {
                    i6 = this.f16598a.mo22048c();
                }
                i5 = this.f16598a.getPaddingTop();
                i4 = this.f16598a.getPaddingBottom();
            } else {
                throw new IllegalArgumentException("Invalid flex direction: " + b);
            }
            int i7 = i5 + i4;
            int i8 = 0;
            int[] iArr = this.f16600c;
            if (iArr != null) {
                i8 = iArr[i3];
            }
            List<C6704b> d = this.f16598a.mo22047d();
            int size = d.size();
            while (i8 < size) {
                C6704b bVar = d.get(i8);
                if (bVar.f16586e < i6) {
                    m22031a(i, i2, bVar, i6, i7, false);
                } else {
                    m22008b(i, i2, bVar, i6, i7, false);
                }
                i8++;
            }
        }
    }

    /* renamed from: b */
    public final void m22008b(int i, int i2, C6704b bVar, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7;
        int i8 = bVar.f16586e;
        float f = bVar.f16592k;
        if (f > 0.0f && i3 <= i8) {
            float f2 = (i8 - i3) / f;
            bVar.f16586e = i4 + bVar.f16587f;
            if (!z) {
                bVar.f16588g = Integer.MIN_VALUE;
            }
            boolean z2 = false;
            float f3 = 0.0f;
            int i9 = 0;
            for (int i10 = 0; i10 < bVar.f16589h; i10++) {
                int i11 = bVar.f16596o + i10;
                View b = this.f16598a.mo22050b(i11);
                if (!(b == null || b.getVisibility() == 8)) {
                    FlexItem flexItem = (FlexItem) b.getLayoutParams();
                    int b2 = this.f16598a.mo22051b();
                    if (b2 == 0 || b2 == 1) {
                        int measuredWidth = b.getMeasuredWidth();
                        long[] jArr = this.f16602e;
                        if (jArr != null) {
                            measuredWidth = m22006b(jArr[i11]);
                        }
                        int measuredHeight = b.getMeasuredHeight();
                        long[] jArr2 = this.f16602e;
                        if (jArr2 != null) {
                            measuredHeight = m22028a(jArr2[i11]);
                        }
                        if (!this.f16599b[i11] && flexItem.mo32149e() > 0.0f) {
                            float e = measuredWidth - (flexItem.mo32149e() * f2);
                            float f4 = e;
                            float f5 = f3;
                            if (i10 == bVar.f16589h - 1) {
                                f4 = e + f3;
                                f5 = 0.0f;
                            }
                            int round = Math.round(f4);
                            if (round < flexItem.mo32148f()) {
                                i6 = flexItem.mo32148f();
                                this.f16599b[i11] = true;
                                bVar.f16592k -= flexItem.mo32149e();
                                z2 = true;
                                f3 = f5;
                            } else {
                                float f6 = f5 + (f4 - round);
                                double d = f6;
                                if (d > 1.0d) {
                                    i6 = round + 1;
                                    f3 = f6 - 1.0f;
                                    z2 = z2;
                                } else {
                                    i6 = round;
                                    z2 = z2;
                                    f3 = f6;
                                    if (d < -1.0d) {
                                        i6 = round - 1;
                                        f3 = f6 + 1.0f;
                                        z2 = z2;
                                    }
                                }
                            }
                            int a = m22030a(i2, flexItem, bVar.f16594m);
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
                            b.measure(makeMeasureSpec, a);
                            measuredWidth = b.getMeasuredWidth();
                            measuredHeight = b.getMeasuredHeight();
                            m22033a(i11, makeMeasureSpec, a, b);
                            this.f16598a.mo22057a(i11, b);
                        }
                        i5 = Math.max(i9, measuredHeight + flexItem.mo32147g() + flexItem.mo32142l() + this.f16598a.mo22056a(b));
                        bVar.f16586e += measuredWidth + flexItem.mo32141m() + flexItem.mo32140n();
                    } else {
                        int measuredHeight2 = b.getMeasuredHeight();
                        long[] jArr3 = this.f16602e;
                        if (jArr3 != null) {
                            measuredHeight2 = m22028a(jArr3[i11]);
                        }
                        int measuredWidth2 = b.getMeasuredWidth();
                        long[] jArr4 = this.f16602e;
                        if (jArr4 != null) {
                            measuredWidth2 = m22006b(jArr4[i11]);
                        }
                        if (!this.f16599b[i11] && flexItem.mo32149e() > 0.0f) {
                            float e2 = measuredHeight2 - (flexItem.mo32149e() * f2);
                            float f7 = f3;
                            float f8 = e2;
                            if (i10 == bVar.f16589h - 1) {
                                f8 = e2 + f3;
                                f7 = 0.0f;
                            }
                            int round2 = Math.round(f8);
                            if (round2 < flexItem.mo32139o()) {
                                i7 = flexItem.mo32139o();
                                this.f16599b[i11] = true;
                                bVar.f16592k -= flexItem.mo32149e();
                                z2 = true;
                                f3 = f7;
                            } else {
                                float f9 = f7 + (f8 - round2);
                                double d2 = f9;
                                if (d2 > 1.0d) {
                                    i7 = round2 + 1;
                                    f3 = f9 - 1.0f;
                                    z2 = z2;
                                } else {
                                    z2 = z2;
                                    f3 = f9;
                                    i7 = round2;
                                    if (d2 < -1.0d) {
                                        i7 = round2 - 1;
                                        f3 = f9 + 1.0f;
                                        z2 = z2;
                                    }
                                }
                            }
                            int b3 = m22007b(i, flexItem, bVar.f16594m);
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                            b.measure(b3, makeMeasureSpec2);
                            measuredWidth2 = b.getMeasuredWidth();
                            measuredHeight2 = b.getMeasuredHeight();
                            m22033a(i11, b3, makeMeasureSpec2, b);
                            this.f16598a.mo22057a(i11, b);
                        }
                        i5 = Math.max(i9, measuredWidth2 + flexItem.mo32141m() + flexItem.mo32140n() + this.f16598a.mo22056a(b));
                        bVar.f16586e += measuredHeight2 + flexItem.mo32147g() + flexItem.mo32142l();
                    }
                    bVar.f16588g = Math.max(bVar.f16588g, i5);
                    i9 = i5;
                }
            }
            if (z2 && i8 != bVar.f16586e) {
                m22008b(i, i2, bVar, i3, i4, true);
            }
        }
    }

    /* renamed from: b */
    public final void m22004b(View view, int i, int i2) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.mo32147g()) - flexItem.mo32142l()) - this.f16598a.mo22056a(view), flexItem.mo32139o()), flexItem.mo32138p());
        long[] jArr = this.f16602e;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? m22006b(jArr[i2]) : view.getMeasuredWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        m22033a(i2, makeMeasureSpec, makeMeasureSpec2, view);
        this.f16598a.mo22057a(i2, view);
    }

    /* renamed from: b */
    public void m22001b(C6707b bVar, int i, int i2) {
        m22017a(bVar, i2, i, Integer.MAX_VALUE, 0, -1, (List<C6704b>) null);
    }

    /* renamed from: b */
    public void m22000b(C6707b bVar, int i, int i2, int i3, int i4, List<C6704b> list) {
        m22017a(bVar, i, i2, i3, 0, i4, list);
    }

    /* renamed from: b */
    public boolean m22005b(SparseIntArray sparseIntArray) {
        int a = this.f16598a.mo22060a();
        if (sparseIntArray.size() != a) {
            return true;
        }
        for (int i = 0; i < a; i++) {
            View a2 = this.f16598a.mo22059a(i);
            if (!(a2 == null || ((FlexItem) a2.getLayoutParams()).getOrder() == sparseIntArray.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final int m21997c(FlexItem flexItem, boolean z) {
        return z ? flexItem.mo32147g() : flexItem.getMarginStart();
    }

    /* renamed from: c */
    public final int m21995c(boolean z) {
        return z ? this.f16598a.getPaddingTop() : this.f16598a.getPaddingStart();
    }

    /* renamed from: c */
    public void m21998c(int i) {
        int[] iArr = this.f16600c;
        if (iArr == null) {
            int i2 = i;
            if (i < 10) {
                i2 = 10;
            }
            this.f16600c = new int[i2];
        } else if (iArr.length < i) {
            int length = iArr.length * 2;
            int i3 = i;
            if (length >= i) {
                i3 = length;
            }
            this.f16600c = Arrays.copyOf(this.f16600c, i3);
        }
    }

    /* renamed from: c */
    public void m21996c(C6707b bVar, int i, int i2, int i3, int i4, @Nullable List<C6704b> list) {
        m22017a(bVar, i2, i, i3, i4, -1, list);
    }

    /* renamed from: d */
    public final int m21993d(FlexItem flexItem, boolean z) {
        return z ? flexItem.getMarginStart() : flexItem.mo32147g();
    }

    /* renamed from: d */
    public final int m21991d(boolean z) {
        return z ? this.f16598a.getPaddingStart() : this.f16598a.getPaddingTop();
    }

    /* renamed from: d */
    public void m21994d(int i) {
        long[] jArr = this.f16601d;
        if (jArr == null) {
            int i2 = i;
            if (i < 10) {
                i2 = 10;
            }
            this.f16601d = new long[i2];
        } else if (jArr.length < i) {
            int length = jArr.length * 2;
            int i3 = i;
            if (length >= i) {
                i3 = length;
            }
            this.f16601d = Arrays.copyOf(this.f16601d, i3);
        }
    }

    /* renamed from: d */
    public void m21992d(C6707b bVar, int i, int i2, int i3, int i4, List<C6704b> list) {
        m22017a(bVar, i2, i, i3, 0, i4, list);
    }

    /* renamed from: e */
    public final int m21989e(FlexItem flexItem, boolean z) {
        return z ? flexItem.getHeight() : flexItem.getWidth();
    }

    /* renamed from: e */
    public void m21990e(int i) {
        long[] jArr = this.f16602e;
        if (jArr == null) {
            int i2 = i;
            if (i < 10) {
                i2 = 10;
            }
            this.f16602e = new long[i2];
        } else if (jArr.length < i) {
            int length = jArr.length * 2;
            int i3 = i;
            if (length >= i) {
                i3 = length;
            }
            this.f16602e = Arrays.copyOf(this.f16602e, i3);
        }
    }

    /* renamed from: f */
    public final int m21987f(FlexItem flexItem, boolean z) {
        return z ? flexItem.getWidth() : flexItem.getHeight();
    }

    /* renamed from: f */
    public void m21988f(int i) {
        View b;
        if (i < this.f16598a.mo22060a()) {
            int b2 = this.f16598a.mo22051b();
            if (this.f16598a.mo22044g() == 4) {
                int[] iArr = this.f16600c;
                List<C6704b> d = this.f16598a.mo22047d();
                int size = d.size();
                for (int i2 = iArr != null ? iArr[i] : 0; i2 < size; i2++) {
                    C6704b bVar = d.get(i2);
                    int i3 = bVar.f16589h;
                    for (int i4 = 0; i4 < i3; i4++) {
                        int i5 = bVar.f16596o + i4;
                        if (!(i4 >= this.f16598a.mo22060a() || (b = this.f16598a.mo22050b(i5)) == null || b.getVisibility() == 8)) {
                            FlexItem flexItem = (FlexItem) b.getLayoutParams();
                            if (flexItem.mo32150d() == -1 || flexItem.mo32150d() == 4) {
                                if (b2 == 0 || b2 == 1) {
                                    m22004b(b, bVar.f16588g, i5);
                                } else if (b2 == 2 || b2 == 3) {
                                    m22025a(b, bVar.f16588g, i5);
                                } else {
                                    throw new IllegalArgumentException("Invalid flex direction: " + b2);
                                }
                            }
                        }
                    }
                }
                return;
            }
            for (C6704b bVar2 : this.f16598a.mo22047d()) {
                for (Integer num : bVar2.f16595n) {
                    View b3 = this.f16598a.mo22050b(num.intValue());
                    if (b2 == 0 || b2 == 1) {
                        m22004b(b3, bVar2.f16588g, num.intValue());
                    } else if (b2 == 2 || b2 == 3) {
                        m22025a(b3, bVar2.f16588g, num.intValue());
                    } else {
                        throw new IllegalArgumentException("Invalid flex direction: " + b2);
                    }
                }
            }
        }
    }
}
