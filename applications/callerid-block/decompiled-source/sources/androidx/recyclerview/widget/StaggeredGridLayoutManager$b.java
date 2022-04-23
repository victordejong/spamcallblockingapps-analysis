package androidx.recyclerview.widget;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
class StaggeredGridLayoutManager$b {

    /* renamed from: a */
    int f2316a;

    /* renamed from: b */
    int f2317b;

    /* renamed from: c */
    boolean f2318c;

    /* renamed from: d */
    boolean f2319d;

    /* renamed from: e */
    boolean f2320e;

    /* renamed from: f */
    int[] f2321f;

    /* renamed from: g */
    final /* synthetic */ StaggeredGridLayoutManager f2322g;

    StaggeredGridLayoutManager$b(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f2322g = staggeredGridLayoutManager;
        m12476c();
    }

    /* renamed from: a */
    void m12478a() {
        this.f2317b = this.f2318c ? this.f2322g.u.m12372i() : this.f2322g.u.m12368m();
    }

    /* renamed from: b */
    void m12477b(int i) {
        this.f2317b = this.f2318c ? this.f2322g.u.m12372i() - i : this.f2322g.u.m12368m() + i;
    }

    /* renamed from: c */
    void m12476c() {
        this.f2316a = -1;
        this.f2317b = Integer.MIN_VALUE;
        this.f2318c = false;
        this.f2319d = false;
        this.f2320e = false;
        int[] iArr = this.f2321f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }

    /* renamed from: d */
    void m12475d(StaggeredGridLayoutManager$c[] staggeredGridLayoutManager$cArr) {
        int length = staggeredGridLayoutManager$cArr.length;
        int[] iArr = this.f2321f;
        if (iArr == null || iArr.length < length) {
            this.f2321f = new int[this.f2322g.t.length];
        }
        for (int i = 0; i < length; i++) {
            this.f2321f[i] = staggeredGridLayoutManager$cArr[i].m12459p(Integer.MIN_VALUE);
        }
    }
}
