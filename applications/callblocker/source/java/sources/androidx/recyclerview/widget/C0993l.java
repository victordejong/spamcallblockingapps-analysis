package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l.class */
public class C0993l extends AbstractC0999p {

    /* renamed from: b */
    private AbstractC0990k f3403b;

    /* renamed from: c */
    private AbstractC0990k f3404c;

    /* renamed from: a */
    private int m18449a(RecyclerView.AbstractC0925i abstractC0925i, View view, AbstractC0990k abstractC0990k) {
        return (abstractC0990k.mo18462a(view) + (abstractC0990k.mo18455e(view) / 2)) - (abstractC0990k.mo18460c() + (abstractC0990k.mo18454f() / 2));
    }

    /* renamed from: a */
    private View m18448a(RecyclerView.AbstractC0925i abstractC0925i, AbstractC0990k abstractC0990k) {
        View view = null;
        View view2 = null;
        int m18910y = abstractC0925i.m18910y();
        if (m18910y != 0) {
            int mo18460c = abstractC0990k.mo18460c();
            int mo18454f = abstractC0990k.mo18454f() / 2;
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            while (true) {
                view2 = view;
                if (i2 >= m18910y) {
                    break;
                }
                View m18927i = abstractC0925i.m18927i(i2);
                int abs = Math.abs((abstractC0990k.mo18462a(m18927i) + (abstractC0990k.mo18455e(m18927i) / 2)) - (mo18460c + mo18454f));
                if (abs < i) {
                    view = m18927i;
                    i = abs;
                }
                i2++;
            }
        }
        return view2;
    }

    /* renamed from: b */
    private boolean m18447b(RecyclerView.AbstractC0925i abstractC0925i, int i, int i2) {
        boolean z = true;
        if (abstractC0925i.mo18707f()) {
            if (i <= 0) {
                z = false;
            }
        } else if (i2 <= 0) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
        if (r0.y < 0.0f) goto L10;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m18446d(androidx.recyclerview.widget.RecyclerView.AbstractC0925i r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            int r0 = r0.m19003I()
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            boolean r0 = r0 instanceof androidx.recyclerview.widget.RecyclerView.AbstractC0942t.AbstractC0944b
            if (r0 == 0) goto L3d
            r0 = r5
            androidx.recyclerview.widget.RecyclerView$t$b r0 = (androidx.recyclerview.widget.RecyclerView.AbstractC0942t.AbstractC0944b) r0
            r1 = r7
            r2 = 1
            int r1 = r1 - r2
            android.graphics.PointF r0 = r0.mo18712d(r1)
            r5 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            if (r0 == 0) goto L3d
            r0 = r5
            float r0 = r0.x
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L3a
            r0 = r6
            r8 = r0
            r0 = r5
            float r0 = r0.y
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L3d
        L3a:
            r0 = 1
            r8 = r0
        L3d:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0993l.m18446d(androidx.recyclerview.widget.RecyclerView$i):boolean");
    }

    /* renamed from: e */
    private AbstractC0990k m18445e(RecyclerView.AbstractC0925i abstractC0925i) {
        return abstractC0925i.mo18704g() ? m18444f(abstractC0925i) : abstractC0925i.mo18707f() ? m18443g(abstractC0925i) : null;
    }

    /* renamed from: f */
    private AbstractC0990k m18444f(RecyclerView.AbstractC0925i abstractC0925i) {
        if (this.f3403b == null || this.f3403b.f3400a != abstractC0925i) {
            this.f3403b = AbstractC0990k.m18464b(abstractC0925i);
        }
        return this.f3403b;
    }

    /* renamed from: g */
    private AbstractC0990k m18443g(RecyclerView.AbstractC0925i abstractC0925i) {
        if (this.f3404c == null || this.f3404c.f3400a != abstractC0925i) {
            this.f3404c = AbstractC0990k.m18467a(abstractC0925i);
        }
        return this.f3404c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x013e, code lost:
        if (r0 >= r0) goto L50;
     */
    @Override // androidx.recyclerview.widget.AbstractC0999p
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int mo18401a(androidx.recyclerview.widget.RecyclerView.AbstractC0925i r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0993l.mo18401a(androidx.recyclerview.widget.RecyclerView$i, int, int):int");
    }

    @Override // androidx.recyclerview.widget.AbstractC0999p
    /* renamed from: a */
    public View mo18402a(RecyclerView.AbstractC0925i abstractC0925i) {
        return abstractC0925i.mo18704g() ? m18448a(abstractC0925i, m18444f(abstractC0925i)) : abstractC0925i.mo18707f() ? m18448a(abstractC0925i, m18443g(abstractC0925i)) : null;
    }

    @Override // androidx.recyclerview.widget.AbstractC0999p
    /* renamed from: a */
    public int[] mo18400a(RecyclerView.AbstractC0925i abstractC0925i, View view) {
        int[] iArr = new int[2];
        if (abstractC0925i.mo18707f()) {
            iArr[0] = m18449a(abstractC0925i, view, m18443g(abstractC0925i));
        } else {
            iArr[0] = 0;
        }
        if (abstractC0925i.mo18704g()) {
            iArr[1] = m18449a(abstractC0925i, view, m18444f(abstractC0925i));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.AbstractC0999p
    /* renamed from: b */
    protected C0986h mo18396b(RecyclerView.AbstractC0925i abstractC0925i) {
        return !(abstractC0925i instanceof RecyclerView.AbstractC0942t.AbstractC0944b) ? null : new C0986h(this.f3411a.getContext()) { // from class: androidx.recyclerview.widget.l.1
            @Override // androidx.recyclerview.widget.C0986h
            /* renamed from: a */
            protected float mo3113a(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.C0986h, androidx.recyclerview.widget.RecyclerView.AbstractC0942t
            /* renamed from: a */
            protected void mo18392a(View view, RecyclerView.C0945u c0945u, RecyclerView.AbstractC0942t.C0943a c0943a) {
                int[] mo18400a = C0993l.this.mo18400a(C0993l.this.f3411a.getLayoutManager(), view);
                int i = mo18400a[0];
                int i2 = mo18400a[1];
                int a = m18493a(Math.max(Math.abs(i), Math.abs(i2)));
                if (a > 0) {
                    c0943a.m18827a(i, i2, a, this.f3390b);
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.C0986h
            /* renamed from: b */
            public int mo18442b(int i) {
                return Math.min(100, super.mo18442b(i));
            }
        };
    }
}
