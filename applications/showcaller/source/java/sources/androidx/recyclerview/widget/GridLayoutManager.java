package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import p020b.p041h.p050l.p051f0.C1634c;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager.class */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: K */
    int[] f3908K;

    /* renamed from: L */
    View[] f3909L;

    /* renamed from: Q */
    private boolean f3914Q;

    /* renamed from: I */
    boolean f3906I = false;

    /* renamed from: J */
    int f3907J = -1;

    /* renamed from: M */
    final SparseIntArray f3910M = new SparseIntArray();

    /* renamed from: N */
    final SparseIntArray f3911N = new SparseIntArray();

    /* renamed from: O */
    AbstractC0896b f3912O = new C0895a();

    /* renamed from: P */
    final Rect f3913P = new Rect();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: e */
        int f3915e = -1;

        /* renamed from: f */
        int f3916f = 0;

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
        public int m32171e() {
            return this.f3915e;
        }

        /* renamed from: f */
        public int m32170f() {
            return this.f3916f;
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$a.class */
    public static final class C0895a extends AbstractC0896b {
        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0896b
        /* renamed from: e */
        public int mo32165e(int i, int i2) {
            return i % i2;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0896b
        /* renamed from: f */
        public int mo22209f(int i) {
            return 1;
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$b.class */
    public static abstract class AbstractC0896b {

        /* renamed from: a */
        final SparseIntArray f3917a = new SparseIntArray();

        /* renamed from: b */
        final SparseIntArray f3918b = new SparseIntArray();

        /* renamed from: c */
        private boolean f3919c = false;

        /* renamed from: d */
        private boolean f3920d = false;

        /* renamed from: a */
        static int m32169a(SparseIntArray sparseIntArray, int i) {
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
        int m32168b(int i, int i2) {
            if (!this.f3920d) {
                return m32166d(i, i2);
            }
            int i3 = this.f3918b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int m32166d = m32166d(i, i2);
            this.f3918b.put(i, m32166d);
            return m32166d;
        }

        /* renamed from: c */
        int m32167c(int i, int i2) {
            if (!this.f3919c) {
                return mo32165e(i, i2);
            }
            int i3 = this.f3917a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int mo32165e = mo32165e(i, i2);
            this.f3917a.put(i, mo32165e);
            return mo32165e;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m32166d(int r5, int r6) {
            /*
                Method dump skipped, instructions count: 189
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.AbstractC0896b.m32166d(int, int):int");
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
        public int mo32165e(int r5, int r6) {
            /*
                r4 = this;
                r0 = r4
                r1 = r5
                int r0 = r0.mo22209f(r1)
                r7 = r0
                r0 = r7
                r1 = r6
                if (r0 != r1) goto Ld
                r0 = 0
                return r0
            Ld:
                r0 = r4
                boolean r0 = r0.f3919c
                if (r0 == 0) goto L38
                r0 = r4
                android.util.SparseIntArray r0 = r0.f3917a
                r1 = r5
                int r0 = m32169a(r0, r1)
                r8 = r0
                r0 = r8
                if (r0 < 0) goto L38
                r0 = r4
                android.util.SparseIntArray r0 = r0.f3917a
                r1 = r8
                int r0 = r0.get(r1)
                r1 = r4
                r2 = r8
                int r1 = r1.mo22209f(r2)
                int r0 = r0 + r1
                r9 = r0
                goto L79
            L38:
                r0 = 0
                r10 = r0
                r0 = 0
                r9 = r0
            L3e:
                r0 = r10
                r1 = r5
                if (r0 >= r1) goto L82
                r0 = r4
                r1 = r10
                int r0 = r0.mo22209f(r1)
                r11 = r0
                r0 = r9
                r1 = r11
                int r0 = r0 + r1
                r12 = r0
                r0 = r12
                r1 = r6
                if (r0 != r1) goto L63
                r0 = 0
                r9 = r0
                r0 = r10
                r8 = r0
                goto L79
            L63:
                r0 = r10
                r8 = r0
                r0 = r12
                r9 = r0
                r0 = r12
                r1 = r6
                if (r0 <= r1) goto L79
                r0 = r11
                r9 = r0
                r0 = r10
                r8 = r0
            L79:
                r0 = r8
                r1 = 1
                int r0 = r0 + r1
                r10 = r0
                goto L3e
            L82:
                r0 = r7
                r1 = r9
                int r0 = r0 + r1
                r1 = r6
                if (r0 > r1) goto L8d
                r0 = r9
                return r0
            L8d:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.AbstractC0896b.mo32165e(int, int):int");
        }

        /* renamed from: f */
        public abstract int mo22209f(int i);

        /* renamed from: g */
        public void m32164g() {
            this.f3918b.clear();
        }

        /* renamed from: h */
        public void m32163h() {
            this.f3917a.clear();
        }
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        m32174c3(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        m32174c3(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m32174c3(RecyclerView.AbstractC0921o.m31814i0(context, attributeSet, i, i2).f4125b);
    }

    /* renamed from: L2 */
    private void m32191L2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, int i, boolean z) {
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
            View view = this.f3909L[i3];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int m32178Y2 = m32178Y2(c0932u, c0938y, m31816h0(view));
            layoutParams.f3916f = m32178Y2;
            layoutParams.f3915e = i4;
            i4 += m32178Y2;
            i3 += i2;
        }
    }

    /* renamed from: M2 */
    private void m32190M2() {
        int m31858J = m31858J();
        for (int i = 0; i < m31858J; i++) {
            LayoutParams layoutParams = (LayoutParams) m31860I(i).getLayoutParams();
            int m31957a = layoutParams.m31957a();
            this.f3910M.put(m31957a, layoutParams.m32170f());
            this.f3911N.put(m31957a, layoutParams.m32171e());
        }
    }

    /* renamed from: N2 */
    private void m32189N2(int i) {
        this.f3908K = m32188O2(this.f3908K, this.f3907J, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r4[r4.length - 1] != r6) goto L8;
     */
    /* renamed from: O2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int[] m32188O2(int[] r4, int r5, int r6) {
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.m32188O2(int[], int, int):int[]");
    }

    /* renamed from: P2 */
    private void m32187P2() {
        this.f3910M.clear();
        this.f3911N.clear();
    }

    /* renamed from: Q2 */
    private int m32186Q2(RecyclerView.C0938y c0938y) {
        if (m31858J() == 0 || c0938y.m31703b() == 0) {
            return 0;
        }
        m32145U1();
        boolean m32125o2 = m32125o2();
        View m32141Y1 = m32141Y1(!m32125o2, true);
        View m32142X1 = m32142X1(!m32125o2, true);
        if (m32141Y1 == null || m32142X1 == null) {
            return 0;
        }
        int m32168b = this.f3912O.m32168b(m31816h0(m32141Y1), this.f3907J);
        int m32168b2 = this.f3912O.m32168b(m31816h0(m32142X1), this.f3907J);
        int max = this.f3934x ? Math.max(0, ((this.f3912O.m32168b(c0938y.m31703b() - 1, this.f3907J) + 1) - Math.max(m32168b, m32168b2)) - 1) : Math.max(0, Math.min(m32168b, m32168b2));
        if (!m32125o2) {
            return max;
        }
        return Math.round((max * (Math.abs(this.f3931u.mo31396d(m32142X1) - this.f3931u.mo31393g(m32141Y1)) / ((this.f3912O.m32168b(m31816h0(m32142X1), this.f3907J) - this.f3912O.m32168b(m31816h0(m32141Y1), this.f3907J)) + 1))) + (this.f3931u.mo31387m() - this.f3931u.mo31393g(m32141Y1)));
    }

    /* renamed from: R2 */
    private int m32185R2(RecyclerView.C0938y c0938y) {
        if (m31858J() == 0 || c0938y.m31703b() == 0) {
            return 0;
        }
        m32145U1();
        View m32141Y1 = m32141Y1(!m32125o2(), true);
        View m32142X1 = m32142X1(!m32125o2(), true);
        if (m32141Y1 == null || m32142X1 == null) {
            return 0;
        }
        if (!m32125o2()) {
            return this.f3912O.m32168b(c0938y.m31703b() - 1, this.f3907J) + 1;
        }
        int mo31396d = this.f3931u.mo31396d(m32142X1);
        int mo31393g = this.f3931u.mo31393g(m32141Y1);
        int m32168b = this.f3912O.m32168b(m31816h0(m32141Y1), this.f3907J);
        return (int) (((mo31396d - mo31393g) / ((this.f3912O.m32168b(m31816h0(m32142X1), this.f3907J) - m32168b) + 1)) * (this.f3912O.m32168b(c0938y.m31703b() - 1, this.f3907J) + 1));
    }

    /* renamed from: S2 */
    private void m32184S2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, LinearLayoutManager.C0898a c0898a, int i) {
        int i2;
        int m32179X2;
        boolean z = i == 1;
        int m32179X22 = m32179X2(c0932u, c0938y, c0898a.f3941b);
        if (z) {
            while (m32179X22 > 0) {
                int i3 = c0898a.f3941b;
                if (i3 <= 0) {
                    return;
                }
                int i4 = i3 - 1;
                c0898a.f3941b = i4;
                m32179X22 = m32179X2(c0932u, c0938y, i4);
            }
            return;
        }
        int m31703b = c0938y.m31703b();
        int i5 = c0898a.f3941b;
        while (i5 < m31703b - 1 && (m32179X2 = m32179X2(c0932u, c0938y, (i2 = i5 + 1))) > m32179X22) {
            i5 = i2;
            m32179X22 = m32179X2;
        }
        c0898a.f3941b = i5;
    }

    /* renamed from: T2 */
    private void m32183T2() {
        View[] viewArr = this.f3909L;
        if (viewArr == null || viewArr.length != this.f3907J) {
            this.f3909L = new View[this.f3907J];
        }
    }

    /* renamed from: W2 */
    private int m32180W2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, int i) {
        if (!c0938y.m31700e()) {
            return this.f3912O.m32168b(i, this.f3907J);
        }
        int m31746f = c0932u.m31746f(i);
        if (m31746f != -1) {
            return this.f3912O.m32168b(m31746f, this.f3907J);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    /* renamed from: X2 */
    private int m32179X2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, int i) {
        if (!c0938y.m31700e()) {
            return this.f3912O.m32167c(i, this.f3907J);
        }
        int i2 = this.f3911N.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int m31746f = c0932u.m31746f(i);
        if (m31746f != -1) {
            return this.f3912O.m32167c(m31746f, this.f3907J);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    /* renamed from: Y2 */
    private int m32178Y2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, int i) {
        if (!c0938y.m31700e()) {
            return this.f3912O.mo22209f(i);
        }
        int i2 = this.f3910M.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int m31746f = c0932u.m31746f(i);
        if (m31746f != -1) {
            return this.f3912O.mo22209f(m31746f);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    /* renamed from: Z2 */
    private void m32177Z2(float f, int i) {
        m32189N2(Math.max(Math.round(f * this.f3907J), i));
    }

    /* renamed from: a3 */
    private void m32176a3(View view, int i, boolean z) {
        int i2;
        int i3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.f4056b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int m32182U2 = m32182U2(layoutParams.f3915e, layoutParams.f3916f);
        if (this.f3929s == 1) {
            i2 = RecyclerView.AbstractC0921o.m31857K(m32182U2, i, i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
            i3 = RecyclerView.AbstractC0921o.m31857K(this.f3931u.mo31386n(), m31836X(), i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, true);
        } else {
            i3 = RecyclerView.AbstractC0921o.m31857K(m32182U2, i, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
            i2 = RecyclerView.AbstractC0921o.m31857K(this.f3931u.mo31386n(), m31797p0(), i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, true);
        }
        m32175b3(view, i2, i3, z);
    }

    /* renamed from: b3 */
    private void m32175b3(View view, int i, int i2, boolean z) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z ? m31859I1(view, i, i2, layoutParams) : m31864G1(view, i, i2, layoutParams)) {
            view.measure(i, i2);
        }
    }

    /* renamed from: e3 */
    private void m32172e3() {
        int i;
        int i2;
        if (m32127m2() == 1) {
            i2 = m31800o0() - m31821f0();
            i = m31823e0();
        } else {
            i2 = m31837W() - m31825d0();
            i = m31819g0();
        }
        m32189N2(i2 - i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: C2 */
    public void mo32160C2(boolean z) {
        if (!z) {
            super.mo32160C2(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: D */
    public RecyclerView.LayoutParams mo27390D() {
        return this.f3929s == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: D1 */
    public void mo31692D1(Rect rect, int i, int i2) {
        int i3;
        int i4;
        if (this.f3908K == null) {
            super.mo31692D1(rect, i, i2);
        }
        int m31823e0 = m31823e0() + m31821f0();
        int m31819g0 = m31819g0() + m31825d0();
        if (this.f3929s == 1) {
            int m31803n = RecyclerView.AbstractC0921o.m31803n(i2, rect.height() + m31819g0, m31830b0());
            int[] iArr = this.f3908K;
            int m31803n2 = RecyclerView.AbstractC0921o.m31803n(i, iArr[iArr.length - 1] + m31823e0, m31827c0());
            i4 = m31803n;
            i3 = m31803n2;
        } else {
            int m31803n3 = RecyclerView.AbstractC0921o.m31803n(i, rect.width() + m31823e0, m31827c0());
            int[] iArr2 = this.f3908K;
            int m31803n4 = RecyclerView.AbstractC0921o.m31803n(i2, iArr2[iArr2.length - 1] + m31819g0, m31830b0());
            i3 = m31803n3;
            i4 = m31803n4;
        }
        m31869C1(i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: E */
    public RecyclerView.LayoutParams mo31690E(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: F */
    public RecyclerView.LayoutParams mo31687F(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x0188, code lost:
        if (r19 == (r0 > r23)) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01cd, code lost:
        if (r19 == r22) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x022a A[SYNTHETIC] */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: J0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View mo31681J0(android.view.View r7, int r8, androidx.recyclerview.widget.RecyclerView.C0932u r9, androidx.recyclerview.widget.RecyclerView.C0938y r10) {
        /*
            Method dump skipped, instructions count: 577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.mo31681J0(android.view.View, int, androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.RecyclerView$y):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: M1 */
    public boolean mo31676M1() {
        return this.f3924D == null && !this.f3906I;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: N */
    public int mo31850N(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        if (this.f3929s == 1) {
            return this.f3907J;
        }
        if (c0938y.m31703b() >= 1) {
            return m32180W2(c0932u, c0938y, c0938y.m31703b() - 1) + 1;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: O1 */
    void mo32151O1(RecyclerView.C0938y c0938y, LinearLayoutManager.C0900c c0900c, RecyclerView.AbstractC0921o.AbstractC0924c abstractC0924c) {
        int i = this.f3907J;
        for (int i2 = 0; i2 < this.f3907J && c0900c.m32101c(c0938y) && i > 0; i2++) {
            int i3 = c0900c.f3952d;
            abstractC0924c.mo31429a(i3, Math.max(0, c0900c.f3955g));
            i -= this.f3912O.mo22209f(i3);
            c0900c.f3952d += c0900c.f3953e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: P0 */
    public void mo31846P0(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, View view, C1634c c1634c) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.m31848O0(view, c1634c);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int m32180W2 = m32180W2(c0932u, c0938y, layoutParams2.m31957a());
        if (this.f3929s == 0) {
            c1634c.m29483f0(C1634c.C1637c.m29436a(layoutParams2.m32171e(), layoutParams2.m32170f(), m32180W2, 1, false, false));
        } else {
            c1634c.m29483f0(C1634c.C1637c.m29436a(m32180W2, 1, layoutParams2.m32171e(), layoutParams2.m32170f(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: R0 */
    public void mo31666R0(RecyclerView recyclerView, int i, int i2) {
        this.f3912O.m32163h();
        this.f3912O.m32164g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: S0 */
    public void mo31663S0(RecyclerView recyclerView) {
        this.f3912O.m32163h();
        this.f3912O.m32164g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: T0 */
    public void mo31660T0(RecyclerView recyclerView, int i, int i2, int i3) {
        this.f3912O.m32163h();
        this.f3912O.m32164g();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: U0 */
    public void mo31657U0(RecyclerView recyclerView, int i, int i2) {
        this.f3912O.m32163h();
        this.f3912O.m32164g();
    }

    /* renamed from: U2 */
    int m32182U2(int i, int i2) {
        if (this.f3929s != 1 || !m32126n2()) {
            int[] iArr = this.f3908K;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f3908K;
        int i3 = this.f3907J;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    /* renamed from: V2 */
    public int m32181V2() {
        return this.f3907J;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: W0 */
    public void mo31652W0(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.f3912O.m32163h();
        this.f3912O.m32164g();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: X0 */
    public void mo27380X0(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        if (c0938y.m31700e()) {
            m32190M2();
        }
        super.mo27380X0(c0932u, c0938y);
        m32187P2();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: Y0 */
    public void mo31649Y0(RecyclerView.C0938y c0938y) {
        super.mo31649Y0(c0938y);
        this.f3906I = false;
    }

    /* renamed from: c3 */
    public void m32174c3(int i) {
        if (i == this.f3907J) {
            return;
        }
        this.f3906I = true;
        if (i >= 1) {
            this.f3907J = i;
            this.f3912O.m32163h();
            m31790t1();
            return;
        }
        throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
    }

    /* renamed from: d3 */
    public void m32173d3(AbstractC0896b abstractC0896b) {
        this.f3912O = abstractC0896b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: g2 */
    View mo32133g2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, boolean z, boolean z2) {
        int i;
        int m31858J = m31858J();
        int i2 = -1;
        int i3 = 1;
        if (z2) {
            i = m31858J() - 1;
            i3 = -1;
        } else {
            i2 = m31858J;
            i = 0;
        }
        int m31703b = c0938y.m31703b();
        m32145U1();
        int mo31387m = this.f3931u.mo31387m();
        int mo31391i = this.f3931u.mo31391i();
        View view = null;
        View view2 = null;
        while (true) {
            View view3 = view2;
            if (i == i2) {
                if (view != null) {
                    view3 = view;
                }
                return view3;
            }
            View m31860I = m31860I(i);
            int m31816h0 = m31816h0(m31860I);
            View view4 = view;
            View view5 = view3;
            if (m31816h0 >= 0) {
                view4 = view;
                view5 = view3;
                if (m31816h0 >= m31703b) {
                    continue;
                } else if (m32179X2(c0932u, c0938y, m31816h0) != 0) {
                    view4 = view;
                    view5 = view3;
                } else if (((RecyclerView.LayoutParams) m31860I.getLayoutParams()).m31955c()) {
                    view4 = view;
                    view5 = view3;
                    if (view3 == null) {
                        view5 = m31860I;
                        view4 = view;
                    }
                } else if (this.f3931u.mo31393g(m31860I) < mo31391i && this.f3931u.mo31396d(m31860I) >= mo31387m) {
                    return m31860I;
                } else {
                    view4 = view;
                    view5 = view3;
                    if (view == null) {
                        view4 = m31860I;
                        view5 = view3;
                    }
                }
            }
            i += i3;
            view = view4;
            view2 = view5;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: k0 */
    public int mo31809k0(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        if (this.f3929s == 0) {
            return this.f3907J;
        }
        if (c0938y.m31703b() >= 1) {
            return m32180W2(c0932u, c0938y, c0938y.m31703b() - 1) + 1;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: m */
    public boolean mo31628m(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: p2 */
    void mo32124p2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, LinearLayoutManager.C0900c c0900c, LinearLayoutManager.C0899b c0899b) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        View m32100d;
        int mo31388l = this.f3931u.mo31388l();
        boolean z = mo31388l != 1073741824;
        int i12 = m31858J() > 0 ? this.f3908K[this.f3907J] : 0;
        if (z) {
            m32172e3();
        }
        boolean z2 = c0900c.f3953e == 1;
        int i13 = this.f3907J;
        if (!z2) {
            i13 = m32179X2(c0932u, c0938y, c0900c.f3952d) + m32178Y2(c0932u, c0938y, c0900c.f3952d);
        }
        int i14 = 0;
        while (i14 < this.f3907J && c0900c.m32101c(c0938y) && i13 > 0) {
            int i15 = c0900c.f3952d;
            int m32178Y2 = m32178Y2(c0932u, c0938y, i15);
            if (m32178Y2 > this.f3907J) {
                throw new IllegalArgumentException("Item at position " + i15 + " requires " + m32178Y2 + " spans but GridLayoutManager has only " + this.f3907J + " spans.");
            }
            i13 -= m32178Y2;
            if (i13 < 0 || (m32100d = c0900c.m32100d(c0932u)) == null) {
                break;
            }
            this.f3909L[i14] = m32100d;
            i14++;
        }
        if (i14 == 0) {
            c0899b.f3946b = true;
            return;
        }
        float f = 0.0f;
        m32191L2(c0932u, c0938y, i14, z2);
        int i16 = 0;
        int i17 = 0;
        while (i16 < i14) {
            View view = this.f3909L[i16];
            if (c0900c.f3960l == null) {
                if (z2) {
                    m31826d(view);
                } else {
                    m31824e(view, 0);
                }
            } else if (z2) {
                m31831b(view);
            } else {
                m31828c(view, 0);
            }
            m31812j(view, this.f3913P);
            m32176a3(view, mo31388l, false);
            int mo31395e = this.f3931u.mo31395e(view);
            int i18 = i17;
            if (mo31395e > i17) {
                i18 = mo31395e;
            }
            float mo31394f = (this.f3931u.mo31394f(view) * 1.0f) / ((LayoutParams) view.getLayoutParams()).f3916f;
            float f2 = f;
            if (mo31394f > f) {
                f2 = mo31394f;
            }
            i16++;
            i17 = i18;
            f = f2;
        }
        int i19 = i17;
        if (z) {
            m32177Z2(f, i12);
            int i20 = 0;
            int i21 = 0;
            while (true) {
                int i22 = i21;
                i19 = i22;
                if (i20 >= i14) {
                    break;
                }
                View view2 = this.f3909L[i20];
                m32176a3(view2, 1073741824, true);
                int mo31395e2 = this.f3931u.mo31395e(view2);
                int i23 = i22;
                if (mo31395e2 > i22) {
                    i23 = mo31395e2;
                }
                i20++;
                i21 = i23;
            }
        }
        for (int i24 = 0; i24 < i14; i24++) {
            View view3 = this.f3909L[i24];
            if (this.f3931u.mo31395e(view3) != i19) {
                LayoutParams layoutParams = (LayoutParams) view3.getLayoutParams();
                Rect rect = layoutParams.f4056b;
                int i25 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                int i26 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int m32182U2 = m32182U2(layoutParams.f3915e, layoutParams.f3916f);
                if (this.f3929s == 1) {
                    i11 = RecyclerView.AbstractC0921o.m31857K(m32182U2, 1073741824, i26, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
                    i10 = View.MeasureSpec.makeMeasureSpec(i19 - i25, 1073741824);
                } else {
                    i11 = View.MeasureSpec.makeMeasureSpec(i19 - i26, 1073741824);
                    i10 = RecyclerView.AbstractC0921o.m31857K(m32182U2, 1073741824, i25, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
                }
                m32175b3(view3, i11, i10, true);
            }
        }
        int i27 = 0;
        c0899b.f3945a = i19;
        if (this.f3929s == 1) {
            if (c0900c.f3954f == -1) {
                i2 = c0900c.f3950b;
                i = i2 - i19;
            } else {
                int i28 = c0900c.f3950b;
                i = i28;
                i2 = i19 + i28;
            }
            i4 = 0;
            i3 = 0;
        } else if (c0900c.f3954f == -1) {
            i4 = c0900c.f3950b;
            i3 = i4 - i19;
            i = 0;
            i2 = 0;
        } else {
            i3 = c0900c.f3950b;
            i4 = i19 + i3;
            i2 = 0;
            i = 0;
        }
        while (i27 < i14) {
            View view4 = this.f3909L[i27];
            LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
            if (this.f3929s == 1) {
                if (m32126n2()) {
                    int m31823e0 = m31823e0() + this.f3908K[this.f3907J - layoutParams2.f3915e];
                    i8 = m31823e0;
                    i9 = m31823e0 - this.f3931u.mo31394f(view4);
                } else {
                    int m31823e02 = m31823e0() + this.f3908K[layoutParams2.f3915e];
                    i9 = m31823e02;
                    i8 = this.f3931u.mo31394f(view4) + m31823e02;
                }
                i5 = i2;
                i7 = i;
                i6 = i9;
            } else {
                int m31819g0 = m31819g0() + this.f3908K[layoutParams2.f3915e];
                i7 = m31819g0;
                i6 = i3;
                i5 = this.f3931u.mo31394f(view4) + m31819g0;
                i8 = i4;
            }
            m31778z0(view4, i6, i7, i8, i5);
            if (layoutParams2.m31955c() || layoutParams2.m31956b()) {
                c0899b.f3947c = true;
            }
            c0899b.f3948d |= view4.hasFocusable();
            i27++;
            i4 = i8;
            i3 = i6;
            i = i7;
            i2 = i5;
        }
        Arrays.fill(this.f3909L, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: r */
    public int mo31620r(RecyclerView.C0938y c0938y) {
        return this.f3914Q ? m32186Q2(c0938y) : super.mo31620r(c0938y);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: r2 */
    public void mo32122r2(RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y, LinearLayoutManager.C0898a c0898a, int i) {
        super.mo32122r2(c0932u, c0938y, c0898a, i);
        m32172e3();
        if (c0938y.m31703b() > 0 && !c0938y.m31700e()) {
            m32184S2(c0932u, c0938y, c0898a, i);
        }
        m32183T2();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: s */
    public int mo31618s(RecyclerView.C0938y c0938y) {
        return this.f3914Q ? m32185R2(c0938y) : super.mo31618s(c0938y);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: u */
    public int mo31613u(RecyclerView.C0938y c0938y) {
        return this.f3914Q ? m32186Q2(c0938y) : super.mo31613u(c0938y);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: v */
    public int mo31611v(RecyclerView.C0938y c0938y) {
        return this.f3914Q ? m32185R2(c0938y) : super.mo31611v(c0938y);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: w1 */
    public int mo31609w1(int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        m32172e3();
        m32183T2();
        return super.mo31609w1(i, c0932u, c0938y);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0921o
    /* renamed from: y1 */
    public int mo27387y1(int i, RecyclerView.C0932u c0932u, RecyclerView.C0938y c0938y) {
        m32172e3();
        m32183T2();
        return super.mo27387y1(i, c0932u, c0938y);
    }
}
