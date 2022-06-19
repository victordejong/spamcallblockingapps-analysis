package p193e.p194a.p1263t3.p1264c;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import p193e.p194a.AbstractC20947v0;
import s1.z.c.l;
/* renamed from: e.a.t3.c.o */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/o.class */
public final class C20530o extends RecyclerView.AbstractC0317g<AbstractC20505a> {

    /* renamed from: a */
    public final AbstractC20947v0<AbstractC20518f> f57610a;

    public C20530o(AbstractC20947v0<AbstractC20518f> abstractC20947v0) {
        l.e(abstractC20947v0, "presenter");
        this.f57610a = abstractC20947v0;
    }

    /* renamed from: e */
    public final View m11061e(ViewGroup viewGroup, int i) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f57610a.mo10091Kb();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        return this.f57610a.mo10061gc(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return this.f57610a.mo10064Za(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(AbstractC20505a abstractC20505a, int i) {
        AbstractC20505a abstractC20505a2 = abstractC20505a;
        l.e(abstractC20505a2, "holder");
        this.f57610a.mo10095G(abstractC20505a2, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public AbstractC20505a onCreateViewHolder(ViewGroup viewGroup, int i) {
        C20546w c20546w;
        l.e(viewGroup, "parent");
        if (i == 2131558754) {
            View m11061e = m11061e(viewGroup, i);
            l.d(m11061e, "inflateView(parent, viewType)");
            c20546w = new C20507c(m11061e);
        } else if (i == 2131558757) {
            View m11061e2 = m11061e(viewGroup, i);
            l.d(m11061e2, "inflateView(parent, viewType)");
            c20546w = new C20539s(m11061e2);
        } else if (i != 2131558759) {
            View m11061e3 = m11061e(viewGroup, i);
            l.d(m11061e3, "inflateView(parent, viewType)");
            c20546w = new C20546w(m11061e3);
        } else {
            View m11061e4 = m11061e(viewGroup, i);
            l.d(m11061e4, "inflateView(parent, viewType)");
            c20546w = new C20543u(m11061e4);
        }
        return c20546w;
    }
}
