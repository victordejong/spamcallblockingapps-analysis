package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p026h.p027a.C0553c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager.class */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: c */
    int[] f3026c;

    /* renamed from: d */
    View[] f3027d;

    /* renamed from: z */
    private boolean f3032z;

    /* renamed from: a */
    boolean f3024a = false;

    /* renamed from: b */
    int f3025b = -1;

    /* renamed from: e */
    final SparseIntArray f3028e = new SparseIntArray();

    /* renamed from: f */
    final SparseIntArray f3029f = new SparseIntArray();

    /* renamed from: g */
    AbstractC0902c f3030g = new C0900a();

    /* renamed from: h */
    final Rect f3031h = new Rect();

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$a.class */
    public static final class C0900a extends AbstractC0902c {
        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0902c
        /* renamed from: a */
        public int mo19131a(int i) {
            return 1;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.AbstractC0902c
        /* renamed from: a */
        public int mo19130a(int i, int i2) {
            return i % i2;
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$b.class */
    public static class C0901b extends RecyclerView.C0930j {

        /* renamed from: a */
        int f3033a = -1;

        /* renamed from: b */
        int f3034b = 0;

        public C0901b(int i, int i2) {
            super(i, i2);
        }

        public C0901b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0901b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0901b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        /* renamed from: a */
        public int m19134a() {
            return this.f3033a;
        }

        /* renamed from: b */
        public int m19133b() {
            return this.f3034b;
        }
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/GridLayoutManager$c.class */
    public static abstract class AbstractC0902c {

        /* renamed from: a */
        final SparseIntArray f3035a = new SparseIntArray();

        /* renamed from: b */
        final SparseIntArray f3036b = new SparseIntArray();

        /* renamed from: c */
        private boolean f3037c = false;

        /* renamed from: d */
        private boolean f3038d = false;

        /* renamed from: a */
        static int m19129a(SparseIntArray sparseIntArray, int i) {
            int i2 = 0;
            int size = sparseIntArray.size() - 1;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (sparseIntArray.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            return (i4 < 0 || i4 >= sparseIntArray.size()) ? -1 : sparseIntArray.keyAt(i4);
        }

        /* renamed from: a */
        public abstract int mo19131a(int i);

        /* JADX WARN: Removed duplicated region for block: B:14:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x007e  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo19130a(int r5, int r6) {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                r0 = r4
                r1 = r5
                int r0 = r0.mo19131a(r1)
                r8 = r0
                r0 = r8
                r1 = r6
                if (r0 != r1) goto L13
                r0 = r7
                r5 = r0
            L11:
                r0 = r5
                return r0
            L13:
                r0 = r4
                boolean r0 = r0.f3037c
                if (r0 == 0) goto L84
                r0 = r4
                android.util.SparseIntArray r0 = r0.f3035a
                r1 = r5
                int r0 = m19129a(r0, r1)
                r9 = r0
                r0 = r9
                if (r0 < 0) goto L84
                r0 = r4
                android.util.SparseIntArray r0 = r0.f3035a
                r1 = r9
                int r0 = r0.get(r1)
                r1 = r4
                r2 = r9
                int r1 = r1.mo19131a(r2)
                int r0 = r0 + r1
                r10 = r0
                int r9 = r9 + 1
            L3e:
                r0 = r9
                r1 = r5
                if (r0 >= r1) goto L73
                r0 = r4
                r1 = r9
                int r0 = r0.mo19131a(r1)
                r11 = r0
                r0 = r10
                r1 = r11
                int r0 = r0 + r1
                r12 = r0
                r0 = r12
                r1 = r6
                if (r0 != r1) goto L62
                r0 = 0
                r10 = r0
            L5c:
                int r9 = r9 + 1
                goto L3e
            L62:
                r0 = r11
                r10 = r0
                r0 = r12
                r1 = r6
                if (r0 > r1) goto L5c
                r0 = r12
                r10 = r0
                goto L5c
            L73:
                r0 = r7
                r5 = r0
                r0 = r10
                r1 = r8
                int r0 = r0 + r1
                r1 = r6
                if (r0 > r1) goto L11
                r0 = r10
                r5 = r0
                goto L11
            L84:
                r0 = 0
                r9 = r0
                r0 = 0
                r10 = r0
                goto L3e
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.AbstractC0902c.mo19130a(int, int):int");
        }

        /* renamed from: a */
        public void m19132a() {
            this.f3035a.clear();
        }

        /* renamed from: b */
        int m19127b(int i, int i2) {
            int i3;
            if (!this.f3037c) {
                i3 = mo19130a(i, i2);
            } else {
                int i4 = this.f3035a.get(i, -1);
                i3 = i4;
                if (i4 == -1) {
                    i3 = mo19130a(i, i2);
                    this.f3035a.put(i, i3);
                }
            }
            return i3;
        }

        /* renamed from: b */
        public void m19128b() {
            this.f3036b.clear();
        }

        /* renamed from: c */
        int m19126c(int i, int i2) {
            int i3;
            if (!this.f3038d) {
                i3 = m19125d(i, i2);
            } else {
                int i4 = this.f3036b.get(i, -1);
                i3 = i4;
                if (i4 == -1) {
                    i3 = m19125d(i, i2);
                    this.f3036b.put(i, i3);
                }
            }
            return i3;
        }

        /* renamed from: d */
        public int m19125d(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int m19129a;
            if (!this.f3038d || (m19129a = m19129a(this.f3036b, i)) == -1) {
                i3 = 0;
                i4 = 0;
                i5 = 0;
            } else {
                int i6 = this.f3036b.get(m19129a);
                int i7 = m19129a + 1;
                int mo19131a = mo19131a(m19129a) + m19127b(m19129a, i2);
                i3 = i7;
                i4 = i6;
                i5 = mo19131a;
                if (mo19131a == i2) {
                    i4 = i6 + 1;
                    i5 = 0;
                    i3 = i7;
                }
            }
            int mo19131a2 = mo19131a(i);
            while (i3 < i) {
                int mo19131a3 = mo19131a(i3);
                i5 += mo19131a3;
                if (i5 == i2) {
                    i4++;
                    i5 = 0;
                } else if (i5 > i2) {
                    i4++;
                    i5 = mo19131a3;
                }
                i3++;
            }
            int i8 = i4;
            if (i5 + mo19131a2 > i2) {
                i8 = i4 + 1;
            }
            return i8;
        }
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        m19148a(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m19148a(m18991a(context, attributeSet, i, i2).f3119b);
    }

    /* renamed from: O */
    private void m19153O() {
        this.f3028e.clear();
        this.f3029f.clear();
    }

    /* renamed from: P */
    private void m19152P() {
        int y = m18910y();
        for (int i = 0; i < y; i++) {
            C0901b c0901b = (C0901b) m18927i(i).getLayoutParams();
            int f = c0901b.m18905f();
            this.f3028e.put(f, c0901b.m19133b());
            this.f3029f.put(f, c0901b.m19134a());
        }
    }

    /* renamed from: Q */
    private void m19151Q() {
        m19135m(m19085h() == 1 ? (m19010B() - m19006F()) - m19008D() : (m19009C() - m19005G()) - m19007E());
    }

    /* renamed from: R */
    private void m19150R() {
        if (this.f3027d == null || this.f3027d.length != this.f3025b) {
            this.f3027d = new View[this.f3025b];
        }
    }

    /* renamed from: a */
    private int m19144a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, int i) {
        int m19126c;
        if (!c0945u.m18824a()) {
            m19126c = this.f3030g.m19126c(i, this.f3025b);
        } else {
            int m18874b = c0937p.m18874b(i);
            if (m18874b == -1) {
                Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
                m19126c = 0;
            } else {
                m19126c = this.f3030g.m19126c(m18874b, this.f3025b);
            }
        }
        return m19126c;
    }

    /* renamed from: a */
    private void m19149a(float f, int i) {
        m19135m(Math.max(Math.round(this.f3025b * f), i));
    }

    /* renamed from: a */
    private void m19146a(View view, int i, int i2, boolean z) {
        RecyclerView.C0930j c0930j = (RecyclerView.C0930j) view.getLayoutParams();
        if (z ? m18986a(view, i, i2, c0930j) : m18958b(view, i, i2, c0930j)) {
            view.measure(i, i2);
        }
    }

    /* renamed from: a */
    private void m19145a(View view, int i, boolean z) {
        int a;
        int a2;
        C0901b c0901b = (C0901b) view.getLayoutParams();
        Rect rect = c0901b.f3123d;
        int i2 = rect.top + rect.bottom + c0901b.topMargin + c0901b.bottomMargin;
        int i3 = rect.left;
        int i4 = rect.right;
        int i5 = c0901b.rightMargin + i4 + i3 + c0901b.leftMargin;
        int m19147a = m19147a(c0901b.f3033a, c0901b.f3034b);
        if (this.f3047i == 1) {
            a2 = m18996a(m19147a, i, i5, c0901b.width, false);
            a = m18996a(this.f3048j.mo18454f(), m19011A(), i2, c0901b.height, true);
        } else {
            a = m18996a(m19147a, i, i2, c0901b.height, false);
            a2 = m18996a(this.f3048j.mo18454f(), m18909z(), i5, c0901b.width, true);
        }
        m19146a(view, a2, a, z);
    }

    /* renamed from: a */
    private void m19143a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, int i, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        if (z) {
            i3 = 1;
            i2 = i;
            i4 = 0;
        } else {
            i4 = i - 1;
            i3 = -1;
            i2 = -1;
        }
        while (i4 != i2) {
            View view = this.f3027d[i4];
            C0901b c0901b = (C0901b) view.getLayoutParams();
            c0901b.f3034b = m19138c(c0937p, c0945u, m18943d(view));
            c0901b.f3033a = i5;
            i5 += c0901b.f3034b;
            i4 += i3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
        if (r4[r4.length - 1] != r6) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int[] m19142a(int[] r4, int r5, int r6) {
        /*
            r0 = r4
            if (r0 == 0) goto L18
            r0 = r4
            int r0 = r0.length
            r1 = r5
            r2 = 1
            int r1 = r1 + r2
            if (r0 != r1) goto L18
            r0 = r4
            r7 = r0
            r0 = r4
            r1 = r4
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r1 = r6
            if (r0 == r1) goto L1e
        L18:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            int[] r0 = new int[r0]
            r7 = r0
        L1e:
            r0 = r7
            r1 = 0
            r2 = 0
            r0[r1] = r2
            r0 = r6
            r1 = r5
            int r0 = r0 / r1
            r8 = r0
            r0 = r6
            r1 = r5
            int r0 = r0 % r1
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = 0
            r6 = r0
            r0 = 0
            r11 = r0
        L34:
            r0 = r10
            r1 = r5
            if (r0 > r1) goto L68
            r0 = r6
            r1 = r9
            int r0 = r0 + r1
            r6 = r0
            r0 = r6
            if (r0 <= 0) goto L6a
            r0 = r5
            r1 = r6
            int r0 = r0 - r1
            r1 = r9
            if (r0 >= r1) goto L6a
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r12 = r0
            r0 = r6
            r1 = r5
            int r0 = r0 - r1
            r6 = r0
        L55:
            r0 = r11
            r1 = r12
            int r0 = r0 + r1
            r11 = r0
            r0 = r7
            r1 = r10
            r2 = r11
            r0[r1] = r2
            int r10 = r10 + 1
            goto L34
        L68:
            r0 = r7
            return r0
        L6a:
            r0 = r8
            r12 = r0
            goto L55
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.m19142a(int[], int, int):int[]");
    }

    /* renamed from: b */
    private int m19140b(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, int i) {
        int i2;
        if (!c0945u.m18824a()) {
            i2 = this.f3030g.m19127b(i, this.f3025b);
        } else {
            int i3 = this.f3029f.get(i, -1);
            i2 = i3;
            if (i3 == -1) {
                int m18874b = c0937p.m18874b(i);
                if (m18874b == -1) {
                    Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
                    i2 = 0;
                } else {
                    i2 = this.f3030g.m19127b(m18874b, this.f3025b);
                }
            }
        }
        return i2;
    }

    /* renamed from: b */
    private void m19139b(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, LinearLayoutManager.C0903a c0903a, int i) {
        int m19140b;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        int m19140b2 = m19140b(c0937p, c0945u, c0903a.f3056b);
        if (z) {
            while (m19140b2 > 0 && c0903a.f3056b > 0) {
                c0903a.f3056b--;
                m19140b2 = m19140b(c0937p, c0945u, c0903a.f3056b);
            }
            return;
        }
        int m18818e = c0945u.m18818e();
        int i2 = c0903a.f3056b;
        while (i2 < m18818e - 1 && (m19140b = m19140b(c0937p, c0945u, i2 + 1)) > m19140b2) {
            i2++;
            m19140b2 = m19140b;
        }
        c0903a.f3056b = i2;
    }

    /* renamed from: c */
    private int m19138c(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, int i) {
        int i2;
        if (!c0945u.m18824a()) {
            i2 = this.f3030g.mo19131a(i);
        } else {
            int i3 = this.f3028e.get(i, -1);
            i2 = i3;
            if (i3 == -1) {
                int m18874b = c0937p.m18874b(i);
                if (m18874b == -1) {
                    Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
                    i2 = 1;
                } else {
                    i2 = this.f3030g.mo19131a(m18874b);
                }
            }
        }
        return i2;
    }

    /* renamed from: i */
    private int m19137i(RecyclerView.C0945u c0945u) {
        int i = 0;
        if (m18910y() != 0) {
            if (c0945u.m18818e() == 0) {
                i = 0;
            } else {
                m19080j();
                View a = m19103a(!m19076l(), true);
                View b = m19093b(!m19076l(), true);
                i = 0;
                if (a != null) {
                    i = 0;
                    if (b != null) {
                        if (!m19076l()) {
                            i = this.f3030g.m19126c(c0945u.m18818e() - 1, this.f3025b) + 1;
                        } else {
                            i = (int) (((this.f3048j.mo18461b(b) - this.f3048j.mo18462a(a)) / ((this.f3030g.m19126c(m18943d(b), this.f3025b) - this.f3030g.m19126c(m18943d(a), this.f3025b)) + 1)) * (this.f3030g.m19126c(c0945u.m18818e() - 1, this.f3025b) + 1));
                        }
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: j */
    private int m19136j(RecyclerView.C0945u c0945u) {
        int i = 0;
        if (m18910y() != 0) {
            if (c0945u.m18818e() == 0) {
                i = 0;
            } else {
                m19080j();
                boolean l = m19076l();
                View a = m19103a(!l, true);
                View b = m19093b(!l, true);
                i = 0;
                if (a != null) {
                    i = 0;
                    if (b != null) {
                        int m19126c = this.f3030g.m19126c(m18943d(a), this.f3025b);
                        int m19126c2 = this.f3030g.m19126c(m18943d(b), this.f3025b);
                        int max = this.f3049k ? Math.max(0, ((this.f3030g.m19126c(c0945u.m18818e() - 1, this.f3025b) + 1) - Math.max(m19126c, m19126c2)) - 1) : Math.max(0, Math.min(m19126c, m19126c2));
                        i = max;
                        if (l) {
                            i = Math.round(((Math.abs(this.f3048j.mo18461b(b) - this.f3048j.mo18462a(a)) / ((this.f3030g.m19126c(m18943d(b), this.f3025b) - this.f3030g.m19126c(m18943d(a), this.f3025b)) + 1)) * max) + (this.f3048j.mo18460c() - this.f3048j.mo18462a(a)));
                        }
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: m */
    private void m19135m(int i) {
        this.f3026c = m19142a(this.f3026c, this.f3025b, i);
    }

    /* renamed from: a */
    int m19147a(int i, int i2) {
        return (this.f3047i != 1 || !m19083i()) ? this.f3026c[i + i2] - this.f3026c[i] : this.f3026c[this.f3025b - i] - this.f3026c[(this.f3025b - i) - i2];
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public int mo18764a(int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        m19151Q();
        m19150R();
        return super.mo18764a(i, c0937p, c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public int mo18751a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return this.f3047i == 0 ? this.f3025b : c0945u.m18818e() < 1 ? 0 : m19144a(c0937p, c0945u, c0945u.m18818e() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public View mo18758a(View view, int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        int i2;
        int i3;
        int y;
        View view2;
        boolean z;
        int min;
        View e = m18937e(view);
        if (e == null) {
            view2 = null;
        } else {
            C0901b c0901b = (C0901b) e.getLayoutParams();
            int i4 = c0901b.f3033a;
            int i5 = c0901b.f3033a + c0901b.f3034b;
            if (super.mo18758a(view, i, c0937p, c0945u) == null) {
                view2 = null;
            } else {
                if ((m19090f(i) == 1) != this.f3049k) {
                    i2 = m18910y() - 1;
                    i3 = -1;
                    y = -1;
                } else {
                    i2 = 0;
                    i3 = 1;
                    y = m18910y();
                }
                boolean z2 = this.f3047i == 1 && m19083i();
                View view3 = null;
                int i6 = -1;
                int i7 = 0;
                View view4 = null;
                int i8 = -1;
                int i9 = 0;
                int m19144a = m19144a(c0937p, c0945u, i2);
                int i10 = i2;
                while (i10 != y) {
                    int m19144a2 = m19144a(c0937p, c0945u, i10);
                    View i11 = m18927i(i10);
                    if (i11 == e) {
                        break;
                    }
                    if (i11.hasFocusable() && m19144a2 != m19144a) {
                        if (view3 != null) {
                            break;
                        }
                    } else {
                        C0901b c0901b2 = (C0901b) i11.getLayoutParams();
                        int i12 = c0901b2.f3033a;
                        int i13 = c0901b2.f3033a + c0901b2.f3034b;
                        if (i11.hasFocusable() && i12 == i4) {
                            view2 = i11;
                            if (i13 == i5) {
                                break;
                            }
                        }
                        if ((!i11.hasFocusable() || view3 != null) && (i11.hasFocusable() || view4 != null)) {
                            int min2 = Math.min(i13, i5) - Math.max(i12, i4);
                            if (!i11.hasFocusable()) {
                                z = false;
                                if (view3 == null) {
                                    z = false;
                                    if (m18978a(i11, false, true)) {
                                        if (min2 > i9) {
                                            z = true;
                                        } else {
                                            z = false;
                                            if (min2 == i9) {
                                                z = false;
                                                if (z2 == (i12 > i8)) {
                                                    z = true;
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if (min2 > i7) {
                                z = true;
                            } else {
                                z = false;
                                if (min2 == i7) {
                                    z = false;
                                    if (z2 == (i12 > i6)) {
                                        z = true;
                                    }
                                }
                            }
                        } else {
                            z = true;
                        }
                        if (z) {
                            if (i11.hasFocusable()) {
                                i6 = c0901b2.f3033a;
                                i7 = Math.min(i13, i5) - Math.max(i12, i4);
                                min = i9;
                                view3 = i11;
                            } else {
                                i8 = c0901b2.f3033a;
                                min = Math.min(i13, i5) - Math.max(i12, i4);
                                view4 = i11;
                            }
                            i10 += i3;
                            i9 = min;
                        }
                    }
                    min = i9;
                    i10 += i3;
                    i9 = min;
                }
                if (view3 == null) {
                    view3 = view4;
                }
                view2 = view3;
            }
        }
        return view2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    View mo19110a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, int i, int i2, int i3) {
        View view;
        m19080j();
        int mo18460c = this.f3048j.mo18460c();
        int mo18458d = this.f3048j.mo18458d();
        int i4 = i2 > i ? 1 : -1;
        View view2 = null;
        View view3 = null;
        while (true) {
            if (i != i2) {
                View i5 = m18927i(i);
                int d = m18943d(i5);
                if (d >= 0 && d < i3 && m19140b(c0937p, c0945u, d) == 0) {
                    if (!((RecyclerView.C0930j) i5.getLayoutParams()).m18907d()) {
                        if (this.f3048j.mo18462a(i5) < mo18458d) {
                            view = i5;
                            if (this.f3048j.mo18461b(i5) >= mo18460c) {
                                break;
                            }
                        }
                        if (view2 == null) {
                            view2 = i5;
                        }
                    } else if (view3 == null) {
                        view3 = i5;
                    }
                }
                i += i4;
            } else {
                if (view2 == null) {
                    view2 = view3;
                }
                view = view2;
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public RecyclerView.C0930j mo18768a() {
        return this.f3047i == 0 ? new C0901b(-2, -1) : new C0901b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public RecyclerView.C0930j mo18762a(Context context, AttributeSet attributeSet) {
        return new C0901b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public RecyclerView.C0930j mo18755a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0901b((ViewGroup.MarginLayoutParams) layoutParams) : new C0901b(layoutParams);
    }

    /* renamed from: a */
    public void m19148a(int i) {
        if (i == this.f3025b) {
            return;
        }
        this.f3024a = true;
        if (i < 1) {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
        this.f3025b = i;
        this.f3030g.m19132a();
        m18918q();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18761a(Rect rect, int i, int i2) {
        int a;
        int a2;
        if (this.f3026c == null) {
            super.mo18761a(rect, i, i2);
        }
        int F = m19006F() + m19008D();
        int E = m19007E() + m19005G();
        if (this.f3047i == 1) {
            a2 = m18997a(i2, E + rect.height(), m19001K());
            a = m18997a(i, F + this.f3026c[this.f3026c.length - 1], m19002J());
        } else {
            a = m18997a(i, F + rect.width(), m19002J());
            a2 = m18997a(i2, E + this.f3026c[this.f3026c.length - 1], m19001K());
        }
        m18934f(a, a2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18750a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, View view, C0553c c0553c) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C0901b)) {
            super.m18981a(view, c0553c);
            return;
        }
        C0901b c0901b = (C0901b) layoutParams;
        int m19144a = m19144a(c0937p, c0945u, c0901b.m18905f());
        if (this.f3047i == 0) {
            c0553c.m20503b(C0553c.C0556c.m20450a(c0901b.m19134a(), c0901b.m19133b(), m19144a, 1, false, false));
        } else {
            c0553c.m20503b(C0553c.C0556c.m20450a(m19144a, 1, c0901b.m19134a(), c0901b.m19133b(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    public void mo19108a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, LinearLayoutManager.C0903a c0903a, int i) {
        super.mo19108a(c0937p, c0945u, c0903a, i);
        m19151Q();
        if (c0945u.m18818e() > 0 && !c0945u.m18824a()) {
            m19139b(c0937p, c0945u, c0903a, i);
        }
        m19150R();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    void mo19107a(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u, LinearLayoutManager.C0905c c0905c, LinearLayoutManager.C0904b c0904b) {
        int i;
        int i2;
        int i3;
        int i4;
        int makeMeasureSpec;
        int a;
        View m19064a;
        int mo18450i = this.f3048j.mo18450i();
        boolean z = mo18450i != 1073741824;
        int i5 = m18910y() > 0 ? this.f3026c[this.f3025b] : 0;
        if (z) {
            m19151Q();
        }
        boolean z2 = c0905c.f3068e == 1;
        int i6 = 0;
        int i7 = this.f3025b;
        if (!z2) {
            i7 = m19140b(c0937p, c0945u, c0905c.f3067d) + m19138c(c0937p, c0945u, c0905c.f3067d);
            i = 0;
        } else {
            i = 0;
        }
        while (i < this.f3025b && c0905c.m19063a(c0945u) && i7 > 0) {
            int i8 = c0905c.f3067d;
            int m19138c = m19138c(c0937p, c0945u, i8);
            if (m19138c > this.f3025b) {
                throw new IllegalArgumentException("Item at position " + i8 + " requires " + m19138c + " spans but GridLayoutManager has only " + this.f3025b + " spans.");
            }
            i7 -= m19138c;
            if (i7 < 0 || (m19064a = c0905c.m19064a(c0937p)) == null) {
                break;
            }
            i6 += m19138c;
            this.f3027d[i] = m19064a;
            i++;
        }
        if (i == 0) {
            c0904b.f3061b = true;
            return;
        }
        int i9 = 0;
        float f = 0.0f;
        m19143a(c0937p, c0945u, i, z2);
        int i10 = 0;
        while (i10 < i) {
            View view = this.f3027d[i10];
            if (c0905c.f3075l == null) {
                if (z2) {
                    m18960b(view);
                } else {
                    m18959b(view, 0);
                }
            } else if (z2) {
                m18990a(view);
            } else {
                m18989a(view, 0);
            }
            m18957b(view, this.f3031h);
            m19145a(view, mo18450i, false);
            int mo18455e = this.f3048j.mo18455e(view);
            int i11 = i9;
            if (mo18455e > i9) {
                i11 = mo18455e;
            }
            float mo18453f = (this.f3048j.mo18453f(view) * 1.0f) / ((C0901b) view.getLayoutParams()).f3034b;
            if (mo18453f > f) {
                f = mo18453f;
            }
            i10++;
            i9 = i11;
        }
        if (z) {
            m19149a(f, i5);
            int i12 = 0;
            int i13 = 0;
            while (true) {
                i2 = i12;
                if (i13 >= i) {
                    break;
                }
                View view2 = this.f3027d[i13];
                m19145a(view2, 1073741824, true);
                int mo18455e2 = this.f3048j.mo18455e(view2);
                if (mo18455e2 > i12) {
                    i12 = mo18455e2;
                }
                i13++;
            }
        } else {
            i2 = i9;
        }
        for (int i14 = 0; i14 < i; i14++) {
            View view3 = this.f3027d[i14];
            if (this.f3048j.mo18455e(view3) != i2) {
                C0901b c0901b = (C0901b) view3.getLayoutParams();
                Rect rect = c0901b.f3123d;
                int i15 = rect.top + rect.bottom + c0901b.topMargin + c0901b.bottomMargin;
                int i16 = rect.right + rect.left + c0901b.leftMargin + c0901b.rightMargin;
                int m19147a = m19147a(c0901b.f3033a, c0901b.f3034b);
                if (this.f3047i == 1) {
                    makeMeasureSpec = m18996a(m19147a, 1073741824, i16, c0901b.width, false);
                    a = View.MeasureSpec.makeMeasureSpec(i2 - i15, 1073741824);
                } else {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i2 - i16, 1073741824);
                    a = m18996a(m19147a, 1073741824, i15, c0901b.height, false);
                }
                m19146a(view3, makeMeasureSpec, a, true);
            }
        }
        c0904b.f3060a = i2;
        int i17 = 0;
        int i18 = 0;
        if (this.f3047i == 1) {
            if (c0905c.f3069f == -1) {
                int i19 = c0905c.f3065b;
                i4 = i19 - i2;
                i3 = i19;
            } else {
                i4 = c0905c.f3065b;
                i3 = i4 + i2;
            }
        } else if (c0905c.f3069f == -1) {
            i18 = c0905c.f3065b;
            i17 = i18 - i2;
            i3 = 0;
            i4 = 0;
        } else {
            i17 = c0905c.f3065b;
            i18 = i17 + i2;
            i3 = 0;
            i4 = 0;
        }
        int i20 = i3;
        int i21 = i18;
        int i22 = i17;
        for (int i23 = 0; i23 < i; i23++) {
            View view4 = this.f3027d[i23];
            C0901b c0901b2 = (C0901b) view4.getLayoutParams();
            if (this.f3047i != 1) {
                i4 = this.f3026c[c0901b2.f3033a] + m19007E();
                i20 = i4 + this.f3048j.mo18453f(view4);
            } else if (m19083i()) {
                i21 = m19008D() + this.f3026c[this.f3025b - c0901b2.f3033a];
                i22 = i21 - this.f3048j.mo18453f(view4);
            } else {
                i22 = this.f3026c[c0901b2.f3033a] + m19008D();
                i21 = i22 + this.f3048j.mo18453f(view4);
            }
            m18987a(view4, i22, i4, i21, i20);
            if (c0901b2.m18907d() || c0901b2.m18906e()) {
                c0904b.f3062c = true;
            }
            c0904b.f3063d |= view4.hasFocusable();
        }
        Arrays.fill(this.f3027d, (Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18746a(RecyclerView.C0945u c0945u) {
        super.mo18746a(c0945u);
        this.f3024a = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    void mo19105a(RecyclerView.C0945u c0945u, LinearLayoutManager.C0905c c0905c, RecyclerView.AbstractC0925i.AbstractC0928a abstractC0928a) {
        int i = this.f3025b;
        for (int i2 = 0; i2 < this.f3025b && c0905c.m19063a(c0945u) && i > 0; i2++) {
            int i3 = c0905c.f3067d;
            abstractC0928a.mo18498b(i3, Math.max(0, c0905c.f3070g));
            i -= this.f3030g.mo19131a(i3);
            c0905c.f3067d += c0905c.f3068e;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18744a(RecyclerView recyclerView) {
        this.f3030g.m19132a();
        this.f3030g.m19128b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18743a(RecyclerView recyclerView, int i, int i2) {
        this.f3030g.m19132a();
        this.f3030g.m19128b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18742a(RecyclerView recyclerView, int i, int i2, int i3) {
        this.f3030g.m19132a();
        this.f3030g.m19128b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public void mo18741a(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.f3030g.m19132a();
        this.f3030g.m19128b();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: a */
    public void mo19104a(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.mo19104a(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: a */
    public boolean mo18753a(RecyclerView.C0930j c0930j) {
        return c0930j instanceof C0901b;
    }

    /* renamed from: b */
    public int m19141b() {
        return this.f3025b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: b */
    public int mo18730b(int i, RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        m19151Q();
        m19150R();
        return super.mo18730b(i, c0937p, c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: b */
    public int mo18727b(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        return this.f3047i == 1 ? this.f3025b : c0945u.m18818e() < 1 ? 0 : m19144a(c0937p, c0945u, c0945u.m18818e() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: b */
    public int mo18725b(RecyclerView.C0945u c0945u) {
        return this.f3032z ? m19137i(c0945u) : super.mo18725b(c0945u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: b */
    public void mo18723b(RecyclerView recyclerView, int i, int i2) {
        this.f3030g.m19132a();
        this.f3030g.m19128b();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: c */
    public int mo18716c(RecyclerView.C0945u c0945u) {
        return this.f3032z ? m19137i(c0945u) : super.mo18716c(c0945u);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: c */
    public void mo18718c(RecyclerView.C0937p c0937p, RecyclerView.C0945u c0945u) {
        if (c0945u.m18824a()) {
            m19152P();
        }
        super.mo18718c(c0937p, c0945u);
        m19153O();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: c */
    public boolean mo18721c() {
        return this.f3052n == null && !this.f3024a;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: d */
    public int mo18711d(RecyclerView.C0945u c0945u) {
        return this.f3032z ? m19136j(c0945u) : super.mo18711d(c0945u);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0925i
    /* renamed from: e */
    public int mo18708e(RecyclerView.C0945u c0945u) {
        return this.f3032z ? m19136j(c0945u) : super.mo18708e(c0945u);
    }
}
