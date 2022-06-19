package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.customview.p026a.AbstractC0610a;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/i.class */
public abstract class AbstractC1014i {

    /* renamed from: a */
    protected final RecyclerView.AbstractC0956i f3203a;

    /* renamed from: b */
    final Rect f3204b;

    /* renamed from: c */
    private int f3205c;

    private AbstractC1014i(RecyclerView.AbstractC0956i abstractC0956i) {
        this.f3205c = AbstractC0610a.INVALID_ID;
        this.f3204b = new Rect();
        this.f3203a = abstractC0956i;
    }

    /* renamed from: a */
    public static AbstractC1014i m4577a(RecyclerView.AbstractC0956i abstractC0956i) {
        return new AbstractC1014i(abstractC0956i) { // from class: androidx.recyclerview.widget.i.1
            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: a */
            public int mo4572a(View view) {
                return this.f3203a.getDecoratedLeft(view) - ((RecyclerView.C0961j) view.getLayoutParams()).leftMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: a */
            public void mo4573a(int i) {
                this.f3203a.offsetChildrenHorizontal(i);
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: b */
            public int mo4571b(View view) {
                return this.f3203a.getDecoratedRight(view) + ((RecyclerView.C0961j) view.getLayoutParams()).rightMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: c */
            public int mo4570c() {
                return this.f3203a.getPaddingLeft();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: c */
            public int mo4569c(View view) {
                this.f3203a.getTransformedBoundingBox(view, true, this.f3204b);
                return this.f3204b.right;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: d */
            public int mo4568d() {
                return this.f3203a.getWidth() - this.f3203a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: d */
            public int mo4567d(View view) {
                this.f3203a.getTransformedBoundingBox(view, true, this.f3204b);
                return this.f3204b.left;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: e */
            public int mo4566e() {
                return this.f3203a.getWidth();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: e */
            public int mo4565e(View view) {
                RecyclerView.C0961j c0961j = (RecyclerView.C0961j) view.getLayoutParams();
                return this.f3203a.getDecoratedMeasuredWidth(view) + c0961j.leftMargin + c0961j.rightMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: f */
            public int mo4564f() {
                return (this.f3203a.getWidth() - this.f3203a.getPaddingLeft()) - this.f3203a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: f */
            public int mo4563f(View view) {
                RecyclerView.C0961j c0961j = (RecyclerView.C0961j) view.getLayoutParams();
                return this.f3203a.getDecoratedMeasuredHeight(view) + c0961j.topMargin + c0961j.bottomMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: g */
            public int mo4562g() {
                return this.f3203a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: h */
            public int mo4561h() {
                return this.f3203a.getWidthMode();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: i */
            public int mo4560i() {
                return this.f3203a.getHeightMode();
            }
        };
    }

    /* renamed from: a */
    public static AbstractC1014i m4576a(RecyclerView.AbstractC0956i abstractC0956i, int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IllegalArgumentException("invalid orientation");
            }
            return m4574b(abstractC0956i);
        }
        return m4577a(abstractC0956i);
    }

    /* renamed from: b */
    public static AbstractC1014i m4574b(RecyclerView.AbstractC0956i abstractC0956i) {
        return new AbstractC1014i(abstractC0956i) { // from class: androidx.recyclerview.widget.i.2
            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: a */
            public int mo4572a(View view) {
                return this.f3203a.getDecoratedTop(view) - ((RecyclerView.C0961j) view.getLayoutParams()).topMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: a */
            public void mo4573a(int i) {
                this.f3203a.offsetChildrenVertical(i);
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: b */
            public int mo4571b(View view) {
                return this.f3203a.getDecoratedBottom(view) + ((RecyclerView.C0961j) view.getLayoutParams()).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: c */
            public int mo4570c() {
                return this.f3203a.getPaddingTop();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: c */
            public int mo4569c(View view) {
                this.f3203a.getTransformedBoundingBox(view, true, this.f3204b);
                return this.f3204b.bottom;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: d */
            public int mo4568d() {
                return this.f3203a.getHeight() - this.f3203a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: d */
            public int mo4567d(View view) {
                this.f3203a.getTransformedBoundingBox(view, true, this.f3204b);
                return this.f3204b.top;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: e */
            public int mo4566e() {
                return this.f3203a.getHeight();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: e */
            public int mo4565e(View view) {
                RecyclerView.C0961j c0961j = (RecyclerView.C0961j) view.getLayoutParams();
                return this.f3203a.getDecoratedMeasuredHeight(view) + c0961j.topMargin + c0961j.bottomMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: f */
            public int mo4564f() {
                return (this.f3203a.getHeight() - this.f3203a.getPaddingTop()) - this.f3203a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: f */
            public int mo4563f(View view) {
                RecyclerView.C0961j c0961j = (RecyclerView.C0961j) view.getLayoutParams();
                return this.f3203a.getDecoratedMeasuredWidth(view) + c0961j.leftMargin + c0961j.rightMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: g */
            public int mo4562g() {
                return this.f3203a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: h */
            public int mo4561h() {
                return this.f3203a.getHeightMode();
            }

            @Override // androidx.recyclerview.widget.AbstractC1014i
            /* renamed from: i */
            public int mo4560i() {
                return this.f3203a.getWidthMode();
            }
        };
    }

    /* renamed from: a */
    public abstract int mo4572a(View view);

    /* renamed from: a */
    public void m4578a() {
        this.f3205c = mo4564f();
    }

    /* renamed from: a */
    public abstract void mo4573a(int i);

    /* renamed from: b */
    public int m4575b() {
        return Integer.MIN_VALUE == this.f3205c ? 0 : mo4564f() - this.f3205c;
    }

    /* renamed from: b */
    public abstract int mo4571b(View view);

    /* renamed from: c */
    public abstract int mo4570c();

    /* renamed from: c */
    public abstract int mo4569c(View view);

    /* renamed from: d */
    public abstract int mo4568d();

    /* renamed from: d */
    public abstract int mo4567d(View view);

    /* renamed from: e */
    public abstract int mo4566e();

    /* renamed from: e */
    public abstract int mo4565e(View view);

    /* renamed from: f */
    public abstract int mo4564f();

    /* renamed from: f */
    public abstract int mo4563f(View view);

    /* renamed from: g */
    public abstract int mo4562g();

    /* renamed from: h */
    public abstract int mo4561h();

    /* renamed from: i */
    public abstract int mo4560i();
}
