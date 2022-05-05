package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager.class */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: K */
    int[] f4576K;

    /* renamed from: L */
    View[] f4577L;

    /* renamed from: Q */
    private boolean f4582Q;

    /* renamed from: I */
    boolean f4574I = false;

    /* renamed from: J */
    int f4575J = -1;

    /* renamed from: M */
    final SparseIntArray f4578M = new SparseIntArray();

    /* renamed from: N */
    final SparseIntArray f4579N = new SparseIntArray();

    /* renamed from: O */
    SpanSizeLookup f4580O = new DefaultSpanSizeLookup();

    /* renamed from: P */
    final Rect f4581P = new Rect();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup.class */
    public static final class DefaultSpanSizeLookup extends SpanSizeLookup {
        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        /* renamed from: e */
        public int mo17721e(int i, int i2) {
            return i % i2;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        /* renamed from: f */
        public int mo17720f(int i) {
            return 1;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: e */
        int f4583e = -1;

        /* renamed from: f */
        int f4584f = 0;

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

        /* renamed from: e */
        public int m17727e() {
            return this.f4583e;
        }

        /* renamed from: f */
        public int m17726f() {
            return this.f4584f;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup.class */
    public static abstract class SpanSizeLookup {

        /* renamed from: a */
        final SparseIntArray f4585a = new SparseIntArray();

        /* renamed from: b */
        final SparseIntArray f4586b = new SparseIntArray();

        /* renamed from: c */
        private boolean f4587c = false;

        /* renamed from: d */
        private boolean f4588d = false;

        /* renamed from: a */
        static int m17725a(SparseIntArray sparseIntArray, int i) {
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

        /* renamed from: b */
        int m17724b(int i, int i2) {
            if (!this.f4588d) {
                return m17722d(i, i2);
            }
            int i3 = this.f4586b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int d = m17722d(i, i2);
            this.f4586b.put(i, d);
            return d;
        }

        /* renamed from: c */
        int m17723c(int i, int i2) {
            if (!this.f4587c) {
                return mo17721e(i, i2);
            }
            int i3 = this.f4585a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int e = mo17721e(i, i2);
            this.f4585a.put(i, e);
            return e;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m17722d(int r5, int r6) {
            /*
                Method dump skipped, instructions count: 189
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup.m17722d(int, int):int");
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0082  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0059 -> B:20:0x0079). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x006e -> B:20:0x0079). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0071 -> B:20:0x0079). Please submit an issue!!! */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo17721e(int r5, int r6) {
            /*
                r4 = this;
                r0 = r4
                r1 = r5
                int r0 = r0.mo17720f(r1)
                r7 = r0
                r0 = r7
                r1 = r6
                if (r0 != r1) goto L_0x000d
                r0 = 0
                return r0
            L_0x000d:
                r0 = r4
                boolean r0 = r0.f4587c
                if (r0 == 0) goto L_0x0038
                r0 = r4
                android.util.SparseIntArray r0 = r0.f4585a
                r1 = r5
                int r0 = m17725a(r0, r1)
                r8 = r0
                r0 = r8
                if (r0 < 0) goto L_0x0038
                r0 = r4
                android.util.SparseIntArray r0 = r0.f4585a
                r1 = r8
                int r0 = r0.get(r1)
                r1 = r4
                r2 = r8
                int r1 = r1.mo17720f(r2)
                int r0 = r0 + r1
                r9 = r0
                goto L_0x0079
            L_0x0038:
                r0 = 0
                r10 = r0
                r0 = 0
                r9 = r0
            L_0x003e:
                r0 = r10
                r1 = r5
                if (r0 >= r1) goto L_0x0082
                r0 = r4
                r1 = r10
                int r0 = r0.mo17720f(r1)
                r11 = r0
                r0 = r9
                r1 = r11
                int r0 = r0 + r1
                r12 = r0
                r0 = r12
                r1 = r6
                if (r0 != r1) goto L_0x0063
                r0 = 0
                r9 = r0
                r0 = r10
                r8 = r0
                goto L_0x0079
            L_0x0063:
                r0 = r10
                r8 = r0
                r0 = r12
                r9 = r0
                r0 = r12
                r1 = r6
                if (r0 <= r1) goto L_0x0079
                r0 = r11
                r9 = r0
                r0 = r10
                r8 = r0
            L_0x0079:
                r0 = r8
                r1 = 1
                int r0 = r0 + r1
                r10 = r0
                goto L_0x003e
            L_0x0082:
                r0 = r7
                r1 = r9
                int r0 = r0 + r1
                r1 = r6
                if (r0 > r1) goto L_0x008d
                r0 = r9
                return r0
            L_0x008d:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup.mo17721e(int, int):int");
        }

        /* renamed from: f */
        public abstract int mo17720f(int i);

        /* renamed from: g */
        public void m17719g() {
            this.f4586b.clear();
        }

        /* renamed from: h */
        public void m17718h() {
            this.f4585a.clear();
        }
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        m17729h3(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m17729h3(RecyclerView.LayoutManager.m17398j0(context, attributeSet, i, i2).f4774b);
    }

    /* renamed from: Q2 */
    private void m17746Q2(RecyclerView.Recycler recycler, RecyclerView.State state, int i, boolean z) {
        int i2;
        int i3;
        int i4 = 0;
        int i5 = -1;
        if (z) {
            i3 = 0;
            i2 = 1;
            i5 = i;
        } else {
            i3 = i - 1;
            i2 = -1;
        }
        while (i3 != i5) {
            View view = this.f4577L[i3];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int d3 = m17733d3(recycler, state, m17400i0(view));
            layoutParams.f4584f = d3;
            layoutParams.f4583e = i4;
            i4 += d3;
            i3 += i2;
        }
    }

    /* renamed from: R2 */
    private void m17745R2() {
        int K = m17441K();
        for (int i = 0; i < K; i++) {
            LayoutParams layoutParams = (LayoutParams) m17442J(i).getLayoutParams();
            int a = layoutParams.m17363a();
            this.f4578M.put(a, layoutParams.m17726f());
            this.f4579N.put(a, layoutParams.m17727e());
        }
    }

    /* renamed from: S2 */
    private void m17744S2(int i) {
        this.f4576K = m17743T2(this.f4576K, this.f4575J, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r4[r4.length - 1] != r6) goto L_0x001b;
     */
    /* renamed from: T2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int[] m17743T2(int[] r4, int r5, int r6) {
        /*
            r0 = 1
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001b
            r0 = r4
            int r0 = r0.length
            r1 = r5
            r2 = 1
            int r1 = r1 + r2
            if (r0 != r1) goto L_0x001b
            r0 = r4
            r8 = r0
            r0 = r4
            r1 = r4
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r1 = r6
            if (r0 == r1) goto L_0x0022
        L_0x001b:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            int[] r0 = new int[r0]
            r8 = r0
        L_0x0022:
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
        L_0x003a:
            r0 = r7
            r1 = r5
            if (r0 > r1) goto L_0x0074
            r0 = r6
            r1 = r11
            int r0 = r0 + r1
            r6 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x005d
            r0 = r5
            r1 = r6
            int r0 = r0 - r1
            r1 = r11
            if (r0 >= r1) goto L_0x005d
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r6
            r1 = r5
            int r0 = r0 - r1
            r6 = r0
            goto L_0x0061
        L_0x005d:
            r0 = r10
            r9 = r0
        L_0x0061:
            r0 = r12
            r1 = r9
            int r0 = r0 + r1
            r12 = r0
            r0 = r8
            r1 = r7
            r2 = r12
            r0[r1] = r2
            int r7 = r7 + 1
            goto L_0x003a
        L_0x0074:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.m17743T2(int[], int, int):int[]");
    }

    /* renamed from: U2 */
    private void m17742U2() {
        this.f4578M.clear();
        this.f4579N.clear();
    }

    /* renamed from: V2 */
    private int m17741V2(RecyclerView.State state) {
        if (m17441K() == 0 || state.m17275b() == 0) {
            return 0;
        }
        m17632U1();
        boolean t2 = m17606t2();
        View a2 = m17626a2(!t2, true);
        View Z1 = m17627Z1(!t2, true);
        if (a2 == null || Z1 == null) {
            return 0;
        }
        int b = this.f4580O.m17724b(m17400i0(a2), this.f4575J);
        int b2 = this.f4580O.m17724b(m17400i0(Z1), this.f4575J);
        int max = this.f4670x ? Math.max(0, ((this.f4580O.m17724b(state.m17275b() - 1, this.f4575J) + 1) - Math.max(b, b2)) - 1) : Math.max(0, Math.min(b, b2));
        if (!t2) {
            return max;
        }
        return Math.round((max * (Math.abs(this.f4667u.mo17541d(Z1) - this.f4667u.mo17538g(a2)) / ((this.f4580O.m17724b(m17400i0(Z1), this.f4575J) - this.f4580O.m17724b(m17400i0(a2), this.f4575J)) + 1))) + (this.f4667u.mo17532m() - this.f4667u.mo17538g(a2)));
    }

    /* renamed from: W2 */
    private int m17740W2(RecyclerView.State state) {
        if (m17441K() == 0 || state.m17275b() == 0) {
            return 0;
        }
        m17632U1();
        View a2 = m17626a2(!m17606t2(), true);
        View Z1 = m17627Z1(!m17606t2(), true);
        if (a2 == null || Z1 == null) {
            return 0;
        }
        if (!m17606t2()) {
            return this.f4580O.m17724b(state.m17275b() - 1, this.f4575J) + 1;
        }
        int d = this.f4667u.mo17541d(Z1);
        int g = this.f4667u.mo17538g(a2);
        int b = this.f4580O.m17724b(m17400i0(a2), this.f4575J);
        return (int) (((d - g) / ((this.f4580O.m17724b(m17400i0(Z1), this.f4575J) - b) + 1)) * (this.f4580O.m17724b(state.m17275b() - 1, this.f4575J) + 1));
    }

    /* renamed from: X2 */
    private void m17739X2(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.AnchorInfo anchorInfo, int i) {
        int i2;
        int c3;
        boolean z = i == 1;
        int c32 = m17734c3(recycler, state, anchorInfo.f4674b);
        if (z) {
            while (c32 > 0) {
                int i3 = anchorInfo.f4674b;
                if (i3 > 0) {
                    int i4 = i3 - 1;
                    anchorInfo.f4674b = i4;
                    c32 = m17734c3(recycler, state, i4);
                } else {
                    return;
                }
            }
            return;
        }
        int b = state.m17275b();
        int i5 = anchorInfo.f4674b;
        while (i5 < b - 1 && (c3 = m17734c3(recycler, state, (i2 = i5 + 1))) > c32) {
            i5 = i2;
            c32 = c3;
        }
        anchorInfo.f4674b = i5;
    }

    /* renamed from: Y2 */
    private void m17738Y2() {
        View[] viewArr = this.f4577L;
        if (viewArr == null || viewArr.length != this.f4575J) {
            this.f4577L = new View[this.f4575J];
        }
    }

    /* renamed from: b3 */
    private int m17735b3(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.m17272e()) {
            return this.f4580O.m17724b(i, this.f4575J);
        }
        int f = recycler.m17328f(i);
        if (f != -1) {
            return this.f4580O.m17724b(f, this.f4575J);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    /* renamed from: c3 */
    private int m17734c3(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.m17272e()) {
            return this.f4580O.m17723c(i, this.f4575J);
        }
        int i2 = this.f4579N.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int f = recycler.m17328f(i);
        if (f != -1) {
            return this.f4580O.m17723c(f, this.f4575J);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    /* renamed from: d3 */
    private int m17733d3(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.m17272e()) {
            return this.f4580O.mo17720f(i);
        }
        int i2 = this.f4578M.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int f = recycler.m17328f(i);
        if (f != -1) {
            return this.f4580O.mo17720f(f);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    /* renamed from: e3 */
    private void m17732e3(float f, int i) {
        m17744S2(Math.max(Math.round(f * this.f4575J), i));
    }

    /* renamed from: f3 */
    private void m17731f3(View view, int i, boolean z) {
        int i2;
        int i3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.f4778b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int Z2 = m17737Z2(layoutParams.f4583e, layoutParams.f4584f);
        if (this.f4665s == 1) {
            i2 = RecyclerView.LayoutManager.m17439L(Z2, i, i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
            i3 = RecyclerView.LayoutManager.m17439L(this.f4667u.mo17531n(), m17421Y(), i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, true);
        } else {
            i3 = RecyclerView.LayoutManager.m17439L(Z2, i, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
            i2 = RecyclerView.LayoutManager.m17439L(this.f4667u.mo17531n(), m17382q0(), i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, true);
        }
        m17730g3(view, i2, i3, z);
    }

    /* renamed from: g3 */
    private void m17730g3(View view, int i, int i2, boolean z) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z ? m17443I1(view, i, i2, layoutParams) : m17449G1(view, i, i2, layoutParams)) {
            view.measure(i, i2);
        }
    }

    /* renamed from: i3 */
    private void m17728i3() {
        int i;
        int i2;
        if (m17608r2() == 1) {
            i2 = m17385p0() - m17405g0();
            i = m17407f0();
        } else {
            i2 = m17422X() - m17409e0();
            i = m17403h0();
        }
        m17744S2(i2 - i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: D1 */
    public void mo17208D1(Rect rect, int i, int i2) {
        int i3;
        int i4;
        if (this.f4576K == null) {
            super.mo17208D1(rect, i, i2);
        }
        int f0 = m17407f0() + m17405g0();
        int h0 = m17403h0() + m17409e0();
        if (this.f4665s == 1) {
            i4 = RecyclerView.LayoutManager.m17388o(i2, rect.height() + h0, m17414c0());
            int[] iArr = this.f4576K;
            i3 = RecyclerView.LayoutManager.m17388o(i, iArr[iArr.length - 1] + f0, m17411d0());
        } else {
            i3 = RecyclerView.LayoutManager.m17388o(i, rect.width() + f0, m17411d0());
            int[] iArr2 = this.f4576K;
            i4 = RecyclerView.LayoutManager.m17388o(i2, iArr2[iArr2.length - 1] + h0, m17414c0());
        }
        m17455C1(i3, i4);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: E */
    public RecyclerView.LayoutParams mo17206E() {
        return this.f4665s == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: F */
    public RecyclerView.LayoutParams mo17203F(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: G */
    public RecyclerView.LayoutParams mo17201G(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: H2 */
    public void mo17647H2(boolean z) {
        if (!z) {
            super.mo17647H2(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x0188, code lost:
        if (r19 == (r0 > r23)) goto L_0x0140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01cd, code lost:
        if (r19 == r22) goto L_0x0140;
     */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x022a A[SYNTHETIC] */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: K0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View mo17195K0(android.view.View r7, int r8, androidx.recyclerview.widget.RecyclerView.Recycler r9, androidx.recyclerview.widget.RecyclerView.State r10) {
        /*
            Method dump skipped, instructions count: 578
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.mo17195K0(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: M1 */
    public boolean mo17191M1() {
        return this.f4660D == null && !this.f4574I;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: O */
    public int mo17187O(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f4665s == 1) {
            return this.f4575J;
        }
        if (state.m17275b() < 1) {
            return 0;
        }
        return m17735b3(recycler, state, state.m17275b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: O1 */
    void mo17640O1(RecyclerView.State state, LinearLayoutManager.LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i = this.f4575J;
        for (int i2 = 0; i2 < this.f4575J && layoutState.m17591c(state) && i > 0; i2++) {
            int i3 = layoutState.f4685d;
            layoutPrefetchRegistry.mo17364a(i3, Math.max(0, layoutState.f4688g));
            i -= this.f4580O.mo17720f(i3);
            layoutState.f4685d += layoutState.f4686e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: Q0 */
    public void mo17182Q0(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.m17432P0(view, accessibilityNodeInfoCompat);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int b3 = m17735b3(recycler, state, layoutParams2.m17363a());
        if (this.f4665s == 0) {
            accessibilityNodeInfoCompat.m19020f0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.m18973a(layoutParams2.m17727e(), layoutParams2.m17726f(), b3, 1, false, false));
        } else {
            accessibilityNodeInfoCompat.m19020f0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.m18973a(b3, 1, layoutParams2.m17727e(), layoutParams2.m17726f(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: S0 */
    public void mo17177S0(RecyclerView recyclerView, int i, int i2) {
        this.f4580O.m17718h();
        this.f4580O.m17719g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: T0 */
    public void mo17174T0(RecyclerView recyclerView) {
        this.f4580O.m17718h();
        this.f4580O.m17719g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: U0 */
    public void mo17172U0(RecyclerView recyclerView, int i, int i2, int i3) {
        this.f4580O.m17718h();
        this.f4580O.m17719g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: V0 */
    public void mo17170V0(RecyclerView recyclerView, int i, int i2) {
        this.f4580O.m17718h();
        this.f4580O.m17719g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: X0 */
    public void mo17167X0(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.f4580O.m17718h();
        this.f4580O.m17719g();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: Y0 */
    public void mo17165Y0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.m17272e()) {
            m17745R2();
        }
        super.mo17165Y0(recycler, state);
        m17742U2();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: Z0 */
    public void mo17163Z0(RecyclerView.State state) {
        super.mo17163Z0(state);
        this.f4574I = false;
    }

    /* renamed from: Z2 */
    int m17737Z2(int i, int i2) {
        if (this.f4665s != 1 || !m17607s2()) {
            int[] iArr = this.f4576K;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f4576K;
        int i3 = this.f4575J;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    /* renamed from: a3 */
    public int m17736a3() {
        return this.f4575J;
    }

    /* renamed from: h3 */
    public void m17729h3(int i) {
        if (i != this.f4575J) {
            this.f4574I = true;
            if (i >= 1) {
                this.f4575J = i;
                this.f4580O.m17718h();
                m17375u1();
                return;
            }
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: j2 */
    View mo17616j2(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, int i3) {
        m17632U1();
        int m = this.f4667u.mo17532m();
        int i4 = this.f4667u.mo17536i();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View J = m17442J(i);
            int i0 = m17400i0(J);
            view = view;
            view2 = view2;
            if (i0 >= 0) {
                view = view;
                view2 = view2;
                if (i0 >= i3) {
                    continue;
                } else if (m17734c3(recycler, state, i0) != 0) {
                    view = view;
                    view2 = view2;
                } else if (((RecyclerView.LayoutParams) J.getLayoutParams()).m17361c()) {
                    view = view;
                    view2 = view2;
                    if (view2 == null) {
                        view2 = J;
                        view = view;
                    }
                } else if (this.f4667u.mo17538g(J) < i4 && this.f4667u.mo17541d(J) >= m) {
                    return J;
                } else {
                    view = view;
                    view2 = view2;
                    if (view == null) {
                        view = J;
                        view2 = view2;
                    }
                }
            }
            i += i5;
        }
        if (view == null) {
            view = view2;
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: l0 */
    public int mo17144l0(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f4665s == 0) {
            return this.f4575J;
        }
        if (state.m17275b() < 1) {
            return 0;
        }
        return m17735b3(recycler, state, state.m17275b() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: n */
    public boolean mo17140n(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: s */
    public int mo17132s(RecyclerView.State state) {
        return this.f4582Q ? m17741V2(state) : super.mo17132s(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: t */
    public int mo17130t(RecyclerView.State state) {
        return this.f4582Q ? m17740W2(state) : super.mo17130t(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: u2 */
    void mo17605u2(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.LayoutState layoutState, LinearLayoutManager.LayoutChunkResult layoutChunkResult) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        View d;
        int l = this.f4667u.mo17533l();
        boolean z = l != 1073741824;
        int i8 = m17441K() > 0 ? this.f4576K[this.f4575J] : 0;
        if (z) {
            m17728i3();
        }
        boolean z2 = layoutState.f4686e == 1;
        int i9 = this.f4575J;
        if (!z2) {
            i9 = m17734c3(recycler, state, layoutState.f4685d) + m17733d3(recycler, state, layoutState.f4685d);
        }
        int i10 = 0;
        while (i10 < this.f4575J && layoutState.m17591c(state) && i9 > 0) {
            int i11 = layoutState.f4685d;
            int d3 = m17733d3(recycler, state, i11);
            if (d3 <= this.f4575J) {
                i9 -= d3;
                if (i9 < 0 || (d = layoutState.m17590d(recycler)) == null) {
                    break;
                }
                this.f4577L[i10] = d;
                i10++;
            } else {
                throw new IllegalArgumentException("Item at position " + i11 + " requires " + d3 + " spans but GridLayoutManager has only " + this.f4575J + " spans.");
            }
        }
        if (i10 == 0) {
            layoutChunkResult.f4679b = true;
            return;
        }
        float f = 0.0f;
        m17746Q2(recycler, state, i10, z2);
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            View view = this.f4577L[i13];
            if (layoutState.f4693l == null) {
                if (z2) {
                    m17410e(view);
                } else {
                    m17408f(view, 0);
                }
            } else if (z2) {
                m17415c(view);
            } else {
                m17412d(view, 0);
            }
            m17396k(view, this.f4581P);
            m17731f3(view, l, false);
            int e = this.f4667u.mo17540e(view);
            i12 = i12;
            if (e > i12) {
                i12 = e;
            }
            float f2 = (this.f4667u.mo17539f(view) * 1.0f) / ((LayoutParams) view.getLayoutParams()).f4584f;
            f = f;
            if (f2 > f) {
                f = f2;
            }
        }
        int i14 = i12;
        if (z) {
            m17732e3(f, i8);
            int i15 = 0;
            int i16 = 0;
            while (true) {
                i14 = i16;
                if (i15 >= i10) {
                    break;
                }
                View view2 = this.f4577L[i15];
                m17731f3(view2, 1073741824, true);
                int e2 = this.f4667u.mo17540e(view2);
                i16 = i16;
                if (e2 > i16) {
                    i16 = e2;
                }
                i15++;
            }
        }
        for (int i17 = 0; i17 < i10; i17++) {
            View view3 = this.f4577L[i17];
            if (this.f4667u.mo17540e(view3) != i14) {
                LayoutParams layoutParams = (LayoutParams) view3.getLayoutParams();
                Rect rect = layoutParams.f4778b;
                int i18 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                int i19 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int Z2 = m17737Z2(layoutParams.f4583e, layoutParams.f4584f);
                if (this.f4665s == 1) {
                    i6 = RecyclerView.LayoutManager.m17439L(Z2, 1073741824, i19, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
                    i7 = View.MeasureSpec.makeMeasureSpec(i14 - i18, 1073741824);
                } else {
                    i6 = View.MeasureSpec.makeMeasureSpec(i14 - i19, 1073741824);
                    i7 = RecyclerView.LayoutManager.m17439L(Z2, 1073741824, i18, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
                }
                m17730g3(view3, i6, i7, true);
            }
        }
        int i20 = 0;
        layoutChunkResult.f4678a = i14;
        if (this.f4665s == 1) {
            if (layoutState.f4687f == -1) {
                int i21 = layoutState.f4683b;
                i2 = i21 - i14;
                i = i21;
            } else {
                int i22 = layoutState.f4683b;
                i2 = i22;
                i = i14 + i22;
            }
            i3 = 0;
            i4 = 0;
        } else if (layoutState.f4687f == -1) {
            i3 = layoutState.f4683b;
            i4 = i3 - i14;
            i2 = 0;
            i = 0;
        } else {
            i4 = layoutState.f4683b;
            i3 = i14 + i4;
            i = 0;
            i2 = 0;
        }
        while (i20 < i10) {
            View view4 = this.f4577L[i20];
            LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
            if (this.f4665s != 1) {
                int h0 = m17403h0() + this.f4576K[layoutParams2.f4583e];
                i5 = h0;
                i = this.f4667u.mo17539f(view4) + h0;
            } else if (m17607s2()) {
                i3 = m17407f0() + this.f4576K[this.f4575J - layoutParams2.f4583e];
                i4 = i3 - this.f4667u.mo17539f(view4);
                i5 = i2;
            } else {
                int f0 = m17407f0() + this.f4576K[layoutParams2.f4583e];
                i3 = this.f4667u.mo17539f(view4) + f0;
                i5 = i2;
                i4 = f0;
                m17462A0(view4, i4, i5, i3, i);
                if (!layoutParams2.m17361c() || layoutParams2.m17362b()) {
                    layoutChunkResult.f4680c = true;
                }
                layoutChunkResult.f4681d |= view4.hasFocusable();
                i20++;
                i2 = i5;
                i4 = i4;
            }
            m17462A0(view4, i4, i5, i3, i);
            if (!layoutParams2.m17361c()) {
            }
            layoutChunkResult.f4680c = true;
            layoutChunkResult.f4681d |= view4.hasFocusable();
            i20++;
            i2 = i5;
            i4 = i4;
        }
        Arrays.fill(this.f4577L, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: v */
    public int mo17125v(RecyclerView.State state) {
        return this.f4582Q ? m17741V2(state) : super.mo17125v(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: w */
    public int mo17123w(RecyclerView.State state) {
        return this.f4582Q ? m17740W2(state) : super.mo17123w(state);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: w2 */
    public void mo17603w2(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.AnchorInfo anchorInfo, int i) {
        super.mo17603w2(recycler, state, anchorInfo, i);
        m17728i3();
        if (state.m17275b() > 0 && !state.m17272e()) {
            m17739X2(recycler, state, anchorInfo, i);
        }
        m17738Y2();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: x1 */
    public int mo17121x1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        m17728i3();
        m17738Y2();
        return super.mo17121x1(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: z1 */
    public int mo17117z1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        m17728i3();
        m17738Y2();
        return super.mo17117z1(i, recycler, state);
    }
}
