package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.a.c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager.class */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: c  reason: collision with root package name */
    int[] f5298c;

    /* renamed from: d  reason: collision with root package name */
    View[] f5299d;
    private boolean z;

    /* renamed from: a  reason: collision with root package name */
    boolean f5296a = false;

    /* renamed from: b  reason: collision with root package name */
    public int f5297b = -1;
    final SparseIntArray e = new SparseIntArray();
    final SparseIntArray f = new SparseIntArray();
    b g = new a();
    final Rect h = new Rect();

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$LayoutParams.class */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        int f5300a = -1;

        /* renamed from: b  reason: collision with root package name */
        int f5301b = 0;

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

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$a.class */
    public static final class a extends b {
        @Override // androidx.recyclerview.widget.GridLayoutManager.b
        public final int a(int i, int i2) {
            return i % i2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$b.class */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        final SparseIntArray f5302a = new SparseIntArray();

        /* renamed from: b  reason: collision with root package name */
        final SparseIntArray f5303b = new SparseIntArray();

        /* renamed from: c  reason: collision with root package name */
        private boolean f5304c = false;

        /* renamed from: d  reason: collision with root package name */
        private boolean f5305d = false;

        private static int a(SparseIntArray sparseIntArray, int i) {
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

        private int d(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int a2;
            if (!this.f5305d || (a2 = a(this.f5303b, i)) == -1) {
                i4 = 0;
                i5 = 0;
                i3 = 0;
            } else {
                int i6 = this.f5303b.get(a2);
                int i7 = a2 + 1;
                int b2 = b(a2, i2) + 1;
                i4 = b2;
                i5 = i6;
                i3 = i7;
                if (b2 == i2) {
                    i5 = i6 + 1;
                    i4 = 0;
                    i3 = i7;
                }
            }
            while (i3 < i) {
                int i8 = i4 + 1;
                if (i8 == i2) {
                    i5++;
                    i4 = 0;
                } else {
                    i4 = i8;
                    i5 = i5;
                    if (i8 > i2) {
                        i5++;
                        i4 = 1;
                    }
                }
                i3++;
            }
            int i9 = i5;
            if (i4 + 1 > i2) {
                i9 = i5 + 1;
            }
            return i9;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0067 A[RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int a(int r4, int r5) {
            /*
                r3 = this;
                r0 = 1
                r1 = r5
                if (r0 != r1) goto L_0x0007
                r0 = 0
                return r0
            L_0x0007:
                r0 = r3
                boolean r0 = r0.f5304c
                if (r0 == 0) goto L_0x002d
                r0 = r3
                android.util.SparseIntArray r0 = r0.f5302a
                r1 = r4
                int r0 = a(r0, r1)
                r6 = r0
                r0 = r6
                if (r0 < 0) goto L_0x002d
                r0 = r3
                android.util.SparseIntArray r0 = r0.f5302a
                r1 = r6
                int r0 = r0.get(r1)
                r1 = 1
                int r0 = r0 + r1
                r7 = r0
                int r6 = r6 + 1
                goto L_0x0032
            L_0x002d:
                r0 = 0
                r6 = r0
                r0 = 0
                r7 = r0
            L_0x0032:
                r0 = r6
                r1 = r4
                if (r0 >= r1) goto L_0x005c
                r0 = r7
                r1 = 1
                int r0 = r0 + r1
                r8 = r0
                r0 = r8
                r1 = r5
                if (r0 != r1) goto L_0x0049
                r0 = 0
                r7 = r0
                goto L_0x0056
            L_0x0049:
                r0 = r8
                r7 = r0
                r0 = r8
                r1 = r5
                if (r0 <= r1) goto L_0x0056
                r0 = 1
                r7 = r0
            L_0x0056:
                int r6 = r6 + 1
                goto L_0x0032
            L_0x005c:
                r0 = r7
                r1 = 1
                int r0 = r0 + r1
                r1 = r5
                if (r0 > r1) goto L_0x0067
                r0 = r7
                return r0
            L_0x0067:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.b.a(int, int):int");
        }

        final int b(int i, int i2) {
            if (!this.f5304c) {
                return a(i, i2);
            }
            int i3 = this.f5302a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int a2 = a(i, i2);
            this.f5302a.put(i, a2);
            return a2;
        }

        final int c(int i, int i2) {
            if (!this.f5305d) {
                return d(i, i2);
            }
            int i3 = this.f5303b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int d2 = d(i, i2);
            this.f5303b.put(i, d2);
            return d2;
        }
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        a(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        a(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(a(context, attributeSet, i, i2).f5351b);
    }

    private int a(RecyclerView.o oVar, RecyclerView.s sVar, int i) {
        if (!sVar.g) {
            return this.g.c(i, this.f5297b);
        }
        int a2 = oVar.a(i);
        if (a2 != -1) {
            return this.g.c(a2, this.f5297b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. ".concat(String.valueOf(i)));
        return 0;
    }

    private void a(View view, int i, int i2, boolean z) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z ? a(view, i, i2, layoutParams) : b(view, i, i2, layoutParams)) {
            view.measure(i, i2);
        }
    }

    private void a(View view, int i, boolean z) {
        int i2;
        int i3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.f5333d;
        int i4 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
        int i5 = rect.left + rect.right + layoutParams.leftMargin + layoutParams.rightMargin;
        int g = g(layoutParams.f5300a, layoutParams.f5301b);
        if (this.i == 1) {
            i2 = a(g, i, i5, layoutParams.width, false);
            i3 = a(this.j.e(), getHeightMode(), i4, layoutParams.height, true);
        } else {
            i3 = a(g, i, i4, layoutParams.height, false);
            i2 = a(this.j.e(), getWidthMode(), i5, layoutParams.width, true);
        }
        a(view, i2, i3, z);
    }

    private void a(RecyclerView.o oVar, RecyclerView.s sVar, int i, boolean z) {
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
            View view = this.f5299d[i3];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.f5301b = c(oVar, sVar, c(view));
            layoutParams.f5300a = i4;
            i4 += layoutParams.f5301b;
            i3 += i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r4[r4.length - 1] != r6) goto L_0x001b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] a(int[] r4, int r5, int r6) {
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.a(int[], int, int):int[]");
    }

    private int b(RecyclerView.o oVar, RecyclerView.s sVar, int i) {
        if (!sVar.g) {
            return this.g.b(i, this.f5297b);
        }
        int i2 = this.f.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int a2 = oVar.a(i);
        if (a2 != -1) {
            return this.g.b(a2, this.f5297b);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:".concat(String.valueOf(i)));
        return 0;
    }

    private int c(RecyclerView.o oVar, RecyclerView.s sVar, int i) {
        if (!sVar.g) {
            return 1;
        }
        int i2 = this.e.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (oVar.a(i) != -1) {
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:".concat(String.valueOf(i)));
        return 1;
    }

    private int g(int i, int i2) {
        if (this.i != 1 || !isLayoutRTL()) {
            int[] iArr = this.f5298c;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f5298c;
        int i3 = this.f5297b;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    private int h(RecyclerView.s sVar) {
        if (getChildCount() == 0 || sVar.a() == 0) {
            return 0;
        }
        g();
        View a2 = a(!isSmoothScrollbarEnabled());
        View b2 = b(!isSmoothScrollbarEnabled());
        if (a2 == null || b2 == null) {
            return 0;
        }
        if (!isSmoothScrollbarEnabled()) {
            return this.g.c(sVar.a() - 1, this.f5297b) + 1;
        }
        int b3 = this.j.b(b2);
        int a3 = this.j.a(a2);
        int c2 = this.g.c(c(a2), this.f5297b);
        return (int) (((b3 - a3) / ((this.g.c(c(b2), this.f5297b) - c2) + 1)) * (this.g.c(sVar.a() - 1, this.f5297b) + 1));
    }

    private int i(RecyclerView.s sVar) {
        if (getChildCount() == 0 || sVar.a() == 0) {
            return 0;
        }
        g();
        boolean isSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
        View a2 = a(!isSmoothScrollbarEnabled);
        View b2 = b(!isSmoothScrollbarEnabled);
        if (a2 == null || b2 == null) {
            return 0;
        }
        int c2 = this.g.c(c(a2), this.f5297b);
        int c3 = this.g.c(c(b2), this.f5297b);
        int max = this.k ? Math.max(0, ((this.g.c(sVar.a() - 1, this.f5297b) + 1) - Math.max(c2, c3)) - 1) : Math.max(0, Math.min(c2, c3));
        if (!isSmoothScrollbarEnabled) {
            return max;
        }
        return Math.round((max * (Math.abs(this.j.b(b2) - this.j.a(a2)) / ((this.g.c(c(b2), this.f5297b) - this.g.c(c(a2), this.f5297b)) + 1))) + (this.j.b() - this.j.a(a2)));
    }

    private void i(int i) {
        this.f5298c = a(this.f5298c, this.f5297b, i);
    }

    private void n() {
        int i;
        int i2;
        if (getOrientation() == 1) {
            i2 = getWidth() - getPaddingRight();
            i = getPaddingLeft();
        } else {
            i2 = getHeight() - getPaddingBottom();
            i = getPaddingTop();
        }
        i(i2 - i);
    }

    private void o() {
        View[] viewArr = this.f5299d;
        if (viewArr == null || viewArr.length != this.f5297b) {
            this.f5299d = new View[this.f5297b];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final int a(int i, RecyclerView.o oVar, RecyclerView.s sVar) {
        n();
        o();
        return super.a(i, oVar, sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int a(RecyclerView.o oVar, RecyclerView.s sVar) {
        if (this.i == 0) {
            return this.f5297b;
        }
        if (sVar.a() <= 0) {
            return 0;
        }
        return a(oVar, sVar, sVar.a() - 1) + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x018e, code lost:
        if (r19 == (r0 > r24)) goto L_0x0148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01e9, code lost:
        if (r19 == (r0 > r21)) goto L_0x01c8;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x023c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01f7  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View a(android.view.View r7, int r8, androidx.recyclerview.widget.RecyclerView.o r9, androidx.recyclerview.widget.RecyclerView.s r10) {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.a(android.view.View, int, androidx.recyclerview.widget.RecyclerView$o, androidx.recyclerview.widget.RecyclerView$s):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    final View a(RecyclerView.o oVar, RecyclerView.s sVar, boolean z, boolean z2) {
        int i;
        r11 = getChildCount();
        int i2 = -1;
        int i3 = 1;
        if (z2) {
            i = getChildCount() - 1;
            i3 = -1;
        } else {
            i = 0;
        }
        int a2 = sVar.a();
        g();
        int b2 = this.j.b();
        int c2 = this.j.c();
        View view = null;
        View view2 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            int c3 = c(childAt);
            view = view;
            view2 = view2;
            if (c3 >= 0) {
                view = view;
                view2 = view2;
                if (c3 < a2) {
                    view = view;
                    view2 = view2;
                    if (b(oVar, sVar, c3) != 0) {
                        continue;
                    } else if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).f5332c.isRemoved()) {
                        view = view;
                        view2 = view2;
                        if (view2 == null) {
                            view2 = childAt;
                            view = view;
                        }
                    } else if (this.j.a(childAt) < c2 && this.j.b(childAt) >= b2) {
                        return childAt;
                    } else {
                        view = view;
                        view2 = view2;
                        if (view == null) {
                            view = childAt;
                            view2 = view2;
                        }
                    }
                } else {
                    continue;
                }
            }
            i += i3;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final RecyclerView.LayoutParams a(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final RecyclerView.LayoutParams a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a() {
        this.g.f5302a.clear();
        this.g.f5303b.clear();
    }

    public final void a(int i) {
        if (i != this.f5297b) {
            this.f5296a = true;
            if (i > 0) {
                this.f5297b = i;
                this.g.f5302a.clear();
                k();
                return;
            }
            throw new IllegalArgumentException("Span count should be at least 1. Provided ".concat(String.valueOf(i)));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(int i, int i2) {
        this.g.f5302a.clear();
        this.g.f5303b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(Rect rect, int i, int i2) {
        int i3;
        int i4;
        if (this.f5298c == null) {
            super.a(rect, i, i2);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.i == 1) {
            i4 = a(i2, rect.height() + paddingTop, getMinimumHeight());
            int[] iArr = this.f5298c;
            i3 = a(i, iArr[iArr.length - 1] + paddingLeft, getMinimumWidth());
        } else {
            i3 = a(i, rect.width() + paddingLeft, getMinimumWidth());
            int[] iArr2 = this.f5298c;
            i4 = a(i2, iArr2[iArr2.length - 1] + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void a(RecyclerView.o oVar, RecyclerView.s sVar, View view, c cVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.a(view, cVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int a2 = a(oVar, sVar, layoutParams2.f5332c.getLayoutPosition());
        if (this.i == 0) {
            cVar.b(c.C0052c.a(layoutParams2.f5300a, layoutParams2.f5301b, a2, 1, false));
        } else {
            cVar.b(c.C0052c.a(a2, 1, layoutParams2.f5300a, layoutParams2.f5301b, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void a(RecyclerView.o oVar, RecyclerView.s sVar, LinearLayoutManager.a aVar, int i) {
        int i2;
        int b2;
        super.a(oVar, sVar, aVar, i);
        n();
        if (sVar.a() > 0 && !sVar.g) {
            boolean z = i == 1;
            int b3 = b(oVar, sVar, aVar.f5311b);
            if (z) {
                while (b3 > 0 && aVar.f5311b > 0) {
                    aVar.f5311b--;
                    b3 = b(oVar, sVar, aVar.f5311b);
                }
            } else {
                int a2 = sVar.a();
                int i3 = aVar.f5311b;
                while (i3 < a2 - 1 && (b2 = b(oVar, sVar, (i2 = i3 + 1))) > b3) {
                    i3 = i2;
                    b3 = b2;
                }
                aVar.f5311b = i3;
            }
        }
        o();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    final void a(RecyclerView.o oVar, RecyclerView.s sVar, LinearLayoutManager.c cVar, LinearLayoutManager.b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        View a2;
        int h = this.j.h();
        boolean z = h != 1073741824;
        int i7 = getChildCount() > 0 ? this.f5298c[this.f5297b] : 0;
        if (z) {
            n();
        }
        boolean z2 = cVar.e == 1;
        int i8 = this.f5297b;
        if (!z2) {
            i8 = b(oVar, sVar, cVar.f5321d) + c(oVar, sVar, cVar.f5321d);
        }
        int i9 = 0;
        while (i9 < this.f5297b && cVar.a(sVar) && i8 > 0) {
            int i10 = cVar.f5321d;
            int c2 = c(oVar, sVar, i10);
            if (c2 <= this.f5297b) {
                i8 -= c2;
                if (i8 < 0 || (a2 = cVar.a(oVar)) == null) {
                    break;
                }
                this.f5299d[i9] = a2;
                i9++;
            } else {
                throw new IllegalArgumentException("Item at position " + i10 + " requires " + c2 + " spans but GridLayoutManager has only " + this.f5297b + " spans.");
            }
        }
        if (i9 == 0) {
            bVar.f5315b = true;
            return;
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        a(oVar, sVar, i9, z2);
        int i11 = 0;
        for (int i12 = 0; i12 < i9; i12++) {
            View view = this.f5299d[i12];
            if (cVar.l == null) {
                if (z2) {
                    b(view);
                } else {
                    b(view, 0);
                }
            } else if (z2) {
                a(view);
            } else {
                a(view, 0);
            }
            b(view, this.h);
            a(view, h, false);
            int e = this.j.e(view);
            i11 = i11;
            if (e > i11) {
                i11 = e;
            }
            float f2 = (this.j.f(view) * 1.0f) / ((LayoutParams) view.getLayoutParams()).f5301b;
            f = f;
            if (f2 > f) {
                f = f2;
            }
        }
        int i13 = i11;
        if (z) {
            i(Math.max(Math.round(f * this.f5297b), i7));
            int i14 = 0;
            int i15 = 0;
            while (true) {
                i13 = i15;
                if (i14 >= i9) {
                    break;
                }
                View view2 = this.f5299d[i14];
                a(view2, 1073741824, true);
                int e2 = this.j.e(view2);
                i15 = i15;
                if (e2 > i15) {
                    i15 = e2;
                }
                i14++;
            }
        }
        for (int i16 = 0; i16 < i9; i16++) {
            View view3 = this.f5299d[i16];
            if (this.j.e(view3) != i13) {
                LayoutParams layoutParams = (LayoutParams) view3.getLayoutParams();
                Rect rect = layoutParams.f5333d;
                int i17 = rect.top + rect.bottom + layoutParams.topMargin + layoutParams.bottomMargin;
                int i18 = rect.left + rect.right + layoutParams.leftMargin + layoutParams.rightMargin;
                int g = g(layoutParams.f5300a, layoutParams.f5301b);
                if (this.i == 1) {
                    i6 = a(g, 1073741824, i18, layoutParams.width, false);
                    i5 = View.MeasureSpec.makeMeasureSpec(i13 - i17, 1073741824);
                } else {
                    i6 = View.MeasureSpec.makeMeasureSpec(i13 - i18, 1073741824);
                    i5 = a(g, 1073741824, i17, layoutParams.height, false);
                }
                a(view3, i6, i5, true);
            }
        }
        bVar.f5314a = i13;
        if (this.i != 1) {
            if (cVar.f == -1) {
                i4 = cVar.f5319b;
                i2 = i4 - i13;
            } else {
                int i19 = cVar.f5319b;
                i2 = i19;
                i4 = i13 + i19;
            }
            i3 = 0;
            i = 0;
        } else if (cVar.f == -1) {
            i3 = cVar.f5319b;
            i = i3 - i13;
            i2 = 0;
            i4 = 0;
        } else {
            int i20 = cVar.f5319b;
            i3 = i13 + i20;
            i = i20;
            i4 = 0;
            i2 = 0;
        }
        int i21 = 0;
        while (i21 < i9) {
            View view4 = this.f5299d[i21];
            LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
            if (this.i != 1) {
                int paddingTop = getPaddingTop() + this.f5298c[layoutParams2.f5300a];
                i = paddingTop;
                i3 = this.j.f(view4) + paddingTop;
            } else if (isLayoutRTL()) {
                i4 = getPaddingLeft() + this.f5298c[this.f5297b - layoutParams2.f5300a];
                i2 = i4 - this.j.f(view4);
            } else {
                int paddingLeft = getPaddingLeft() + this.f5298c[layoutParams2.f5300a];
                i2 = paddingLeft;
                i4 = this.j.f(view4) + paddingLeft;
            }
            a(view4, i2, i, i4, i3);
            if (layoutParams2.f5332c.isRemoved() || layoutParams2.f5332c.isUpdated()) {
                bVar.f5316c = true;
            }
            bVar.f5317d = view4.hasFocusable() | bVar.f5317d;
            i21++;
            i2 = i2;
        }
        Arrays.fill(this.f5299d, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final void a(RecyclerView.s sVar) {
        super.a(sVar);
        this.f5296a = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    final void a(RecyclerView.s sVar, LinearLayoutManager.c cVar, RecyclerView.i.a aVar) {
        int i = this.f5297b;
        for (int i2 = 0; i2 < this.f5297b && cVar.a(sVar) && i > 0; i2++) {
            aVar.a(cVar.f5321d, Math.max(0, cVar.g));
            i--;
            cVar.f5321d += cVar.e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final boolean a(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final int b(int i, RecyclerView.o oVar, RecyclerView.s sVar) {
        n();
        o();
        return super.b(i, oVar, sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final int b(RecyclerView.o oVar, RecyclerView.s sVar) {
        if (this.i == 1) {
            return this.f5297b;
        }
        if (sVar.a() <= 0) {
            return 0;
        }
        return a(oVar, sVar, sVar.a() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final int b(RecyclerView.s sVar) {
        return this.z ? h(sVar) : super.b(sVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final RecyclerView.LayoutParams b() {
        return this.i == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void b(int i, int i2) {
        this.g.f5302a.clear();
        this.g.f5303b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final int c(RecyclerView.s sVar) {
        return this.z ? h(sVar) : super.c(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void c(int i, int i2) {
        this.g.f5302a.clear();
        this.g.f5303b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final void c(RecyclerView.o oVar, RecyclerView.s sVar) {
        if (sVar.g) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
                int layoutPosition = layoutParams.f5332c.getLayoutPosition();
                this.e.put(layoutPosition, layoutParams.f5301b);
                this.f.put(layoutPosition, layoutParams.f5300a);
            }
        }
        super.c(oVar, sVar);
        this.e.clear();
        this.f.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final boolean c() {
        return this.n == null && !this.f5296a;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final int d(RecyclerView.s sVar) {
        return this.z ? i(sVar) : super.d(sVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.i
    public final void d(int i, int i2) {
        this.g.f5302a.clear();
        this.g.f5303b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.i
    public final int e(RecyclerView.s sVar) {
        return this.z ? i(sVar) : super.e(sVar);
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
