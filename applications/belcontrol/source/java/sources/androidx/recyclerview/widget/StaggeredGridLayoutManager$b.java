package androidx.recyclerview.widget;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
public class StaggeredGridLayoutManager$b {

    /* renamed from: a */
    public int f1417a;

    /* renamed from: b */
    public int f1418b;

    /* renamed from: c */
    public boolean f1419c;

    /* renamed from: d */
    public boolean f1420d;

    /* renamed from: e */
    public boolean f1421e;

    /* renamed from: f */
    public int[] f1422f;

    /* renamed from: g */
    public final /* synthetic */ StaggeredGridLayoutManager f1423g;

    public StaggeredGridLayoutManager$b(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f1423g = staggeredGridLayoutManager;
        m6085c();
    }

    /* renamed from: a */
    public void m6087a() {
        this.f1418b = this.f1419c ? this.f1423g.c.i() : this.f1423g.c.m();
    }

    /* renamed from: b */
    public void m6086b(int i) {
        this.f1418b = this.f1419c ? this.f1423g.c.i() - i : this.f1423g.c.m() + i;
    }

    /* renamed from: c */
    public void m6085c() {
        this.f1417a = -1;
        this.f1418b = Integer.MIN_VALUE;
        this.f1419c = false;
        this.f1420d = false;
        this.f1421e = false;
        int[] iArr = this.f1422f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }

    /* renamed from: d */
    public void m6084d(StaggeredGridLayoutManager$c[] staggeredGridLayoutManager$cArr) {
        int length = staggeredGridLayoutManager$cArr.length;
        int[] iArr = this.f1422f;
        if (iArr == null || iArr.length < length) {
            this.f1422f = new int[this.f1423g.b.length];
        }
        for (int i = 0; i < length; i++) {
            this.f1422f[i] = staggeredGridLayoutManager$cArr[i].m6068p(Integer.MIN_VALUE);
        }
    }
}
