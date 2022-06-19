package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.p038a.C0869c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager.class */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: c */
    int[] f9857c;

    /* renamed from: d */
    View[] f9858d;

    /* renamed from: z */
    private boolean f9863z;

    /* renamed from: a */
    boolean f9855a = false;

    /* renamed from: b */
    public int f9856b = -1;

    /* renamed from: e */
    final SparseIntArray f9859e = new SparseIntArray();

    /* renamed from: f */
    final SparseIntArray f9860f = new SparseIntArray();

    /* renamed from: g */
    AbstractC2613b f9861g = new C2612a();

    /* renamed from: h */
    final Rect f9862h = new Rect();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: a */
        int f9864a = -1;

        /* renamed from: b */
        int f9865b = 0;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$a.class */
    public static final class C2612a extends AbstractC2613b {
        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC2613b
        /* renamed from: a */
        public final int mo40548a(int i, int i2) {
            return i % i2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$b.class */
    public static abstract class AbstractC2613b {

        /* renamed from: a */
        final SparseIntArray f9866a = new SparseIntArray();

        /* renamed from: b */
        final SparseIntArray f9867b = new SparseIntArray();

        /* renamed from: c */
        private boolean f9868c = false;

        /* renamed from: d */
        private boolean f9869d = false;

        /* renamed from: a */
        private static int m40547a(SparseIntArray sparseIntArray, int i) {
            int size = sparseIntArray.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (sparseIntArray.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i4);
        }

        /* renamed from: d */
        private int m40544d(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            int m40547a;
            if (!this.f9869d || (m40547a = m40547a(this.f9867b, i)) == -1) {
                i4 = 0;
                i5 = 0;
                i3 = 0;
            } else {
                int i7 = this.f9867b.get(m40547a);
                int i8 = m40547a + 1;
                int m40546b = m40546b(m40547a, i2) + 1;
                i4 = m40546b;
                i5 = i7;
                i3 = i8;
                if (m40546b == i2) {
                    i5 = i7 + 1;
                    i4 = 0;
                    i3 = i8;
                }
            }
            while (i3 < i) {
                int i9 = i4 + 1;
                if (i9 == i2) {
                    i6 = i5 + 1;
                    i4 = 0;
                } else {
                    i4 = i9;
                    i6 = i5;
                    if (i9 > i2) {
                        i6 = i5 + 1;
                        i4 = 1;
                    }
                }
                i3++;
                i5 = i6;
            }
            int i10 = i5;
            if (i4 + 1 > i2) {
                i10 = i5 + 1;
            }
            return i10;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0067 A[RETURN] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo40548a(int r4, int r5) {
            /*
                r3 = this;
                r0 = 1
                r1 = r5
                if (r0 != r1) goto L7
                r0 = 0
                return r0
            L7:
                r0 = r3
                boolean r0 = r0.f9868c
                if (r0 == 0) goto L2d
                r0 = r3
                android.util.SparseIntArray r0 = r0.f9866a
                r1 = r4
                int r0 = m40547a(r0, r1)
                r6 = r0
                r0 = r6
                if (r0 < 0) goto L2d
                r0 = r3
                android.util.SparseIntArray r0 = r0.f9866a
                r1 = r6
                int r0 = r0.get(r1)
                r1 = 1
                int r0 = r0 + r1
                r7 = r0
                int r6 = r6 + 1
                goto L32
            L2d:
                r0 = 0
                r6 = r0
                r0 = 0
                r7 = r0
            L32:
                r0 = r6
                r1 = r4
                if (r0 >= r1) goto L5c
                r0 = r7
                r1 = 1
                int r0 = r0 + r1
                r8 = r0
                r0 = r8
                r1 = r5
                if (r0 != r1) goto L49
                r0 = 0
                r7 = r0
                goto L56
            L49:
                r0 = r8
                r7 = r0
                r0 = r8
                r1 = r5
                if (r0 <= r1) goto L56
                r0 = 1
                r7 = r0
            L56:
                int r6 = r6 + 1
                goto L32
            L5c:
                r0 = r7
                r1 = 1
                int r0 = r0 + r1
                r1 = r5
                if (r0 > r1) goto L67
                r0 = r7
                return r0
            L67:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.AbstractC2613b.mo40548a(int, int):int");
        }

        /* renamed from: b */
        final int m40546b(int i, int i2) {
            if (!this.f9868c) {
                return mo40548a(i, i2);
            }
            int i3 = this.f9866a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int mo40548a = mo40548a(i, i2);
            this.f9866a.put(i, mo40548a);
            return mo40548a;
        }

        /* renamed from: c */
        final int m40545c(int i, int i2) {
            if (!this.f9869d) {
                return m40544d(i, i2);
            }
            int i3 = this.f9867b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int m40544d = m40544d(i, i2);
            this.f9867b.put(i, m40544d);
            return m40544d;
        }
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        m40562a(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        m40562a(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m40562a(m40390a(context, attributeSet, i, i2).f10039b);
    }

    /* renamed from: a */
    private int m40559a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, int i) {
        if (!c2654s.f10079g) {
            return this.f9861g.m40545c(i, this.f9856b);
        }
        int m40337a = c2648o.m40337a(i);
        if (m40337a != -1) {
            return this.f9861g.m40545c(m40337a, this.f9856b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. ".concat(String.valueOf(i)));
        return 0;
    }

    /* renamed from: a */
    private void m40561a(View view, int i, int i2, boolean z) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z ? m40386a(view, i, i2, layoutParams) : m40372b(view, i, i2, layoutParams)) {
            view.measure(i, i2);
        }
    }

    /* renamed from: a */
    private void m40560a(View view, int i, boolean z) {
        int i2;
        int i3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.f10001d;
        int i4 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
        int i5 = rect.left + rect.right + layoutParams.leftMargin + layoutParams.rightMargin;
        int m40554g = m40554g(layoutParams.f9864a, layoutParams.f9865b);
        if (this.f9878i == 1) {
            i2 = m40393a(m40554g, i, i5, layoutParams.width, false);
            i3 = m40393a(this.f9879j.mo40064e(), getHeightMode(), i4, layoutParams.height, true);
        } else {
            i3 = m40393a(m40554g, i, i4, layoutParams.height, false);
            i2 = m40393a(this.f9879j.mo40064e(), getWidthMode(), i5, layoutParams.width, true);
        }
        m40561a(view, i2, i3, z);
    }

    /* renamed from: a */
    private void m40558a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, int i, boolean z) {
        int i2;
        int i3;
        int i4 = 0;
        int i5 = -1;
        if (z) {
            i2 = 1;
            i5 = i;
            i3 = 0;
        } else {
            i3 = i - 1;
            i2 = -1;
        }
        while (i3 != i5) {
            View view = this.f9858d[i3];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.f9865b = m40555c(c2648o, c2654s, m40366c(view));
            layoutParams.f9864a = i4;
            i4 += layoutParams.f9865b;
            i3 += i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r4[r4.length - 1] != r6) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] m40557a(int[] r4, int r5, int r6) {
        /*
            r0 = 1
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L1b
            r0 = r4
            int r0 = r0.length
            r1 = r5
            r2 = 1
            int r1 = r1 + r2
            if (r0 != r1) goto L1b
            r0 = r4
            r8 = r0
            r0 = r4
            r1 = r4
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r1 = r6
            if (r0 == r1) goto L22
        L1b:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            int[] r0 = new int[r0]
            r8 = r0
        L22:
            r0 = 0
            r9 = r0
            r0 = r8
            r1 = 0
            r2 = 0
            r0[r1] = r2
            r0 = r6
            r1 = r5
            int r0 = r0 / r1
            r10 = r0
            r0 = r6
            r1 = r5
            int r0 = r0 % r1
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r9
            r6 = r0
        L3a:
            r0 = r7
            r1 = r5
            if (r0 > r1) goto L74
            r0 = r6
            r1 = r11
            int r0 = r0 + r1
            r6 = r0
            r0 = r6
            if (r0 <= 0) goto L5d
            r0 = r5
            r1 = r6
            int r0 = r0 - r1
            r1 = r11
            if (r0 >= r1) goto L5d
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r6
            r1 = r5
            int r0 = r0 - r1
            r6 = r0
            goto L61
        L5d:
            r0 = r10
            r9 = r0
        L61:
            r0 = r12
            r1 = r9
            int r0 = r0 + r1
            r12 = r0
            r0 = r8
            r1 = r7
            r2 = r12
            r0[r1] = r2
            int r7 = r7 + 1
            goto L3a
        L74:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.m40557a(int[], int, int):int[]");
    }

    /* renamed from: b */
    private int m40556b(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, int i) {
        if (!c2654s.f10079g) {
            return this.f9861g.m40546b(i, this.f9856b);
        }
        int i2 = this.f9860f.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int m40337a = c2648o.m40337a(i);
        if (m40337a != -1) {
            return this.f9861g.m40546b(m40337a, this.f9856b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:".concat(String.valueOf(i)));
        return 0;
    }

    /* renamed from: c */
    private int m40555c(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, int i) {
        if (!c2654s.f10079g) {
            return 1;
        }
        int i2 = this.f9859e.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (c2648o.m40337a(i) != -1) {
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:".concat(String.valueOf(i)));
        return 1;
    }

    /* renamed from: g */
    private int m40554g(int i, int i2) {
        if (this.f9878i != 1 || !isLayoutRTL()) {
            int[] iArr = this.f9857c;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f9857c;
        int i3 = this.f9856b;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    /* renamed from: h */
    private int m40553h(RecyclerView.C2654s c2654s) {
        if (getChildCount() == 0 || c2654s.m40306a() == 0) {
            return 0;
        }
        m40525g();
        View a = m40532a(!isSmoothScrollbarEnabled());
        View b = m40529b(!isSmoothScrollbarEnabled());
        if (a == null || b == null) {
            return 0;
        }
        if (!isSmoothScrollbarEnabled()) {
            return this.f9861g.m40545c(c2654s.m40306a() - 1, this.f9856b) + 1;
        }
        int mo40069b = this.f9879j.mo40069b(b);
        int mo40071a = this.f9879j.mo40071a(a);
        int m40545c = this.f9861g.m40545c(m40366c(a), this.f9856b);
        return (int) (((mo40069b - mo40071a) / ((this.f9861g.m40545c(m40366c(b), this.f9856b) - m40545c) + 1)) * (this.f9861g.m40545c(c2654s.m40306a() - 1, this.f9856b) + 1));
    }

    /* renamed from: i */
    private int m40551i(RecyclerView.C2654s c2654s) {
        if (getChildCount() == 0 || c2654s.m40306a() == 0) {
            return 0;
        }
        m40525g();
        boolean isSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
        View a = m40532a(!isSmoothScrollbarEnabled);
        View b = m40529b(!isSmoothScrollbarEnabled);
        if (a == null || b == null) {
            return 0;
        }
        int m40545c = this.f9861g.m40545c(m40366c(a), this.f9856b);
        int m40545c2 = this.f9861g.m40545c(m40366c(b), this.f9856b);
        int max = this.f9880k ? Math.max(0, ((this.f9861g.m40545c(c2654s.m40306a() - 1, this.f9856b) + 1) - Math.max(m40545c, m40545c2)) - 1) : Math.max(0, Math.min(m40545c, m40545c2));
        if (!isSmoothScrollbarEnabled) {
            return max;
        }
        return Math.round((max * (Math.abs(this.f9879j.mo40069b(b) - this.f9879j.mo40071a(a)) / ((this.f9861g.m40545c(m40366c(b), this.f9856b) - this.f9861g.m40545c(m40366c(a), this.f9856b)) + 1))) + (this.f9879j.mo40070b() - this.f9879j.mo40071a(a)));
    }

    /* renamed from: i */
    private void m40552i(int i) {
        this.f9857c = m40557a(this.f9857c, this.f9856b, i);
    }

    /* renamed from: n */
    private void m40550n() {
        int i;
        int i2;
        if (getOrientation() == 1) {
            i2 = getWidth() - getPaddingRight();
            i = getPaddingLeft();
        } else {
            i2 = getHeight() - getPaddingBottom();
            i = getPaddingTop();
        }
        m40552i(i2 - i);
    }

    /* renamed from: o */
    private void m40549o() {
        View[] viewArr = this.f9858d;
        if (viewArr == null || viewArr.length != this.f9856b) {
            this.f9858d = new View[this.f9856b];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final int mo40277a(int i, RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        m40550n();
        m40549o();
        return super.mo40277a(i, c2648o, c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final int mo40380a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        if (this.f9878i == 0) {
            return this.f9856b;
        }
        if (c2654s.m40306a() > 0) {
            return m40559a(c2648o, c2654s, c2654s.m40306a() - 1) + 1;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x018e, code lost:
        if (r19 == (r0 > r24)) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01e9, code lost:
        if (r19 == (r0 > r21)) goto L78;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x023c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01f7  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View mo40272a(android.view.View r7, int r8, androidx.recyclerview.widget.RecyclerView.C2648o r9, androidx.recyclerview.widget.RecyclerView.C2654s r10) {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.mo40272a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$o, androidx.recyclerview.widget.RecyclerView$s):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    final View mo40534a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, boolean z, boolean z2) {
        int i;
        int childCount = getChildCount();
        int i2 = -1;
        int i3 = 1;
        if (z2) {
            i = getChildCount() - 1;
            i3 = -1;
        } else {
            i2 = childCount;
            i = 0;
        }
        int m40306a = c2654s.m40306a();
        m40525g();
        int mo40070b = this.f9879j.mo40070b();
        int mo40068c = this.f9879j.mo40068c();
        View view = null;
        View view2 = null;
        while (true) {
            View view3 = view2;
            if (i == i2) {
                return view != null ? view : view3;
            }
            View childAt = getChildAt(i);
            int c = m40366c(childAt);
            View view4 = view;
            View view5 = view3;
            if (c >= 0) {
                view4 = view;
                view5 = view3;
                if (c < m40306a) {
                    view4 = view;
                    view5 = view3;
                    if (m40556b(c2648o, c2654s, c) != 0) {
                        continue;
                    } else if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).f10000c.isRemoved()) {
                        view4 = view;
                        view5 = view3;
                        if (view3 == null) {
                            view5 = childAt;
                            view4 = view;
                        }
                    } else if (this.f9879j.mo40071a(childAt) < mo40068c && this.f9879j.mo40069b(childAt) >= mo40070b) {
                        return childAt;
                    } else {
                        view4 = view;
                        view5 = view3;
                        if (view == null) {
                            view4 = childAt;
                            view5 = view3;
                        }
                    }
                } else {
                    continue;
                }
            }
            i += i3;
            view = view4;
            view2 = view5;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final RecyclerView.LayoutParams mo31649a(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final RecyclerView.LayoutParams mo31648a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40281a() {
        this.f9861g.f9866a.clear();
        this.f9861g.f9867b.clear();
    }

    /* renamed from: a */
    public final void m40562a(int i) {
        if (i == this.f9856b) {
            return;
        }
        this.f9855a = true;
        if (i <= 0) {
            throw new IllegalArgumentException("Span count should be at least 1. Provided ".concat(String.valueOf(i)));
        }
        this.f9856b = i;
        this.f9861g.f9866a.clear();
        m40353k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40279a(int i, int i2) {
        this.f9861g.f9866a.clear();
        this.f9861g.f9867b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40275a(Rect rect, int i, int i2) {
        int i3;
        int i4;
        if (this.f9857c == null) {
            super.mo40275a(rect, i, i2);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f9878i == 1) {
            int a = m40394a(i2, rect.height() + paddingTop, getMinimumHeight());
            int[] iArr = this.f9857c;
            int a2 = m40394a(i, iArr[iArr.length - 1] + paddingLeft, getMinimumWidth());
            i4 = a;
            i3 = a2;
        } else {
            int a3 = m40394a(i, rect.width() + paddingLeft, getMinimumWidth());
            int[] iArr2 = this.f9857c;
            int a4 = m40394a(i2, iArr2[iArr2.length - 1] + paddingTop, getMinimumHeight());
            i3 = a3;
            i4 = a4;
        }
        setMeasuredDimension(i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40379a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, View view, C0869c c0869c) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.m40383a(view, c0869c);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int m40559a = m40559a(c2648o, c2654s, layoutParams2.f10000c.getLayoutPosition());
        if (this.f9878i == 0) {
            c0869c.m44264b(C0869c.C0872c.m44234a(layoutParams2.f9864a, layoutParams2.f9865b, m40559a, 1, false));
        } else {
            c0869c.m44264b(C0869c.C0872c.m44234a(m40559a, 1, layoutParams2.f9864a, layoutParams2.f9865b, false));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    public final void mo40536a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, LinearLayoutManager.C2615a c2615a, int i) {
        int i2;
        int m40556b;
        super.mo40536a(c2648o, c2654s, c2615a, i);
        m40550n();
        if (c2654s.m40306a() > 0 && !c2654s.f10079g) {
            boolean z = i == 1;
            int m40556b2 = m40556b(c2648o, c2654s, c2615a.f9887b);
            if (z) {
                while (m40556b2 > 0 && c2615a.f9887b > 0) {
                    c2615a.f9887b--;
                    m40556b2 = m40556b(c2648o, c2654s, c2615a.f9887b);
                }
            } else {
                int m40306a = c2654s.m40306a();
                int i3 = c2615a.f9887b;
                while (i3 < m40306a - 1 && (m40556b = m40556b(c2648o, c2654s, (i2 = i3 + 1))) > m40556b2) {
                    i3 = i2;
                    m40556b2 = m40556b;
                }
                c2615a.f9887b = i3;
            }
        }
        m40549o();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    final void mo40535a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, LinearLayoutManager.C2617c c2617c, LinearLayoutManager.C2616b c2616b) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        View m40505a;
        int mo40059h = this.f9879j.mo40059h();
        boolean z = mo40059h != 1073741824;
        int i8 = getChildCount() > 0 ? this.f9857c[this.f9856b] : 0;
        if (z) {
            m40550n();
        }
        boolean z2 = c2617c.f9899e == 1;
        int i9 = this.f9856b;
        if (!z2) {
            i9 = m40556b(c2648o, c2654s, c2617c.f9898d) + m40555c(c2648o, c2654s, c2617c.f9898d);
        }
        int i10 = 0;
        while (i10 < this.f9856b && c2617c.m40504a(c2654s) && i9 > 0) {
            int i11 = c2617c.f9898d;
            int m40555c = m40555c(c2648o, c2654s, i11);
            if (m40555c > this.f9856b) {
                throw new IllegalArgumentException("Item at position " + i11 + " requires " + m40555c + " spans but GridLayoutManager has only " + this.f9856b + " spans.");
            }
            i9 -= m40555c;
            if (i9 < 0 || (m40505a = c2617c.m40505a(c2648o)) == null) {
                break;
            }
            this.f9858d[i10] = m40505a;
            i10++;
        }
        if (i10 == 0) {
            c2616b.f9892b = true;
            return;
        }
        float f = 0.0f;
        m40558a(c2648o, c2654s, i10, z2);
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            View view = this.f9858d[i12];
            if (c2617c.f9906l == null) {
                if (z2) {
                    m40374b(view);
                } else {
                    m40373b(view, 0);
                }
            } else if (z2) {
                m40389a(view);
            } else {
                m40388a(view, 0);
            }
            m40371b(view, this.f9862h);
            m40560a(view, mo40059h, false);
            int mo40063e = this.f9879j.mo40063e(view);
            int i14 = i13;
            if (mo40063e > i13) {
                i14 = mo40063e;
            }
            float mo40061f = (this.f9879j.mo40061f(view) * 1.0f) / ((LayoutParams) view.getLayoutParams()).f9865b;
            float f2 = f;
            if (mo40061f > f) {
                f2 = mo40061f;
            }
            i12++;
            i13 = i14;
            f = f2;
        }
        int i15 = i13;
        if (z) {
            m40552i(Math.max(Math.round(f * this.f9856b), i8));
            int i16 = 0;
            int i17 = 0;
            while (true) {
                int i18 = i17;
                i15 = i18;
                if (i16 >= i10) {
                    break;
                }
                View view2 = this.f9858d[i16];
                m40560a(view2, 1073741824, true);
                int mo40063e2 = this.f9879j.mo40063e(view2);
                int i19 = i18;
                if (mo40063e2 > i18) {
                    i19 = mo40063e2;
                }
                i16++;
                i17 = i19;
            }
        }
        for (int i20 = 0; i20 < i10; i20++) {
            View view3 = this.f9858d[i20];
            if (this.f9879j.mo40063e(view3) != i15) {
                LayoutParams layoutParams = (LayoutParams) view3.getLayoutParams();
                Rect rect = layoutParams.f10001d;
                int i21 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
                int i22 = rect.left + rect.right + layoutParams.leftMargin + layoutParams.rightMargin;
                int m40554g = m40554g(layoutParams.f9864a, layoutParams.f9865b);
                if (this.f9878i == 1) {
                    i7 = m40393a(m40554g, 1073741824, i22, layoutParams.width, false);
                    i6 = View.MeasureSpec.makeMeasureSpec(i15 - i21, 1073741824);
                } else {
                    i7 = View.MeasureSpec.makeMeasureSpec(i15 - i22, 1073741824);
                    i6 = m40393a(m40554g, 1073741824, i21, layoutParams.height, false);
                }
                m40561a(view3, i7, i6, true);
            }
        }
        c2616b.f9891a = i15;
        if (this.f9878i != 1) {
            if (c2617c.f9900f == -1) {
                i2 = c2617c.f9896b;
                i3 = i2 - i15;
            } else {
                int i23 = c2617c.f9896b;
                i3 = i23;
                i2 = i15 + i23;
            }
            i4 = 0;
            i = 0;
        } else if (c2617c.f9900f == -1) {
            i4 = c2617c.f9896b;
            i = i4 - i15;
            i3 = 0;
            i2 = 0;
        } else {
            int i24 = c2617c.f9896b;
            i4 = i15 + i24;
            i = i24;
            i2 = 0;
            i3 = 0;
        }
        int i25 = 0;
        int i26 = i3;
        int i27 = i4;
        int i28 = i2;
        while (i25 < i10) {
            View view4 = this.f9858d[i25];
            LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
            if (this.f9878i != 1) {
                int paddingTop = getPaddingTop() + this.f9857c[layoutParams2.f9864a];
                i = paddingTop;
                i27 = this.f9879j.mo40061f(view4) + paddingTop;
                i5 = i26;
            } else if (isLayoutRTL()) {
                i28 = getPaddingLeft() + this.f9857c[this.f9856b - layoutParams2.f9864a];
                i5 = i28 - this.f9879j.mo40061f(view4);
            } else {
                int paddingLeft = getPaddingLeft() + this.f9857c[layoutParams2.f9864a];
                i5 = paddingLeft;
                i28 = this.f9879j.mo40061f(view4) + paddingLeft;
            }
            m40387a(view4, i5, i, i28, i27);
            if (layoutParams2.f10000c.isRemoved() || layoutParams2.f10000c.isUpdated()) {
                c2616b.f9893c = true;
            }
            c2616b.f9894d = view4.hasFocusable() | c2616b.f9894d;
            i25++;
            i26 = i5;
        }
        Arrays.fill(this.f9858d, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final void mo40264a(RecyclerView.C2654s c2654s) {
        super.mo40264a(c2654s);
        this.f9855a = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    final void mo40533a(RecyclerView.C2654s c2654s, LinearLayoutManager.C2617c c2617c, RecyclerView.AbstractC2637i.AbstractC2640a abstractC2640a) {
        int i = this.f9856b;
        for (int i2 = 0; i2 < this.f9856b && c2617c.m40504a(c2654s) && i > 0; i2++) {
            abstractC2640a.mo40092a(c2617c.f9898d, Math.max(0, c2617c.f9901g));
            i--;
            c2617c.f9898d += c2617c.f9899e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: a */
    public final boolean mo31647a(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public final int mo40255b(int i, RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        m40550n();
        m40549o();
        return super.mo40255b(i, c2648o, c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public final int mo40369b(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        if (this.f9878i == 1) {
            return this.f9856b;
        }
        if (c2654s.m40306a() > 0) {
            return m40559a(c2648o, c2654s, c2654s.m40306a() - 1) + 1;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public final int mo40251b(RecyclerView.C2654s c2654s) {
        return this.f9863z ? m40553h(c2654s) : super.mo40251b(c2654s);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public final RecyclerView.LayoutParams mo31646b() {
        return this.f9878i == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: b */
    public final void mo40257b(int i, int i2) {
        this.f9861g.f9866a.clear();
        this.f9861g.f9867b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: c */
    public final int mo40243c(RecyclerView.C2654s c2654s) {
        return this.f9863z ? m40553h(c2654s) : super.mo40243c(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: c */
    public final void mo40247c(int i, int i2) {
        this.f9861g.f9866a.clear();
        this.f9861g.f9867b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: c */
    public final void mo40244c(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s) {
        if (c2654s.f10079g) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
                int layoutPosition = layoutParams.f10000c.getLayoutPosition();
                this.f9859e.put(layoutPosition, layoutParams.f9865b);
                this.f9860f.put(layoutPosition, layoutParams.f9864a);
            }
        }
        super.mo40244c(c2648o, c2654s);
        this.f9859e.clear();
        this.f9860f.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: c */
    public final boolean mo40249c() {
        return this.f9883n == null && !this.f9855a;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: d */
    public final int mo40238d(RecyclerView.C2654s c2654s) {
        return this.f9863z ? m40551i(c2654s) : super.mo40238d(c2654s);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: d */
    public final void mo40239d(int i, int i2) {
        this.f9861g.f9866a.clear();
        this.f9861g.f9867b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC2637i
    /* renamed from: e */
    public final int mo40235e(RecyclerView.C2654s c2654s) {
        return this.f9863z ? m40551i(c2654s) : super.mo40235e(c2654s);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z) {
        if (!z) {
            super.setStackFromEnd(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }
}
