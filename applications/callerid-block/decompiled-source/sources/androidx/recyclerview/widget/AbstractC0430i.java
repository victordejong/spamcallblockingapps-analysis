package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
/* renamed from: androidx.recyclerview.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/i.class */
public abstract class AbstractC0430i {

    /* renamed from: a */
    protected final RecyclerView$n f2402a;

    /* renamed from: b */
    private int f2403b;

    /* renamed from: c */
    final Rect f2404c;

    private AbstractC0430i(RecyclerView$n recyclerView$n) {
        this.f2403b = Integer.MIN_VALUE;
        this.f2404c = new Rect();
        this.f2402a = recyclerView$n;
    }

    /* synthetic */ AbstractC0430i(RecyclerView$n recyclerView$n, a aVar) {
        this(recyclerView$n);
    }

    /* renamed from: a */
    public static AbstractC0430i m12380a(RecyclerView$n recyclerView$n) {
        return new a(recyclerView$n);
    }

    /* renamed from: b */
    public static AbstractC0430i m12379b(RecyclerView$n recyclerView$n, int i) {
        if (i == 0) {
            return m12380a(recyclerView$n);
        }
        if (i == 1) {
            return m12378c(recyclerView$n);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    /* renamed from: c */
    public static AbstractC0430i m12378c(RecyclerView$n recyclerView$n) {
        return new b(recyclerView$n);
    }

    /* renamed from: d */
    public abstract int m12377d(View view);

    /* renamed from: e */
    public abstract int m12376e(View view);

    /* renamed from: f */
    public abstract int m12375f(View view);

    /* renamed from: g */
    public abstract int m12374g(View view);

    /* renamed from: h */
    public abstract int m12373h();

    /* renamed from: i */
    public abstract int m12372i();

    /* renamed from: j */
    public abstract int m12371j();

    /* renamed from: k */
    public abstract int m12370k();

    /* renamed from: l */
    public abstract int m12369l();

    /* renamed from: m */
    public abstract int m12368m();

    /* renamed from: n */
    public abstract int m12367n();

    /* renamed from: o */
    public int m12366o() {
        return Integer.MIN_VALUE == this.f2403b ? 0 : m12367n() - this.f2403b;
    }

    /* renamed from: p */
    public abstract int m12365p(View view);

    /* renamed from: q */
    public abstract int m12364q(View view);

    /* renamed from: r */
    public abstract void m12363r(int i);

    /* renamed from: s */
    public void m12362s() {
        this.f2403b = m12367n();
    }
}
