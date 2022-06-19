package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/t.class */
public abstract class AbstractC0646t {

    /* renamed from: a */
    public final RecyclerView.AbstractC0573m f2538a;

    /* renamed from: b */
    public int f2539b = Integer.MIN_VALUE;

    /* renamed from: c */
    public final Rect f2540c = new Rect();

    public AbstractC0646t(RecyclerView.AbstractC0573m abstractC0573m, C0644r c0644r) {
        this.f2538a = abstractC0573m;
    }

    /* renamed from: a */
    public static AbstractC0646t m7553a(RecyclerView.AbstractC0573m abstractC0573m, int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IllegalArgumentException("invalid orientation");
            }
            return new C0645s(abstractC0573m);
        }
        return new C0644r(abstractC0573m);
    }

    /* renamed from: b */
    public abstract int mo7552b(View view);

    /* renamed from: c */
    public abstract int mo7551c(View view);

    /* renamed from: d */
    public abstract int mo7550d(View view);

    /* renamed from: e */
    public abstract int mo7549e(View view);

    /* renamed from: f */
    public abstract int mo7548f();

    /* renamed from: g */
    public abstract int mo7547g();

    /* renamed from: h */
    public abstract int mo7546h();

    /* renamed from: i */
    public abstract int mo7545i();

    /* renamed from: j */
    public abstract int mo7544j();

    /* renamed from: k */
    public abstract int mo7543k();

    /* renamed from: l */
    public abstract int mo7542l();

    /* renamed from: m */
    public int m7541m() {
        return Integer.MIN_VALUE == this.f2539b ? 0 : mo7542l() - this.f2539b;
    }

    /* renamed from: n */
    public abstract int mo7540n(View view);

    /* renamed from: o */
    public abstract int mo7539o(View view);

    /* renamed from: p */
    public abstract void mo7538p(int i);
}
