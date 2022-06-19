package p1727n3.p1744b0.p1745a;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.b0.a.t */
/* loaded from: classes-dex2jar.jar:n3/b0/a/t.class */
public class C25621t extends AbstractC25622u {
    public C25621t(RecyclerView.AbstractC0329o abstractC0329o) {
        super(abstractC0329o, null);
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: b */
    public int mo3134b(View view) {
        return this.f71788a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.C0334p) view.getLayoutParams())).bottomMargin;
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: c */
    public int mo3133c(View view) {
        RecyclerView.C0334p c0334p = (RecyclerView.C0334p) view.getLayoutParams();
        return this.f71788a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) c0334p).topMargin + ((ViewGroup.MarginLayoutParams) c0334p).bottomMargin;
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: d */
    public int mo3132d(View view) {
        RecyclerView.C0334p c0334p = (RecyclerView.C0334p) view.getLayoutParams();
        return this.f71788a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) c0334p).leftMargin + ((ViewGroup.MarginLayoutParams) c0334p).rightMargin;
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: e */
    public int mo3131e(View view) {
        return this.f71788a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.C0334p) view.getLayoutParams())).topMargin;
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: f */
    public int mo3130f() {
        return this.f71788a.getHeight();
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: g */
    public int mo3129g() {
        return this.f71788a.getHeight() - this.f71788a.getPaddingBottom();
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: h */
    public int mo3128h() {
        return this.f71788a.getPaddingBottom();
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: i */
    public int mo3127i() {
        return this.f71788a.getHeightMode();
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: j */
    public int mo3126j() {
        return this.f71788a.getWidthMode();
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: k */
    public int mo3125k() {
        return this.f71788a.getPaddingTop();
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: l */
    public int mo3124l() {
        return (this.f71788a.getHeight() - this.f71788a.getPaddingTop()) - this.f71788a.getPaddingBottom();
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: n */
    public int mo3122n(View view) {
        this.f71788a.getTransformedBoundingBox(view, true, this.f71790c);
        return this.f71790c.bottom;
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: o */
    public int mo3121o(View view) {
        this.f71788a.getTransformedBoundingBox(view, true, this.f71790c);
        return this.f71790c.top;
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25622u
    /* renamed from: p */
    public void mo3120p(int i) {
        this.f71788a.offsetChildrenVertical(i);
    }
}
