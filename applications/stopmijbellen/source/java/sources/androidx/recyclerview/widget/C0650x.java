package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.C0604a;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.x */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/x.class */
public class C0650x implements C0604a.AbstractC0605a {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView f2545a;

    public C0650x(RecyclerView recyclerView) {
        this.f2545a = recyclerView;
    }

    /* renamed from: a */
    public void m7527a(C0604a.C0606b c0606b) {
        int i = c0606b.f2391a;
        if (i == 1) {
            RecyclerView recyclerView = this.f2545a;
            recyclerView.f2197m.mo7706e0(recyclerView, c0606b.f2392b, c0606b.f2394d);
        } else if (i == 2) {
            RecyclerView recyclerView2 = this.f2545a;
            recyclerView2.f2197m.mo7698h0(recyclerView2, c0606b.f2392b, c0606b.f2394d);
        } else if (i == 4) {
            RecyclerView recyclerView3 = this.f2545a;
            recyclerView3.f2197m.mo7695i0(recyclerView3, c0606b.f2392b, c0606b.f2394d, c0606b.f2393c);
        } else if (i != 8) {
        } else {
            RecyclerView recyclerView4 = this.f2545a;
            recyclerView4.f2197m.mo7700g0(recyclerView4, c0606b.f2392b, c0606b.f2394d, 1);
        }
    }

    /* renamed from: b */
    public RecyclerView.AbstractC0558a0 m7526b(int i) {
        RecyclerView.AbstractC0558a0 abstractC0558a0;
        RecyclerView recyclerView = this.f2545a;
        int m7610h = recyclerView.f2181e.m7610h();
        int i2 = 0;
        RecyclerView.AbstractC0558a0 abstractC0558a02 = null;
        while (true) {
            RecyclerView.AbstractC0558a0 abstractC0558a03 = abstractC0558a02;
            abstractC0558a0 = abstractC0558a03;
            if (i2 >= m7610h) {
                break;
            }
            abstractC0558a0 = RecyclerView.m7907K(recyclerView.f2181e.m7611g(i2));
            RecyclerView.AbstractC0558a0 abstractC0558a04 = abstractC0558a03;
            if (abstractC0558a0 != null) {
                abstractC0558a04 = abstractC0558a03;
                if (!abstractC0558a0.m7842m()) {
                    if (abstractC0558a0.f2226c == i) {
                        if (!recyclerView.f2181e.m7607k(abstractC0558a0.f2224a)) {
                            break;
                        }
                        abstractC0558a04 = abstractC0558a0;
                    } else {
                        abstractC0558a04 = abstractC0558a03;
                    }
                } else {
                    continue;
                }
            }
            i2++;
            abstractC0558a02 = abstractC0558a04;
        }
        if (abstractC0558a0 != null && !this.f2545a.f2181e.m7607k(abstractC0558a0.f2224a)) {
            return abstractC0558a0;
        }
        return null;
    }

    /* renamed from: c */
    public void m7525c(int i, int i2, Object obj) {
        int i3;
        RecyclerView recyclerView = this.f2545a;
        int m7610h = recyclerView.f2181e.m7610h();
        int i4 = i2 + i;
        for (int i5 = 0; i5 < m7610h; i5++) {
            View m7611g = recyclerView.f2181e.m7611g(i5);
            RecyclerView.AbstractC0558a0 m7907K = RecyclerView.m7907K(m7611g);
            if (m7907K != null && !m7907K.m7834u() && (i3 = m7907K.f2226c) >= i && i3 < i4) {
                m7907K.m7853b(2);
                m7907K.m7854a(obj);
                ((RecyclerView.C0578n) m7611g.getLayoutParams()).f2278c = true;
            }
        }
        RecyclerView.C0584s c0584s = recyclerView.f2175b;
        int size = c0584s.f2288c.size();
        while (true) {
            int i6 = size - 1;
            if (i6 < 0) {
                this.f2545a.f2194k0 = true;
                return;
            }
            RecyclerView.AbstractC0558a0 abstractC0558a0 = c0584s.f2288c.get(i6);
            if (abstractC0558a0 == null) {
                size = i6;
            } else {
                int i7 = abstractC0558a0.f2226c;
                size = i6;
                if (i7 >= i) {
                    size = i6;
                    if (i7 < i4) {
                        abstractC0558a0.m7853b(2);
                        c0584s.m7762f(i6);
                        size = i6;
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public void m7524d(int i, int i2) {
        RecyclerView recyclerView = this.f2545a;
        int m7610h = recyclerView.f2181e.m7610h();
        for (int i3 = 0; i3 < m7610h; i3++) {
            RecyclerView.AbstractC0558a0 m7907K = RecyclerView.m7907K(recyclerView.f2181e.m7611g(i3));
            if (m7907K != null && !m7907K.m7834u() && m7907K.f2226c >= i) {
                m7907K.m7838q(i2, false);
                recyclerView.f2186g0.f2316f = true;
            }
        }
        RecyclerView.C0584s c0584s = recyclerView.f2175b;
        int size = c0584s.f2288c.size();
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView.AbstractC0558a0 abstractC0558a0 = c0584s.f2288c.get(i4);
            if (abstractC0558a0 != null && abstractC0558a0.f2226c >= i) {
                abstractC0558a0.m7838q(i2, true);
            }
        }
        recyclerView.requestLayout();
        this.f2545a.f2192j0 = true;
    }

    /* renamed from: e */
    public void m7523e(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        RecyclerView recyclerView = this.f2545a;
        int m7610h = recyclerView.f2181e.m7610h();
        if (i < i2) {
            i5 = i;
            i4 = i2;
            i3 = -1;
        } else {
            i4 = i;
            i5 = i2;
            i3 = 1;
        }
        for (int i11 = 0; i11 < m7610h; i11++) {
            RecyclerView.AbstractC0558a0 m7907K = RecyclerView.m7907K(recyclerView.f2181e.m7611g(i11));
            if (m7907K != null && (i10 = m7907K.f2226c) >= i5 && i10 <= i4) {
                if (i10 == i) {
                    m7907K.m7838q(i2 - i, false);
                } else {
                    m7907K.m7838q(i3, false);
                }
                recyclerView.f2186g0.f2316f = true;
            }
        }
        RecyclerView.C0584s c0584s = recyclerView.f2175b;
        if (i < i2) {
            i8 = i;
            i6 = i2;
            i7 = -1;
        } else {
            i6 = i;
            i8 = i2;
            i7 = 1;
        }
        int size = c0584s.f2288c.size();
        for (int i12 = 0; i12 < size; i12++) {
            RecyclerView.AbstractC0558a0 abstractC0558a0 = c0584s.f2288c.get(i12);
            if (abstractC0558a0 != null && (i9 = abstractC0558a0.f2226c) >= i8 && i9 <= i6) {
                if (i9 == i) {
                    abstractC0558a0.m7838q(i2 - i, false);
                } else {
                    abstractC0558a0.m7838q(i7, false);
                }
            }
        }
        recyclerView.requestLayout();
        this.f2545a.f2192j0 = true;
    }
}
