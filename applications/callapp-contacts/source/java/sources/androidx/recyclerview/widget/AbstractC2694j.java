package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* renamed from: androidx.recyclerview.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j.class */
public abstract class AbstractC2694j {

    /* renamed from: a */
    protected final RecyclerView.AbstractC2637i f10297a;

    /* renamed from: b */
    int f10298b;

    /* renamed from: c */
    final Rect f10299c;

    private AbstractC2694j(RecyclerView.AbstractC2637i abstractC2637i) {
        this.f10298b = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        this.f10299c = new Rect();
        this.f10297a = abstractC2637i;
    }

    /* renamed from: a */
    public static AbstractC2694j m40075a(RecyclerView.AbstractC2637i abstractC2637i) {
        return new AbstractC2694j(abstractC2637i) { // from class: androidx.recyclerview.widget.j.1
            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: a */
            public final int mo40071a(View view) {
                return RecyclerView.AbstractC2637i.m40358g(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: a */
            public final void mo40072a(int i) {
                this.f10297a.mo40234f(i);
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: b */
            public final int mo40070b() {
                return this.f10297a.getPaddingLeft();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: b */
            public final int mo40069b(View view) {
                return RecyclerView.AbstractC2637i.m40355i(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).rightMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: c */
            public final int mo40068c() {
                return this.f10297a.getWidth() - this.f10297a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: c */
            public final int mo40067c(View view) {
                this.f10297a.m40384a(view, this.f10299c);
                return this.f10299c.right;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: d */
            public final int mo40066d() {
                return this.f10297a.getWidth();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: d */
            public final int mo40065d(View view) {
                this.f10297a.m40384a(view, this.f10299c);
                return this.f10299c.left;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: e */
            public final int mo40064e() {
                return (this.f10297a.getWidth() - this.f10297a.getPaddingLeft()) - this.f10297a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: e */
            public final int mo40063e(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return RecyclerView.AbstractC2637i.m40361e(view) + layoutParams.leftMargin + layoutParams.rightMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: f */
            public final int mo40062f() {
                return this.f10297a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: f */
            public final int mo40061f(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return RecyclerView.AbstractC2637i.m40359f(view) + layoutParams.topMargin + layoutParams.bottomMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: g */
            public final int mo40060g() {
                return this.f10297a.getWidthMode();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: h */
            public final int mo40059h() {
                return this.f10297a.getHeightMode();
            }
        };
    }

    /* renamed from: a */
    public static AbstractC2694j m40074a(RecyclerView.AbstractC2637i abstractC2637i, int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IllegalArgumentException("invalid orientation");
            }
            return m40073b(abstractC2637i);
        }
        return m40075a(abstractC2637i);
    }

    /* renamed from: b */
    public static AbstractC2694j m40073b(RecyclerView.AbstractC2637i abstractC2637i) {
        return new AbstractC2694j(abstractC2637i) { // from class: androidx.recyclerview.widget.j.2
            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: a */
            public final int mo40071a(View view) {
                return RecyclerView.AbstractC2637i.m40356h(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).topMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: a */
            public final void mo40072a(int i) {
                this.f10297a.mo40231g(i);
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: b */
            public final int mo40070b() {
                return this.f10297a.getPaddingTop();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: b */
            public final int mo40069b(View view) {
                return RecyclerView.AbstractC2637i.m40354j(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: c */
            public final int mo40068c() {
                return this.f10297a.getHeight() - this.f10297a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: c */
            public final int mo40067c(View view) {
                this.f10297a.m40384a(view, this.f10299c);
                return this.f10299c.bottom;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: d */
            public final int mo40066d() {
                return this.f10297a.getHeight();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: d */
            public final int mo40065d(View view) {
                this.f10297a.m40384a(view, this.f10299c);
                return this.f10299c.top;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: e */
            public final int mo40064e() {
                return (this.f10297a.getHeight() - this.f10297a.getPaddingTop()) - this.f10297a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: e */
            public final int mo40063e(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return RecyclerView.AbstractC2637i.m40359f(view) + layoutParams.topMargin + layoutParams.bottomMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: f */
            public final int mo40062f() {
                return this.f10297a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: f */
            public final int mo40061f(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return RecyclerView.AbstractC2637i.m40361e(view) + layoutParams.leftMargin + layoutParams.rightMargin;
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: g */
            public final int mo40060g() {
                return this.f10297a.getHeightMode();
            }

            @Override // androidx.recyclerview.widget.AbstractC2694j
            /* renamed from: h */
            public final int mo40059h() {
                return this.f10297a.getWidthMode();
            }
        };
    }

    /* renamed from: a */
    public final int m40076a() {
        if (Integer.MIN_VALUE == this.f10298b) {
            return 0;
        }
        return mo40064e() - this.f10298b;
    }

    /* renamed from: a */
    public abstract int mo40071a(View view);

    /* renamed from: a */
    public abstract void mo40072a(int i);

    /* renamed from: b */
    public abstract int mo40070b();

    /* renamed from: b */
    public abstract int mo40069b(View view);

    /* renamed from: c */
    public abstract int mo40068c();

    /* renamed from: c */
    public abstract int mo40067c(View view);

    /* renamed from: d */
    public abstract int mo40066d();

    /* renamed from: d */
    public abstract int mo40065d(View view);

    /* renamed from: e */
    public abstract int mo40064e();

    /* renamed from: e */
    public abstract int mo40063e(View view);

    /* renamed from: f */
    public abstract int mo40062f();

    /* renamed from: f */
    public abstract int mo40061f(View view);

    /* renamed from: g */
    public abstract int mo40060g();

    /* renamed from: h */
    public abstract int mo40059h();
}
