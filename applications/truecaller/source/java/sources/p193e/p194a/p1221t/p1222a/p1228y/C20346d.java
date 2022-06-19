package p193e.p194a.p1221t.p1222a.p1228y;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.z.c.l;
/* renamed from: e.a.t.a.y.d */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/y/d.class */
public final class C20346d extends RecyclerView.AbstractC0338t {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView f57185a;

    /* renamed from: b */
    public final /* synthetic */ double f57186b;

    /* renamed from: c */
    public final /* synthetic */ View f57187c;

    public C20346d(RecyclerView recyclerView, double d, View view) {
        this.f57185a = recyclerView;
        this.f57186b = d;
        this.f57187c = view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        l.e(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i, i2);
        double height = (recyclerView.getHeight() / C8605o.m28238b(this.f57185a.getContext(), 100.0f)) * this.f57186b;
        double d = i2;
        if (d > height && this.f57187c.getVisibility() == 0) {
            this.f57187c.setVisibility(8);
        } else if (d >= (-height) || this.f57187c.getVisibility() == 0) {
        } else {
            this.f57187c.setVisibility(0);
        }
    }
}
