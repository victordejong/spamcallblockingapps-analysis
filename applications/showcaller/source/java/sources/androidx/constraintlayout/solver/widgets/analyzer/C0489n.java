package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.C0458d;
import androidx.constraintlayout.solver.widgets.C0491b;
import androidx.constraintlayout.solver.widgets.C0493d;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.solver.widgets.analyzer.n */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/n.class */
public class C0489n {

    /* renamed from: a */
    static int f2268a;

    /* renamed from: c */
    int f2270c;

    /* renamed from: e */
    int f2272e;

    /* renamed from: b */
    ArrayList<ConstraintWidget> f2269b = new ArrayList<>();

    /* renamed from: d */
    boolean f2271d = false;

    /* renamed from: f */
    ArrayList<C0490a> f2273f = null;

    /* renamed from: g */
    private int f2274g = -1;

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/n$a.class */
    public class C0490a {

        /* renamed from: a */
        WeakReference<ConstraintWidget> f2275a;

        /* renamed from: b */
        int f2276b;

        /* renamed from: c */
        int f2277c;

        /* renamed from: d */
        int f2278d;

        /* renamed from: e */
        int f2279e;

        /* renamed from: f */
        int f2280f;

        /* renamed from: g */
        int f2281g;

        public C0490a(ConstraintWidget constraintWidget, C0458d c0458d, int i) {
            C0489n.this = r6;
            this.f2275a = new WeakReference<>(constraintWidget);
            this.f2276b = c0458d.m34111x(constraintWidget.f2108K);
            this.f2277c = c0458d.m34111x(constraintWidget.f2110L);
            this.f2278d = c0458d.m34111x(constraintWidget.f2112M);
            this.f2279e = c0458d.m34111x(constraintWidget.f2114N);
            this.f2280f = c0458d.m34111x(constraintWidget.f2115O);
            this.f2281g = i;
        }
    }

    public C0489n(int i) {
        this.f2270c = -1;
        this.f2272e = 0;
        int i2 = f2268a;
        f2268a = i2 + 1;
        this.f2270c = i2;
        this.f2272e = i;
    }

    /* renamed from: e */
    private String m33882e() {
        int i = this.f2272e;
        return i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown";
    }

    /* renamed from: j */
    private int m33877j(C0458d c0458d, ArrayList<ConstraintWidget> arrayList, int i) {
        int m34111x;
        int m34111x2;
        C0493d c0493d = (C0493d) arrayList.get(0).m34031L();
        c0458d.m34135D();
        c0493d.mo33781g(c0458d, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).mo33781g(c0458d, false);
        }
        if (i == 0 && c0493d.f2315Y0 > 0) {
            C0491b.m33875b(c0493d, c0458d, arrayList, 0);
        }
        if (i == 1 && c0493d.f2316Z0 > 0) {
            C0491b.m33875b(c0493d, c0458d, arrayList, 1);
        }
        try {
            c0458d.m34109z();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f2273f = new ArrayList<>();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.f2273f.add(new C0490a(arrayList.get(i3), c0458d, i));
        }
        if (i == 0) {
            m34111x = c0458d.m34111x(c0493d.f2108K);
            m34111x2 = c0458d.m34111x(c0493d.f2112M);
            c0458d.m34135D();
        } else {
            m34111x = c0458d.m34111x(c0493d.f2110L);
            m34111x2 = c0458d.m34111x(c0493d.f2114N);
            c0458d.m34135D();
        }
        return m34111x2 - m34111x;
    }

    /* renamed from: a */
    public boolean m33886a(ConstraintWidget constraintWidget) {
        if (this.f2269b.contains(constraintWidget)) {
            return false;
        }
        this.f2269b.add(constraintWidget);
        return true;
    }

    /* renamed from: b */
    public void m33885b(ArrayList<C0489n> arrayList) {
        int size = this.f2269b.size();
        if (this.f2274g != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                C0489n c0489n = arrayList.get(i);
                if (this.f2274g == c0489n.f2270c) {
                    m33880g(this.f2272e, c0489n);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    /* renamed from: c */
    public int m33884c() {
        return this.f2270c;
    }

    /* renamed from: d */
    public int m33883d() {
        return this.f2272e;
    }

    /* renamed from: f */
    public int m33881f(C0458d c0458d, int i) {
        if (this.f2269b.size() == 0) {
            return 0;
        }
        return m33877j(c0458d, this.f2269b, i);
    }

    /* renamed from: g */
    public void m33880g(int i, C0489n c0489n) {
        Iterator<ConstraintWidget> it = this.f2269b.iterator();
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            c0489n.m33886a(next);
            if (i == 0) {
                next.f2111L0 = c0489n.m33884c();
            } else {
                next.f2113M0 = c0489n.m33884c();
            }
        }
        this.f2274g = c0489n.f2270c;
    }

    /* renamed from: h */
    public void m33879h(boolean z) {
        this.f2271d = z;
    }

    /* renamed from: i */
    public void m33878i(int i) {
        this.f2272e = i;
    }

    public String toString() {
        String str = m33882e() + " [" + this.f2270c + "] <";
        Iterator<ConstraintWidget> it = this.f2269b.iterator();
        while (it.hasNext()) {
            ConstraintWidget next = it.next();
            str = str + " " + next.m33970u();
        }
        return str + " >";
    }
}
