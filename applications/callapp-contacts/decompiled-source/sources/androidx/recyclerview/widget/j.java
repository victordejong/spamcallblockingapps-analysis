package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j.class */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    protected final RecyclerView.i f5481a;

    /* renamed from: b  reason: collision with root package name */
    int f5482b;

    /* renamed from: c  reason: collision with root package name */
    final Rect f5483c;

    private j(RecyclerView.i iVar) {
        this.f5482b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f5483c = new Rect();
        this.f5481a = iVar;
    }

    public static j a(RecyclerView.i iVar) {
        return new j(iVar) { // from class: androidx.recyclerview.widget.j.1
            @Override // androidx.recyclerview.widget.j
            public final int a(View view) {
                return RecyclerView.i.g(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin;
            }

            @Override // androidx.recyclerview.widget.j
            public final void a(int i) {
                this.f5481a.f(i);
            }

            @Override // androidx.recyclerview.widget.j
            public final int b() {
                return this.f5481a.getPaddingLeft();
            }

            @Override // androidx.recyclerview.widget.j
            public final int b(View view) {
                return RecyclerView.i.i(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).rightMargin;
            }

            @Override // androidx.recyclerview.widget.j
            public final int c() {
                return this.f5481a.getWidth() - this.f5481a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.j
            public final int c(View view) {
                this.f5481a.a(view, this.f5483c);
                return this.f5483c.right;
            }

            @Override // androidx.recyclerview.widget.j
            public final int d() {
                return this.f5481a.getWidth();
            }

            @Override // androidx.recyclerview.widget.j
            public final int d(View view) {
                this.f5481a.a(view, this.f5483c);
                return this.f5483c.left;
            }

            @Override // androidx.recyclerview.widget.j
            public final int e() {
                return (this.f5481a.getWidth() - this.f5481a.getPaddingLeft()) - this.f5481a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.j
            public final int e(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return RecyclerView.i.e(view) + layoutParams.leftMargin + layoutParams.rightMargin;
            }

            @Override // androidx.recyclerview.widget.j
            public final int f() {
                return this.f5481a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.j
            public final int f(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return RecyclerView.i.f(view) + layoutParams.topMargin + layoutParams.bottomMargin;
            }

            @Override // androidx.recyclerview.widget.j
            public final int g() {
                return this.f5481a.getWidthMode();
            }

            @Override // androidx.recyclerview.widget.j
            public final int h() {
                return this.f5481a.getHeightMode();
            }
        };
    }

    public static j a(RecyclerView.i iVar, int i) {
        if (i == 0) {
            return a(iVar);
        }
        if (i == 1) {
            return b(iVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public static j b(RecyclerView.i iVar) {
        return new j(iVar) { // from class: androidx.recyclerview.widget.j.2
            @Override // androidx.recyclerview.widget.j
            public final int a(View view) {
                return RecyclerView.i.h(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).topMargin;
            }

            @Override // androidx.recyclerview.widget.j
            public final void a(int i) {
                this.f5481a.g(i);
            }

            @Override // androidx.recyclerview.widget.j
            public final int b() {
                return this.f5481a.getPaddingTop();
            }

            @Override // androidx.recyclerview.widget.j
            public final int b(View view) {
                return RecyclerView.i.j(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.j
            public final int c() {
                return this.f5481a.getHeight() - this.f5481a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.j
            public final int c(View view) {
                this.f5481a.a(view, this.f5483c);
                return this.f5483c.bottom;
            }

            @Override // androidx.recyclerview.widget.j
            public final int d() {
                return this.f5481a.getHeight();
            }

            @Override // androidx.recyclerview.widget.j
            public final int d(View view) {
                this.f5481a.a(view, this.f5483c);
                return this.f5483c.top;
            }

            @Override // androidx.recyclerview.widget.j
            public final int e() {
                return (this.f5481a.getHeight() - this.f5481a.getPaddingTop()) - this.f5481a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.j
            public final int e(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return RecyclerView.i.f(view) + layoutParams.topMargin + layoutParams.bottomMargin;
            }

            @Override // androidx.recyclerview.widget.j
            public final int f() {
                return this.f5481a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.j
            public final int f(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return RecyclerView.i.e(view) + layoutParams.leftMargin + layoutParams.rightMargin;
            }

            @Override // androidx.recyclerview.widget.j
            public final int g() {
                return this.f5481a.getHeightMode();
            }

            @Override // androidx.recyclerview.widget.j
            public final int h() {
                return this.f5481a.getWidthMode();
            }
        };
    }

    public final int a() {
        if (Integer.MIN_VALUE == this.f5482b) {
            return 0;
        }
        return e() - this.f5482b;
    }

    public abstract int a(View view);

    public abstract void a(int i);

    public abstract int b();

    public abstract int b(View view);

    public abstract int c();

    public abstract int c(View view);

    public abstract int d();

    public abstract int d(View view);

    public abstract int e();

    public abstract int e(View view);

    public abstract int f();

    public abstract int f(View view);

    public abstract int g();

    public abstract int h();
}
