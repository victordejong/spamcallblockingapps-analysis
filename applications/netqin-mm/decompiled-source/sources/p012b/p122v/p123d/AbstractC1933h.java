package p012b.p122v.p123d;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: b.v.d.h */
/* loaded from: classes-dex2jar.jar:b/v/d/h.class */
public abstract class AbstractC1933h {

    /* renamed from: a */
    public final RecyclerView.AbstractC0511o f7629a;

    /* renamed from: b */
    public int f7630b;

    /* renamed from: c */
    public final Rect f7631c;

    /* renamed from: b.v.d.h$a */
    /* loaded from: classes-dex2jar.jar:b/v/d/h$a.class */
    public static final class C1934a extends AbstractC1933h {
        public C1934a(RecyclerView.AbstractC0511o oVar) {
            super(oVar, null);
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: a */
        public int mo31601a() {
            return this.f7629a.m37273q();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: a */
        public int mo31599a(View view) {
            return this.f7629a.m37287i(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: a */
        public void mo31600a(int i) {
            this.f7629a.mo37131d(i);
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: b */
        public int mo31598b() {
            return this.f7629a.m37273q() - this.f7629a.m37276o();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: b */
        public int mo31597b(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f7629a.m37289h(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: c */
        public int mo31596c() {
            return this.f7629a.m37276o();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: c */
        public int mo31595c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f7629a.m37291g(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: d */
        public int mo31594d() {
            return this.f7629a.m37272r();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: d */
        public int mo31593d(View view) {
            return this.f7629a.m37295f(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: e */
        public int mo31592e() {
            return this.f7629a.m37288i();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: e */
        public int mo31591e(View view) {
            this.f7629a.m37342a(view, true, this.f7631c);
            return this.f7631c.right;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: f */
        public int mo31590f() {
            return this.f7629a.m37278n();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: f */
        public int mo31589f(View view) {
            this.f7629a.m37342a(view, true, this.f7631c);
            return this.f7631c.left;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: g */
        public int mo31588g() {
            return (this.f7629a.m37273q() - this.f7629a.m37278n()) - this.f7629a.m37276o();
        }
    }

    /* renamed from: b.v.d.h$b */
    /* loaded from: classes-dex2jar.jar:b/v/d/h$b.class */
    public static final class C1935b extends AbstractC1933h {
        public C1935b(RecyclerView.AbstractC0511o oVar) {
            super(oVar, null);
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: a */
        public int mo31601a() {
            return this.f7629a.m37290h();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: a */
        public int mo31599a(View view) {
            return this.f7629a.m37298e(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: a */
        public void mo31600a(int i) {
            this.f7629a.mo37127e(i);
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: b */
        public int mo31598b() {
            return this.f7629a.m37290h() - this.f7629a.m37280m();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: b */
        public int mo31597b(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f7629a.m37291g(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: c */
        public int mo31596c() {
            return this.f7629a.m37280m();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: c */
        public int mo31595c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f7629a.m37289h(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: d */
        public int mo31594d() {
            return this.f7629a.m37288i();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: d */
        public int mo31593d(View view) {
            return this.f7629a.m37285j(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: e */
        public int mo31592e() {
            return this.f7629a.m37272r();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: e */
        public int mo31591e(View view) {
            this.f7629a.m37342a(view, true, this.f7631c);
            return this.f7631c.bottom;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: f */
        public int mo31590f() {
            return this.f7629a.m37274p();
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: f */
        public int mo31589f(View view) {
            this.f7629a.m37342a(view, true, this.f7631c);
            return this.f7631c.top;
        }

        @Override // p012b.p122v.p123d.AbstractC1933h
        /* renamed from: g */
        public int mo31588g() {
            return (this.f7629a.m37290h() - this.f7629a.m37274p()) - this.f7629a.m37280m();
        }
    }

    public AbstractC1933h(RecyclerView.AbstractC0511o oVar) {
        this.f7630b = Integer.MIN_VALUE;
        this.f7631c = new Rect();
        this.f7629a = oVar;
    }

    public /* synthetic */ AbstractC1933h(RecyclerView.AbstractC0511o oVar, C1934a aVar) {
        this(oVar);
    }

    /* renamed from: a */
    public static AbstractC1933h m31606a(RecyclerView.AbstractC0511o oVar) {
        return new C1934a(oVar);
    }

    /* renamed from: a */
    public static AbstractC1933h m31605a(RecyclerView.AbstractC0511o oVar, int i) {
        if (i == 0) {
            return m31606a(oVar);
        }
        if (i == 1) {
            return m31604b(oVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    /* renamed from: b */
    public static AbstractC1933h m31604b(RecyclerView.AbstractC0511o oVar) {
        return new C1935b(oVar);
    }

    /* renamed from: a */
    public abstract int mo31601a();

    /* renamed from: a */
    public abstract int mo31599a(View view);

    /* renamed from: a */
    public abstract void mo31600a(int i);

    /* renamed from: b */
    public abstract int mo31598b();

    /* renamed from: b */
    public abstract int mo31597b(View view);

    /* renamed from: c */
    public abstract int mo31596c();

    /* renamed from: c */
    public abstract int mo31595c(View view);

    /* renamed from: d */
    public abstract int mo31594d();

    /* renamed from: d */
    public abstract int mo31593d(View view);

    /* renamed from: e */
    public abstract int mo31592e();

    /* renamed from: e */
    public abstract int mo31591e(View view);

    /* renamed from: f */
    public abstract int mo31590f();

    /* renamed from: f */
    public abstract int mo31589f(View view);

    /* renamed from: g */
    public abstract int mo31588g();

    /* renamed from: h */
    public int m31603h() {
        return Integer.MIN_VALUE == this.f7630b ? 0 : mo31588g() - this.f7630b;
    }

    /* renamed from: i */
    public void m31602i() {
        this.f7630b = mo31588g();
    }
}
