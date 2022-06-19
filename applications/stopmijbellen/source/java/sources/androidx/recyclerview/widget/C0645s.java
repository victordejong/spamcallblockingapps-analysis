package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/s.class */
public final class C0645s extends AbstractC0646t {
    public C0645s(RecyclerView.AbstractC0573m abstractC0573m) {
        super(abstractC0573m, null);
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: b */
    public int mo7552b(View view) {
        return this.f2538a.m7819A(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.C0578n) view.getLayoutParams())).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: c */
    public int mo7551c(View view) {
        RecyclerView.C0578n c0578n = (RecyclerView.C0578n) view.getLayoutParams();
        return this.f2538a.m7814D(view) + ((ViewGroup.MarginLayoutParams) c0578n).topMargin + ((ViewGroup.MarginLayoutParams) c0578n).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: d */
    public int mo7550d(View view) {
        RecyclerView.C0578n c0578n = (RecyclerView.C0578n) view.getLayoutParams();
        return this.f2538a.m7812E(view) + ((ViewGroup.MarginLayoutParams) c0578n).leftMargin + ((ViewGroup.MarginLayoutParams) c0578n).rightMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: e */
    public int mo7549e(View view) {
        return this.f2538a.m7808G(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.C0578n) view.getLayoutParams())).topMargin;
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: f */
    public int mo7548f() {
        return this.f2538a.f2269o;
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: g */
    public int mo7547g() {
        RecyclerView.AbstractC0573m abstractC0573m = this.f2538a;
        return abstractC0573m.f2269o - abstractC0573m.m7801M();
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: h */
    public int mo7546h() {
        return this.f2538a.m7801M();
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: i */
    public int mo7545i() {
        return this.f2538a.f2267m;
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: j */
    public int mo7544j() {
        return this.f2538a.f2266l;
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: k */
    public int mo7543k() {
        return this.f2538a.m7798P();
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: l */
    public int mo7542l() {
        RecyclerView.AbstractC0573m abstractC0573m = this.f2538a;
        return (abstractC0573m.f2269o - abstractC0573m.m7798P()) - this.f2538a.m7801M();
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: n */
    public int mo7540n(View view) {
        this.f2538a.m7795T(view, true, this.f2540c);
        return this.f2540c.bottom;
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: o */
    public int mo7539o(View view) {
        this.f2538a.m7795T(view, true, this.f2540c);
        return this.f2540c.top;
    }

    @Override // androidx.recyclerview.widget.AbstractC0646t
    /* renamed from: p */
    public void mo7538p(int i) {
        this.f2538a.mo7720Y(i);
    }
}
