package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/k.class */
public class C2697k extends AbstractC2703o {

    /* renamed from: b */
    private AbstractC2694j f10300b;

    /* renamed from: c */
    private AbstractC2694j f10301c;

    /* renamed from: a */
    private static int m40058a(View view, AbstractC2694j abstractC2694j) {
        return (abstractC2694j.mo40071a(view) + (abstractC2694j.mo40063e(view) / 2)) - (abstractC2694j.mo40070b() + (abstractC2694j.mo40064e() / 2));
    }

    /* renamed from: a */
    private static View m40057a(RecyclerView.AbstractC2637i abstractC2637i, AbstractC2694j abstractC2694j) {
        int childCount = abstractC2637i.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int mo40070b = abstractC2694j.mo40070b();
        int mo40064e = abstractC2694j.mo40064e() / 2;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = abstractC2637i.getChildAt(i2);
            int abs = Math.abs((abstractC2694j.mo40071a(childAt) + (abstractC2694j.mo40063e(childAt) / 2)) - (mo40070b + mo40064e));
            int i3 = i;
            if (abs < i) {
                view = childAt;
                i3 = abs;
            }
            i2++;
            i = i3;
        }
        return view;
    }

    /* renamed from: c */
    private AbstractC2694j m40056c(RecyclerView.AbstractC2637i abstractC2637i) {
        AbstractC2694j abstractC2694j = this.f10300b;
        if (abstractC2694j == null || abstractC2694j.f10297a != abstractC2637i) {
            this.f10300b = AbstractC2694j.m40073b(abstractC2637i);
        }
        return this.f10300b;
    }

    /* renamed from: d */
    private AbstractC2694j m40055d(RecyclerView.AbstractC2637i abstractC2637i) {
        AbstractC2694j abstractC2694j = this.f10301c;
        if (abstractC2694j == null || abstractC2694j.f10297a != abstractC2637i) {
            this.f10301c = AbstractC2694j.m40075a(abstractC2637i);
        }
        return this.f10301c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0185, code lost:
        if (r0.y < com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L65;
     */
    @Override // androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo31235a(androidx.recyclerview.widget.RecyclerView.AbstractC2637i r5, int r6, int r7) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C2697k.mo31235a(androidx.recyclerview.widget.RecyclerView$i, int, int):int");
    }

    @Override // androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: a */
    public View mo29893a(RecyclerView.AbstractC2637i abstractC2637i) {
        if (abstractC2637i.mo31643f()) {
            return m40057a(abstractC2637i, m40056c(abstractC2637i));
        }
        if (!abstractC2637i.mo31644e()) {
            return null;
        }
        return m40057a(abstractC2637i, m40055d(abstractC2637i));
    }

    @Override // androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: a */
    public final int[] mo29892a(RecyclerView.AbstractC2637i abstractC2637i, View view) {
        int[] iArr = new int[2];
        if (abstractC2637i.mo31644e()) {
            iArr[0] = m40058a(view, m40055d(abstractC2637i));
        } else {
            iArr[0] = 0;
        }
        if (abstractC2637i.mo31643f()) {
            iArr[1] = m40058a(view, m40056c(abstractC2637i));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: b */
    public final RecyclerView.AbstractC2651r mo29889b(RecyclerView.AbstractC2637i abstractC2637i) {
        if (!(abstractC2637i instanceof RecyclerView.AbstractC2651r.AbstractC2653b)) {
            return null;
        }
        return new C2690g(this.f10308a.getContext()) { // from class: androidx.recyclerview.widget.k.1
            @Override // androidx.recyclerview.widget.C2690g
            /* renamed from: a */
            protected final float mo10799a(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.C2690g, androidx.recyclerview.widget.RecyclerView.AbstractC2651r
            /* renamed from: a */
            protected final void mo29887a(View view, RecyclerView.C2654s c2654s, RecyclerView.AbstractC2651r.C2652a c2652a) {
                C2697k c2697k = C2697k.this;
                int[] mo29892a = c2697k.mo29892a(c2697k.f10308a.getLayoutManager(), view);
                int i = mo29892a[0];
                int i2 = mo29892a[1];
                int a = m40088a(Math.max(Math.abs(i), Math.abs(i2)));
                if (a > 0) {
                    c2652a.m40308a(i, i2, a, this.f10287b);
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.C2690g
            /* renamed from: b */
            public final int mo40054b(int i) {
                return Math.min(100, super.mo40054b(i));
            }
        };
    }
}
