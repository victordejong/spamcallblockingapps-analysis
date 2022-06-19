package p1727n3.p1744b0.p1745a;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.b0.a.u */
/* loaded from: classes-dex2jar.jar:n3/b0/a/u.class */
public abstract class AbstractC25622u {

    /* renamed from: a */
    public final RecyclerView.AbstractC0329o f71788a;

    /* renamed from: b */
    public int f71789b = Integer.MIN_VALUE;

    /* renamed from: c */
    public final Rect f71790c = new Rect();

    public AbstractC25622u(RecyclerView.AbstractC0329o abstractC0329o, C25620s c25620s) {
        this.f71788a = abstractC0329o;
    }

    /* renamed from: a */
    public static AbstractC25622u m3135a(RecyclerView.AbstractC0329o abstractC0329o, int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IllegalArgumentException("invalid orientation");
            }
            return new C25621t(abstractC0329o);
        }
        return new C25620s(abstractC0329o);
    }

    /* renamed from: b */
    public abstract int mo3134b(View view);

    /* renamed from: c */
    public abstract int mo3133c(View view);

    /* renamed from: d */
    public abstract int mo3132d(View view);

    /* renamed from: e */
    public abstract int mo3131e(View view);

    /* renamed from: f */
    public abstract int mo3130f();

    /* renamed from: g */
    public abstract int mo3129g();

    /* renamed from: h */
    public abstract int mo3128h();

    /* renamed from: i */
    public abstract int mo3127i();

    /* renamed from: j */
    public abstract int mo3126j();

    /* renamed from: k */
    public abstract int mo3125k();

    /* renamed from: l */
    public abstract int mo3124l();

    /* renamed from: m */
    public int m3123m() {
        return Integer.MIN_VALUE == this.f71789b ? 0 : mo3124l() - this.f71789b;
    }

    /* renamed from: n */
    public abstract int mo3122n(View view);

    /* renamed from: o */
    public abstract int mo3121o(View view);

    /* renamed from: p */
    public abstract void mo3120p(int i);
}
