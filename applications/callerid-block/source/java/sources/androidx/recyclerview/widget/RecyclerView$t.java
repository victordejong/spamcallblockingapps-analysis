package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.k;
import d.h.m.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t.class */
public final class RecyclerView$t {

    /* renamed from: a */
    final ArrayList<RecyclerView$a0> f2251a;

    /* renamed from: d */
    private final List<RecyclerView$a0> f2254d;

    /* renamed from: g */
    RecyclerView$s f2257g;

    /* renamed from: h */
    private RecyclerView$y f2258h;

    /* renamed from: i */
    final /* synthetic */ RecyclerView f2259i;

    /* renamed from: b */
    ArrayList<RecyclerView$a0> f2252b = null;

    /* renamed from: c */
    final ArrayList<RecyclerView$a0> f2253c = new ArrayList<>();

    /* renamed from: e */
    private int f2255e = 2;

    /* renamed from: f */
    int f2256f = 2;

    public RecyclerView$t(RecyclerView recyclerView) {
        this.f2259i = recyclerView;
        ArrayList<RecyclerView$a0> arrayList = new ArrayList<>();
        this.f2251a = arrayList;
        this.f2254d = Collections.unmodifiableList(arrayList);
    }

    /* renamed from: H */
    private boolean m12569H(RecyclerView$a0 recyclerView$a0, int i, int i2, long j) {
        recyclerView$a0.f2213s = null;
        recyclerView$a0.f2212r = this.f2259i;
        int m12790l = recyclerView$a0.m12790l();
        long nanoTime = this.f2259i.getNanoTime();
        if (j == Long.MAX_VALUE || this.f2257g.m12578k(m12790l, nanoTime, j)) {
            this.f2259i.l.m12841c(recyclerView$a0, i);
            this.f2257g.m12585d(recyclerView$a0.m12790l(), this.f2259i.getNanoTime() - nanoTime);
            m12562b(recyclerView$a0);
            if (!this.f2259i.i0.m12508e()) {
                return true;
            }
            recyclerView$a0.f2201g = i2;
            return true;
        }
        return false;
    }

    /* renamed from: b */
    private void m12562b(RecyclerView$a0 recyclerView$a0) {
        if (this.f2259i.t0()) {
            View view = recyclerView$a0.f2195a;
            if (t.z(view) == 0) {
                t.x0(view, 1);
            }
            k kVar = this.f2259i.p0;
            if (kVar == null) {
                return;
            }
            k.a n = kVar.n();
            if (n instanceof k.a) {
                n.o(view);
            }
            t.n0(view, n);
        }
    }

    /* renamed from: q */
    private void m12547q(ViewGroup viewGroup, boolean z) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                m12547q((ViewGroup) childAt, true);
            }
        }
        if (!z) {
            return;
        }
        if (viewGroup.getVisibility() == 4) {
            viewGroup.setVisibility(0);
            viewGroup.setVisibility(4);
            return;
        }
        int visibility = viewGroup.getVisibility();
        viewGroup.setVisibility(4);
        viewGroup.setVisibility(visibility);
    }

    /* renamed from: r */
    private void m12546r(RecyclerView$a0 recyclerView$a0) {
        View view = recyclerView$a0.f2195a;
        if (view instanceof ViewGroup) {
            m12547q((ViewGroup) view, false);
        }
    }

    /* renamed from: A */
    void m12576A(int i) {
        m12563a(this.f2253c.get(i), true);
        this.f2253c.remove(i);
    }

    /* renamed from: B */
    public void m12575B(View view) {
        RecyclerView$a0 g0 = RecyclerView.g0(view);
        if (g0.m12778x()) {
            this.f2259i.removeDetachedView(view, false);
        }
        if (g0.m12779w()) {
            g0.m12803K();
        } else if (g0.m12802L()) {
            g0.m12797e();
        }
        m12574C(g0);
        if (this.f2259i.N == null || g0.m12781u()) {
            return;
        }
        this.f2259i.N.m12761j(g0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
        if (r5.m12781u() != false) goto L23;
     */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m12574C(androidx.recyclerview.widget.RecyclerView$a0 r5) {
        /*
            Method dump skipped, instructions count: 521
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView$t.m12574C(androidx.recyclerview.widget.RecyclerView$a0):void");
    }

    /* renamed from: D */
    public void m12573D(View view) {
        ArrayList<RecyclerView$a0> arrayList;
        RecyclerView$a0 g0 = RecyclerView.g0(view);
        if (!g0.m12786p(12) && g0.m12777y() && !this.f2259i.q(g0)) {
            if (this.f2252b == null) {
                this.f2252b = new ArrayList<>();
            }
            g0.m12806H(this, true);
            arrayList = this.f2252b;
        } else if (g0.m12782t() && !g0.m12780v() && !this.f2259i.l.m12834j()) {
            throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + this.f2259i.Q());
        } else {
            g0.m12806H(this, false);
            arrayList = this.f2251a;
        }
        arrayList.add(g0);
    }

    /* renamed from: E */
    void m12572E(RecyclerView$s recyclerView$s) {
        RecyclerView$s recyclerView$s2 = this.f2257g;
        if (recyclerView$s2 != null) {
            recyclerView$s2.m12586c();
        }
        this.f2257g = recyclerView$s;
        if (recyclerView$s == null || this.f2259i.getAdapter() == null) {
            return;
        }
        this.f2257g.m12588a();
    }

    /* renamed from: F */
    void m12571F(RecyclerView$y recyclerView$y) {
    }

    /* renamed from: G */
    public void m12570G(int i) {
        this.f2255e = i;
        m12566K();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0374  */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.recyclerview.widget.RecyclerView$a0 m12568I(int r8, boolean r9, long r10) {
        /*
            Method dump skipped, instructions count: 1140
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView$t.m12568I(int, boolean, long):androidx.recyclerview.widget.RecyclerView$a0");
    }

    /* renamed from: J */
    public void m12567J(RecyclerView$a0 recyclerView$a0) {
        (recyclerView$a0.f2209o ? this.f2252b : this.f2251a).remove(recyclerView$a0);
        recyclerView$a0.f2208n = null;
        recyclerView$a0.f2209o = false;
        recyclerView$a0.m12797e();
    }

    /* renamed from: K */
    void m12566K() {
        RecyclerView$n recyclerView$n = this.f2259i.m;
        this.f2256f = this.f2255e + (recyclerView$n != null ? recyclerView$n.f2235m : 0);
        for (int size = this.f2253c.size() - 1; size >= 0 && this.f2253c.size() > this.f2256f; size--) {
            m12576A(size);
        }
    }

    /* renamed from: L */
    boolean m12565L(RecyclerView$a0 recyclerView$a0) {
        if (recyclerView$a0.m12780v()) {
            return this.f2259i.i0.m12508e();
        }
        int i = recyclerView$a0.f2197c;
        if (i < 0 || i >= this.f2259i.l.m12838f()) {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + recyclerView$a0 + this.f2259i.Q());
        }
        boolean z = false;
        if (!this.f2259i.i0.m12508e() && this.f2259i.l.m12836h(recyclerView$a0.f2197c) != recyclerView$a0.m12790l()) {
            return false;
        }
        if (!this.f2259i.l.m12834j()) {
            return true;
        }
        if (recyclerView$a0.m12791k() == this.f2259i.l.m12837g(recyclerView$a0.f2197c)) {
            z = true;
        }
        return z;
    }

    /* renamed from: M */
    void m12564M(int i, int i2) {
        int i3;
        for (int size = this.f2253c.size() - 1; size >= 0; size--) {
            RecyclerView$a0 recyclerView$a0 = this.f2253c.get(size);
            if (recyclerView$a0 != null && (i3 = recyclerView$a0.f2197c) >= i && i3 < i2 + i) {
                recyclerView$a0.m12800b(2);
                m12576A(size);
            }
        }
    }

    /* renamed from: a */
    public void m12563a(RecyclerView$a0 recyclerView$a0, boolean z) {
        RecyclerView.s(recyclerView$a0);
        View view = recyclerView$a0.f2195a;
        k kVar = this.f2259i.p0;
        if (kVar != null) {
            k.a n = kVar.n();
            t.n0(view, n instanceof k.a ? n.n(view) : null);
        }
        if (z) {
            m12557g(recyclerView$a0);
        }
        recyclerView$a0.f2213s = null;
        recyclerView$a0.f2212r = null;
        m12555i().m12580i(recyclerView$a0);
    }

    /* renamed from: c */
    public void m12561c() {
        this.f2251a.clear();
        m12538z();
    }

    /* renamed from: d */
    void m12560d() {
        int size = this.f2253c.size();
        for (int i = 0; i < size; i++) {
            this.f2253c.get(i).m12799c();
        }
        int size2 = this.f2251a.size();
        for (int i2 = 0; i2 < size2; i2++) {
            this.f2251a.get(i2).m12799c();
        }
        ArrayList<RecyclerView$a0> arrayList = this.f2252b;
        if (arrayList != null) {
            int size3 = arrayList.size();
            for (int i3 = 0; i3 < size3; i3++) {
                this.f2252b.get(i3).m12799c();
            }
        }
    }

    /* renamed from: e */
    public void m12559e() {
        this.f2251a.clear();
        ArrayList<RecyclerView$a0> arrayList = this.f2252b;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    /* renamed from: f */
    public int m12558f(int i) {
        if (i >= 0 && i < this.f2259i.i0.m12511b()) {
            return !this.f2259i.i0.m12508e() ? i : this.f2259i.e.m(i);
        }
        throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + this.f2259i.i0.m12511b() + this.f2259i.Q());
    }

    /* renamed from: g */
    void m12557g(RecyclerView$a0 recyclerView$a0) {
        RecyclerView$u recyclerView$u = this.f2259i.n;
        if (recyclerView$u != null) {
            recyclerView$u.m12537a(recyclerView$a0);
        }
        int size = this.f2259i.o.size();
        for (int i = 0; i < size; i++) {
            ((RecyclerView$u) this.f2259i.o.get(i)).m12537a(recyclerView$a0);
        }
        RecyclerView$Adapter recyclerView$Adapter = this.f2259i.l;
        if (recyclerView$Adapter != null) {
            recyclerView$Adapter.m12824t(recyclerView$a0);
        }
        RecyclerView recyclerView = this.f2259i;
        if (recyclerView.i0 != null) {
            recyclerView.g.m12330q(recyclerView$a0);
        }
    }

    /* renamed from: h */
    RecyclerView$a0 m12556h(int i) {
        int size;
        int m;
        ArrayList<RecyclerView$a0> arrayList = this.f2252b;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return null;
        }
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView$a0 recyclerView$a0 = this.f2252b.get(i2);
            if (!recyclerView$a0.m12802L() && recyclerView$a0.m12789m() == i) {
                recyclerView$a0.m12800b(32);
                return recyclerView$a0;
            }
        }
        if (!this.f2259i.l.m12834j() || (m = this.f2259i.e.m(i)) <= 0 || m >= this.f2259i.l.m12838f()) {
            return null;
        }
        long m12837g = this.f2259i.l.m12837g(m);
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView$a0 recyclerView$a02 = this.f2252b.get(i3);
            if (!recyclerView$a02.m12802L() && recyclerView$a02.m12791k() == m12837g) {
                recyclerView$a02.m12800b(32);
                return recyclerView$a02;
            }
        }
        return null;
    }

    /* renamed from: i */
    RecyclerView$s m12555i() {
        if (this.f2257g == null) {
            this.f2257g = new RecyclerView$s();
        }
        return this.f2257g;
    }

    /* renamed from: j */
    public int m12554j() {
        return this.f2251a.size();
    }

    /* renamed from: k */
    public List<RecyclerView$a0> m12553k() {
        return this.f2254d;
    }

    /* renamed from: l */
    RecyclerView$a0 m12552l(long j, int i, boolean z) {
        for (int size = this.f2251a.size() - 1; size >= 0; size--) {
            RecyclerView$a0 recyclerView$a0 = this.f2251a.get(size);
            if (recyclerView$a0.m12791k() == j && !recyclerView$a0.m12802L()) {
                if (i == recyclerView$a0.m12790l()) {
                    recyclerView$a0.m12800b(32);
                    if (recyclerView$a0.m12780v() && !this.f2259i.i0.m12508e()) {
                        recyclerView$a0.m12808F(2, 14);
                    }
                    return recyclerView$a0;
                } else if (!z) {
                    this.f2251a.remove(size);
                    this.f2259i.removeDetachedView(recyclerView$a0.f2195a, false);
                    m12539y(recyclerView$a0.f2195a);
                }
            }
        }
        for (int size2 = this.f2253c.size() - 1; size2 >= 0; size2--) {
            RecyclerView$a0 recyclerView$a02 = this.f2253c.get(size2);
            if (recyclerView$a02.m12791k() == j && !recyclerView$a02.m12784r()) {
                if (i == recyclerView$a02.m12790l()) {
                    if (!z) {
                        this.f2253c.remove(size2);
                    }
                    return recyclerView$a02;
                } else if (!z) {
                    m12576A(size2);
                    return null;
                }
            }
        }
        return null;
    }

    /* renamed from: m */
    RecyclerView$a0 m12551m(int i, boolean z) {
        View m12437e;
        int size = this.f2251a.size();
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView$a0 recyclerView$a0 = this.f2251a.get(i2);
            if (!recyclerView$a0.m12802L() && recyclerView$a0.m12789m() == i && !recyclerView$a0.m12782t() && (this.f2259i.i0.f2282h || !recyclerView$a0.m12780v())) {
                recyclerView$a0.m12800b(32);
                return recyclerView$a0;
            }
        }
        if (z || (m12437e = this.f2259i.f.m12437e(i)) == null) {
            int size2 = this.f2253c.size();
            for (int i3 = 0; i3 < size2; i3++) {
                RecyclerView$a0 recyclerView$a02 = this.f2253c.get(i3);
                if (!recyclerView$a02.m12782t() && recyclerView$a02.m12789m() == i && !recyclerView$a02.m12784r()) {
                    if (!z) {
                        this.f2253c.remove(i3);
                    }
                    return recyclerView$a02;
                }
            }
            return null;
        }
        RecyclerView$a0 g0 = RecyclerView.g0(m12437e);
        this.f2259i.f.m12423s(m12437e);
        int m12429m = this.f2259i.f.m12429m(m12437e);
        if (m12429m != -1) {
            this.f2259i.f.m12438d(m12429m);
            m12573D(m12437e);
            g0.m12800b(8224);
            return g0;
        }
        throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + g0 + this.f2259i.Q());
    }

    /* renamed from: n */
    public View m12550n(int i) {
        return this.f2251a.get(i).f2195a;
    }

    /* renamed from: o */
    public View m12549o(int i) {
        return m12548p(i, false);
    }

    /* renamed from: p */
    View m12548p(int i, boolean z) {
        return m12568I(i, z, Long.MAX_VALUE).f2195a;
    }

    /* renamed from: s */
    void m12545s() {
        int size = this.f2253c.size();
        for (int i = 0; i < size; i++) {
            RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) this.f2253c.get(i).f2195a.getLayoutParams();
            if (recyclerView$LayoutParams != null) {
                recyclerView$LayoutParams.f2191c = true;
            }
        }
    }

    /* renamed from: t */
    void m12544t() {
        int size = this.f2253c.size();
        for (int i = 0; i < size; i++) {
            RecyclerView$a0 recyclerView$a0 = this.f2253c.get(i);
            if (recyclerView$a0 != null) {
                recyclerView$a0.m12800b(6);
                recyclerView$a0.m12801a(null);
            }
        }
        RecyclerView$Adapter recyclerView$Adapter = this.f2259i.l;
        if (recyclerView$Adapter == null || !recyclerView$Adapter.m12834j()) {
            m12538z();
        }
    }

    /* renamed from: u */
    void m12543u(int i, int i2) {
        int size = this.f2253c.size();
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView$a0 recyclerView$a0 = this.f2253c.get(i3);
            if (recyclerView$a0 != null && recyclerView$a0.f2197c >= i) {
                recyclerView$a0.m12813A(i2, false);
            }
        }
    }

    /* renamed from: v */
    void m12542v(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (i < i2) {
            i5 = -1;
            i4 = i;
            i3 = i2;
        } else {
            i5 = 1;
            i3 = i;
            i4 = i2;
        }
        int size = this.f2253c.size();
        for (int i7 = 0; i7 < size; i7++) {
            RecyclerView$a0 recyclerView$a0 = this.f2253c.get(i7);
            if (recyclerView$a0 != null && (i6 = recyclerView$a0.f2197c) >= i4 && i6 <= i3) {
                if (i6 == i) {
                    recyclerView$a0.m12813A(i2 - i, false);
                } else {
                    recyclerView$a0.m12813A(i5, false);
                }
            }
        }
    }

    /* renamed from: w */
    void m12541w(int i, int i2, boolean z) {
        for (int size = this.f2253c.size() - 1; size >= 0; size--) {
            RecyclerView$a0 recyclerView$a0 = this.f2253c.get(size);
            if (recyclerView$a0 != null) {
                int i3 = recyclerView$a0.f2197c;
                if (i3 >= i + i2) {
                    recyclerView$a0.m12813A(-i2, z);
                } else if (i3 >= i) {
                    recyclerView$a0.m12800b(8);
                    m12576A(size);
                }
            }
        }
    }

    /* renamed from: x */
    void m12540x(RecyclerView$Adapter recyclerView$Adapter, RecyclerView$Adapter recyclerView$Adapter2, boolean z) {
        m12561c();
        m12555i().m12581h(recyclerView$Adapter, recyclerView$Adapter2, z);
    }

    /* renamed from: y */
    public void m12539y(View view) {
        RecyclerView$a0 g0 = RecyclerView.g0(view);
        g0.f2208n = null;
        g0.f2209o = false;
        g0.m12797e();
        m12574C(g0);
    }

    /* renamed from: z */
    void m12538z() {
        for (int size = this.f2253c.size() - 1; size >= 0; size--) {
            m12576A(size);
        }
        this.f2253c.clear();
        if (RecyclerView.F0) {
            this.f2259i.h0.b();
        }
    }
}
