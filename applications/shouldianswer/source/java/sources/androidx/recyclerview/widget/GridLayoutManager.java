package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p023g.p024a.C0510d;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager.class */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: c */
    int[] f2885c;

    /* renamed from: d */
    View[] f2886d;

    /* renamed from: a */
    boolean f2883a = false;

    /* renamed from: b */
    int f2884b = -1;

    /* renamed from: e */
    final SparseIntArray f2887e = new SparseIntArray();

    /* renamed from: f */
    final SparseIntArray f2888f = new SparseIntArray();

    /* renamed from: g */
    AbstractC0933c f2889g = new C0931a();

    /* renamed from: h */
    final Rect f2890h = new Rect();

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$a.class */
    public static final class C0931a extends AbstractC0933c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0933c
        /* renamed from: a */
        public int mo5027a(int i) {
            return 1;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0933c
        /* renamed from: a */
        public int mo5026a(int i, int i2) {
            return i % i2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$b.class */
    public static class C0932b extends RecyclerView.C0961j {

        /* renamed from: a */
        int f2891a = -1;

        /* renamed from: b */
        int f2892b = 0;

        public C0932b(int i, int i2) {
            super(i, i2);
        }

        public C0932b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0932b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0932b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        /* renamed from: a */
        public int m5030a() {
            return this.f2891a;
        }

        /* renamed from: b */
        public int m5029b() {
            return this.f2892b;
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$c.class */
    public static abstract class AbstractC0933c {

        /* renamed from: a */
        final SparseIntArray f2893a = new SparseIntArray();

        /* renamed from: b */
        private boolean f2894b = false;

        /* renamed from: a */
        public abstract int mo5027a(int i);

        /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x008a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0061 -> B:22:0x0081). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0076 -> B:22:0x0081). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0079 -> B:22:0x0081). Please submit an issue!!! */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo5026a(int r5, int r6) {
            /*
                r4 = this;
                r0 = r4
                r1 = r5
                int r0 = r0.mo5027a(r1)
                r7 = r0
                r0 = r7
                r1 = r6
                if (r0 != r1) goto Ld
                r0 = 0
                return r0
            Ld:
                r0 = r4
                boolean r0 = r0.f2894b
                if (r0 == 0) goto L3f
                r0 = r4
                android.util.SparseIntArray r0 = r0.f2893a
                int r0 = r0.size()
                if (r0 <= 0) goto L3f
                r0 = r4
                r1 = r5
                int r0 = r0.m5025b(r1)
                r8 = r0
                r0 = r8
                if (r0 < 0) goto L3f
                r0 = r4
                android.util.SparseIntArray r0 = r0.f2893a
                r1 = r8
                int r0 = r0.get(r1)
                r1 = r4
                r2 = r8
                int r1 = r1.mo5027a(r2)
                int r0 = r0 + r1
                r9 = r0
                goto L81
            L3f:
                r0 = 0
                r10 = r0
                r0 = r10
                r9 = r0
            L46:
                r0 = r10
                r1 = r5
                if (r0 >= r1) goto L8a
                r0 = r4
                r1 = r10
                int r0 = r0.mo5027a(r1)
                r11 = r0
                r0 = r9
                r1 = r11
                int r0 = r0 + r1
                r12 = r0
                r0 = r12
                r1 = r6
                if (r0 != r1) goto L6b
                r0 = 0
                r9 = r0
                r0 = r10
                r8 = r0
                goto L81
            L6b:
                r0 = r10
                r8 = r0
                r0 = r12
                r9 = r0
                r0 = r12
                r1 = r6
                if (r0 <= r1) goto L81
                r0 = r11
                r9 = r0
                r0 = r10
                r8 = r0
            L81:
                r0 = r8
                r1 = 1
                int r0 = r0 + r1
                r10 = r0
                goto L46
            L8a:
                r0 = r7
                r1 = r9
                int r0 = r0 + r1
                r1 = r6
                if (r0 > r1) goto L95
                r0 = r9
                return r0
            L95:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.AbstractC0933c.mo5026a(int, int):int");
        }

        /* renamed from: a */
        public void m5028a() {
            this.f2893a.clear();
        }

        /* renamed from: b */
        int m5025b(int i) {
            int size = this.f2893a.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (this.f2893a.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= this.f2893a.size()) {
                return -1;
            }
            return this.f2893a.keyAt(i4);
        }

        /* renamed from: b */
        int m5024b(int i, int i2) {
            if (!this.f2894b) {
                return mo5026a(i, i2);
            }
            int i3 = this.f2893a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int mo5026a = mo5026a(i, i2);
            this.f2893a.put(i, mo5026a);
            return mo5026a;
        }

        /* renamed from: c */
        public int m5023c(int i, int i2) {
            int i3;
            int i4;
            int mo5027a = mo5027a(i);
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                i3 = i7;
                if (i5 >= i) {
                    break;
                }
                int mo5027a2 = mo5027a(i5);
                int i8 = i6 + mo5027a2;
                if (i8 == i2) {
                    i4 = i3 + 1;
                    i6 = 0;
                } else {
                    i6 = i8;
                    i4 = i3;
                    if (i8 > i2) {
                        i4 = i3 + 1;
                        i6 = mo5027a2;
                    }
                }
                i5++;
                i7 = i4;
            }
            int i9 = i3;
            if (i6 + mo5027a > i2) {
                i9 = i3 + 1;
            }
            return i9;
        }
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        m5045a(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m5045a(getProperties(context, attributeSet, i, i2).f2954b);
    }

    /* renamed from: a */
    private int m5041a(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, int i) {
        if (!c0974t.m4849a()) {
            return this.f2889g.m5023c(i, this.f2884b);
        }
        int m4892b = c0968p.m4892b(i);
        if (m4892b != -1) {
            return this.f2889g.m5023c(m4892b, this.f2884b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    /* renamed from: a */
    private void m5046a(float f, int i) {
        m5035d(Math.max(Math.round(f * this.f2884b), i));
    }

    /* renamed from: a */
    private void m5043a(View view, int i, int i2, boolean z) {
        RecyclerView.C0961j c0961j = (RecyclerView.C0961j) view.getLayoutParams();
        if (z ? shouldReMeasureChild(view, i, i2, c0961j) : shouldMeasureChild(view, i, i2, c0961j)) {
            view.measure(i, i2);
        }
    }

    /* renamed from: a */
    private void m5042a(View view, int i, boolean z) {
        int i2;
        int i3;
        C0932b c0932b = (C0932b) view.getLayoutParams();
        Rect rect = c0932b.mDecorInsets;
        int i4 = rect.top + rect.bottom + c0932b.topMargin + c0932b.bottomMargin;
        int i5 = rect.left + rect.right + c0932b.leftMargin + c0932b.rightMargin;
        int m5044a = m5044a(c0932b.f2891a, c0932b.f2892b);
        if (this.f2903i == 1) {
            i2 = getChildMeasureSpec(m5044a, i, i5, c0932b.width, false);
            i3 = getChildMeasureSpec(this.f2904j.mo4564f(), getHeightMode(), i4, c0932b.height, true);
        } else {
            i3 = getChildMeasureSpec(m5044a, i, i4, c0932b.height, false);
            i2 = getChildMeasureSpec(this.f2904j.mo4564f(), getWidthMode(), i5, c0932b.width, true);
        }
        m5043a(view, i2, i3, z);
    }

    /* renamed from: a */
    private void m5040a(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, int i, int i2, boolean z) {
        int i3;
        int i4;
        int i5 = 0;
        int i6 = -1;
        if (z) {
            i3 = 1;
            i6 = i;
            i4 = 0;
        } else {
            i4 = i - 1;
            i3 = -1;
        }
        while (i4 != i6) {
            View view = this.f2886d[i4];
            C0932b c0932b = (C0932b) view.getLayoutParams();
            c0932b.f2892b = m5036c(c0968p, c0974t, getPosition(view));
            c0932b.f2891a = i5;
            i5 += c0932b.f2892b;
            i4 += i3;
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
    static int[] m5039a(int[] r4, int r5, int r6) {
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.m5039a(int[], int, int):int[]");
    }

    /* renamed from: b */
    private int m5038b(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, int i) {
        if (!c0974t.m4849a()) {
            return this.f2889g.m5024b(i, this.f2884b);
        }
        int i2 = this.f2888f.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int m4892b = c0968p.m4892b(i);
        if (m4892b != -1) {
            return this.f2889g.m5024b(m4892b, this.f2884b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    /* renamed from: b */
    private void m5037b(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, LinearLayoutManager.C0935a c0935a, int i) {
        int i2;
        int m5038b;
        boolean z = i == 1;
        int m5038b2 = m5038b(c0968p, c0974t, c0935a.f2914b);
        if (z) {
            while (m5038b2 > 0 && c0935a.f2914b > 0) {
                c0935a.f2914b--;
                m5038b2 = m5038b(c0968p, c0974t, c0935a.f2914b);
            }
            return;
        }
        int m4843e = c0974t.m4843e();
        int i3 = c0935a.f2914b;
        while (i3 < m4843e - 1 && (m5038b = m5038b(c0968p, c0974t, (i2 = i3 + 1))) > m5038b2) {
            i3 = i2;
            m5038b2 = m5038b;
        }
        c0935a.f2914b = i3;
    }

    /* renamed from: c */
    private int m5036c(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, int i) {
        if (!c0974t.m4849a()) {
            return this.f2889g.mo5027a(i);
        }
        int i2 = this.f2887e.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int m4892b = c0968p.m4892b(i);
        if (m4892b != -1) {
            return this.f2889g.mo5027a(m4892b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    /* renamed from: d */
    private void m5035d(int i) {
        this.f2885c = m5039a(this.f2885c, this.f2884b, i);
    }

    /* renamed from: k */
    private void m5034k() {
        this.f2887e.clear();
        this.f2888f.clear();
    }

    /* renamed from: l */
    private void m5033l() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            C0932b c0932b = (C0932b) getChildAt(i).getLayoutParams();
            int viewLayoutPosition = c0932b.getViewLayoutPosition();
            this.f2887e.put(viewLayoutPosition, c0932b.m5029b());
            this.f2888f.put(viewLayoutPosition, c0932b.m5030a());
        }
    }

    /* renamed from: m */
    private void m5032m() {
        int i;
        int i2;
        if (m5000b() == 1) {
            i2 = getWidth() - getPaddingRight();
            i = getPaddingLeft();
        } else {
            i2 = getHeight() - getPaddingBottom();
            i = getPaddingTop();
        }
        m5035d(i2 - i);
    }

    /* renamed from: n */
    private void m5031n() {
        View[] viewArr = this.f2886d;
        if (viewArr == null || viewArr.length != this.f2884b) {
            this.f2886d = new View[this.f2884b];
        }
    }

    /* renamed from: a */
    public int m5047a() {
        return this.f2884b;
    }

    /* renamed from: a */
    int m5044a(int i, int i2) {
        if (this.f2903i != 1 || !m4989c()) {
            int[] iArr = this.f2885c;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f2885c;
        int i3 = this.f2884b;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    View mo5009a(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, int i, int i2, int i3) {
        m4984d();
        int mo4570c = this.f2904j.mo4570c();
        int mo4568d = this.f2904j.mo4568d();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (true) {
            View view3 = view2;
            if (i == i2) {
                if (view == null) {
                    view = view3;
                }
                return view;
            }
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            View view4 = view;
            View view5 = view3;
            if (position >= 0) {
                view4 = view;
                view5 = view3;
                if (position >= i3) {
                    continue;
                } else if (m5038b(c0968p, c0974t, position) != 0) {
                    view4 = view;
                    view5 = view3;
                } else if (((RecyclerView.C0961j) childAt.getLayoutParams()).isItemRemoved()) {
                    view4 = view;
                    view5 = view3;
                    if (view3 == null) {
                        view5 = childAt;
                        view4 = view;
                    }
                } else if (this.f2904j.mo4572a(childAt) < mo4568d && this.f2904j.mo4571b(childAt) >= mo4570c) {
                    return childAt;
                } else {
                    view4 = view;
                    view5 = view3;
                    if (view == null) {
                        view4 = childAt;
                        view5 = view3;
                    }
                }
            }
            i += i4;
            view = view4;
            view2 = view5;
        }
    }

    /* renamed from: a */
    public void m5045a(int i) {
        if (i == this.f2884b) {
            return;
        }
        this.f2883a = true;
        if (i >= 1) {
            this.f2884b = i;
            this.f2889g.m5028a();
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    public void mo5007a(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, LinearLayoutManager.C0935a c0935a, int i) {
        super.mo5007a(c0968p, c0974t, c0935a, i);
        m5032m();
        if (c0974t.m4843e() > 0 && !c0974t.m4849a()) {
            m5037b(c0968p, c0974t, c0935a, i);
        }
        m5031n();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    void mo5006a(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, LinearLayoutManager.C0937c c0937c, LinearLayoutManager.C0936b c0936b) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        View m4957a;
        int mo4560i = this.f2904j.mo4560i();
        boolean z = mo4560i != 1073741824;
        int i9 = getChildCount() > 0 ? this.f2885c[this.f2884b] : 0;
        if (z) {
            m5032m();
        }
        boolean z2 = c0937c.f2926e == 1;
        int i10 = this.f2884b;
        if (!z2) {
            i10 = m5038b(c0968p, c0974t, c0937c.f2925d) + m5036c(c0968p, c0974t, c0937c.f2925d);
        }
        int i11 = 0;
        int i12 = 0;
        while (i12 < this.f2884b && c0937c.m4956a(c0974t) && i10 > 0) {
            int i13 = c0937c.f2925d;
            int m5036c = m5036c(c0968p, c0974t, i13);
            if (m5036c > this.f2884b) {
                throw new IllegalArgumentException("Item at position " + i13 + " requires " + m5036c + " spans but GridLayoutManager has only " + this.f2884b + " spans.");
            }
            i10 -= m5036c;
            if (i10 < 0 || (m4957a = c0937c.m4957a(c0968p)) == null) {
                break;
            }
            i11 += m5036c;
            this.f2886d[i12] = m4957a;
            i12++;
        }
        if (i12 == 0) {
            c0936b.f2919b = true;
            return;
        }
        float f = 0.0f;
        m5040a(c0968p, c0974t, i12, i11, z2);
        int i14 = 0;
        int i15 = 0;
        while (i14 < i12) {
            View view = this.f2886d[i14];
            if (c0937c.f2932k == null) {
                if (z2) {
                    addView(view);
                } else {
                    addView(view, 0);
                }
            } else if (z2) {
                addDisappearingView(view);
            } else {
                addDisappearingView(view, 0);
            }
            calculateItemDecorationsForChild(view, this.f2890h);
            m5042a(view, mo4560i, false);
            int mo4565e = this.f2904j.mo4565e(view);
            int i16 = i15;
            if (mo4565e > i15) {
                i16 = mo4565e;
            }
            float mo4563f = (this.f2904j.mo4563f(view) * 1.0f) / ((C0932b) view.getLayoutParams()).f2892b;
            float f2 = f;
            if (mo4563f > f) {
                f2 = mo4563f;
            }
            i14++;
            i15 = i16;
            f = f2;
        }
        int i17 = i15;
        if (z) {
            m5046a(f, i9);
            int i18 = 0;
            int i19 = 0;
            while (true) {
                int i20 = i19;
                i17 = i20;
                if (i18 >= i12) {
                    break;
                }
                View view2 = this.f2886d[i18];
                m5042a(view2, 1073741824, true);
                int mo4565e2 = this.f2904j.mo4565e(view2);
                int i21 = i20;
                if (mo4565e2 > i20) {
                    i21 = mo4565e2;
                }
                i18++;
                i19 = i21;
            }
        }
        for (int i22 = 0; i22 < i12; i22++) {
            View view3 = this.f2886d[i22];
            if (this.f2904j.mo4565e(view3) != i17) {
                C0932b c0932b = (C0932b) view3.getLayoutParams();
                Rect rect = c0932b.mDecorInsets;
                int i23 = rect.top + rect.bottom + c0932b.topMargin + c0932b.bottomMargin;
                int i24 = rect.left + rect.right + c0932b.leftMargin + c0932b.rightMargin;
                int m5044a = m5044a(c0932b.f2891a, c0932b.f2892b);
                if (this.f2903i == 1) {
                    i7 = getChildMeasureSpec(m5044a, 1073741824, i24, c0932b.width, false);
                    i8 = View.MeasureSpec.makeMeasureSpec(i17 - i23, 1073741824);
                } else {
                    i7 = View.MeasureSpec.makeMeasureSpec(i17 - i24, 1073741824);
                    i8 = getChildMeasureSpec(m5044a, 1073741824, i23, c0932b.height, false);
                }
                m5043a(view3, i7, i8, true);
            }
        }
        int i25 = 0;
        c0936b.f2918a = i17;
        if (this.f2903i == 1) {
            if (c0937c.f2927f == -1) {
                int i26 = c0937c.f2923b;
                i2 = i26 - i17;
                i = i26;
            } else {
                int i27 = c0937c.f2923b;
                i2 = i27;
                i = i17 + i27;
            }
            i4 = 0;
            i3 = 0;
        } else if (c0937c.f2927f == -1) {
            int i28 = c0937c.f2923b;
            i2 = 0;
            i3 = i28;
            i4 = i28 - i17;
            i = 0;
        } else {
            i4 = c0937c.f2923b;
            i3 = i17 + i4;
            i2 = 0;
            i = 0;
        }
        while (true) {
            int i29 = i25;
            if (i29 >= i12) {
                Arrays.fill(this.f2886d, (Object) null);
                return;
            }
            View view4 = this.f2886d[i29];
            C0932b c0932b2 = (C0932b) view4.getLayoutParams();
            if (this.f2903i != 1) {
                i2 = getPaddingTop() + this.f2885c[c0932b2.f2891a];
                i = this.f2904j.mo4563f(view4) + i2;
            } else if (m4989c()) {
                int paddingLeft = getPaddingLeft() + this.f2885c[this.f2884b - c0932b2.f2891a];
                i6 = paddingLeft;
                i5 = paddingLeft - this.f2904j.mo4563f(view4);
                layoutDecoratedWithMargins(view4, i5, i2, i6, i);
                if (!c0932b2.isItemRemoved() || c0932b2.isItemChanged()) {
                    c0936b.f2920c = true;
                }
                c0936b.f2921d |= view4.hasFocusable();
                i25 = i29 + 1;
                int i30 = i6;
                i4 = i5;
                i3 = i30;
            } else {
                i4 = getPaddingLeft() + this.f2885c[c0932b2.f2891a];
                i3 = this.f2904j.mo4563f(view4) + i4;
            }
            int i31 = i4;
            i6 = i3;
            i5 = i31;
            layoutDecoratedWithMargins(view4, i5, i2, i6, i);
            if (!c0932b2.isItemRemoved()) {
            }
            c0936b.f2920c = true;
            c0936b.f2921d |= view4.hasFocusable();
            i25 = i29 + 1;
            int i302 = i6;
            i4 = i5;
            i3 = i302;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    void mo5003a(RecyclerView.C0974t c0974t, LinearLayoutManager.C0937c c0937c, RecyclerView.AbstractC0956i.AbstractC0959a abstractC0959a) {
        int i = this.f2884b;
        for (int i2 = 0; i2 < this.f2884b && c0937c.m4956a(c0974t) && i > 0; i2++) {
            int i3 = c0937c.f2925d;
            abstractC0959a.mo4602b(i3, Math.max(0, c0937c.f2928g));
            i -= this.f2889g.mo5027a(i3);
            c0937c.f2925d += c0937c.f2926e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    public void mo5002a(boolean z) {
        if (!z) {
            super.mo5002a(false);
            return;
        }
        throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean checkLayoutParams(RecyclerView.C0961j c0961j) {
        return c0961j instanceof C0932b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public RecyclerView.C0961j generateDefaultLayoutParams() {
        return this.f2903i == 0 ? new C0932b(-2, -1) : new C0932b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public RecyclerView.C0961j generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new C0932b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public RecyclerView.C0961j generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0932b((ViewGroup.MarginLayoutParams) layoutParams) : new C0932b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int getColumnCountForAccessibility(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        if (this.f2903i == 1) {
            return this.f2884b;
        }
        if (c0974t.m4843e() >= 1) {
            return m5041a(c0968p, c0974t, c0974t.m4843e() - 1) + 1;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int getRowCountForAccessibility(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        if (this.f2903i == 0) {
            return this.f2884b;
        }
        if (c0974t.m4843e() >= 1) {
            return m5041a(c0968p, c0974t, c0974t.m4843e() - 1) + 1;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x0194, code lost:
        if (r20 == (r0 > r18)) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01dd, code lost:
        if (r20 == r17) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x023d A[SYNTHETIC] */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r7, int r8, androidx.recyclerview.widget.RecyclerView.C0968p r9, androidx.recyclerview.widget.RecyclerView.C0974t r10) {
        /*
            Method dump skipped, instructions count: 597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.RecyclerView$t):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t, View view, C0510d c0510d) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0932b)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, c0510d);
            return;
        }
        C0932b c0932b = (C0932b) layoutParams;
        int m5041a = m5041a(c0968p, c0974t, c0932b.getViewLayoutPosition());
        if (this.f2903i == 0) {
            c0510d.m6432b(C0510d.C0513c.m6376a(c0932b.m5030a(), c0932b.m5029b(), m5041a, 1, this.f2884b > 1 && c0932b.m5029b() == this.f2884b, false));
        } else {
            c0510d.m6432b(C0510d.C0513c.m6376a(m5041a, 1, c0932b.m5030a(), c0932b.m5029b(), this.f2884b > 1 && c0932b.m5029b() == this.f2884b, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.f2889g.m5028a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f2889g.m5028a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.f2889g.m5028a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.f2889g.m5028a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.f2889g.m5028a();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onLayoutChildren(RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        if (c0974t.m4849a()) {
            m5033l();
        }
        super.onLayoutChildren(c0968p, c0974t);
        m5034k();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void onLayoutCompleted(RecyclerView.C0974t c0974t) {
        super.onLayoutCompleted(c0974t);
        this.f2883a = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int scrollHorizontallyBy(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        m5032m();
        m5031n();
        return super.scrollHorizontallyBy(i, c0968p, c0974t);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public int scrollVerticallyBy(int i, RecyclerView.C0968p c0968p, RecyclerView.C0974t c0974t) {
        m5032m();
        m5031n();
        return super.scrollVerticallyBy(i, c0968p, c0974t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int i3;
        int i4;
        if (this.f2885c == null) {
            super.setMeasuredDimension(rect, i, i2);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f2903i == 1) {
            int chooseSize = chooseSize(i2, rect.height() + paddingTop, getMinimumHeight());
            int[] iArr = this.f2885c;
            int chooseSize2 = chooseSize(i, iArr[iArr.length - 1] + paddingLeft, getMinimumWidth());
            i4 = chooseSize;
            i3 = chooseSize2;
        } else {
            int chooseSize3 = chooseSize(i, rect.width() + paddingLeft, getMinimumWidth());
            int[] iArr2 = this.f2885c;
            int chooseSize4 = chooseSize(i2, iArr2[iArr2.length - 1] + paddingTop, getMinimumHeight());
            i3 = chooseSize3;
            i4 = chooseSize4;
        }
        setMeasuredDimension(i3, i4);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0956i
    public boolean supportsPredictiveItemAnimations() {
        return this.f2908n == null && !this.f2883a;
    }
}
