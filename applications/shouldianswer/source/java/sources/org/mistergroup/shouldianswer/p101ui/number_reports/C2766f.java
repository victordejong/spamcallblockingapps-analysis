package org.mistergroup.shouldianswer.p101ui.number_reports;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.databinding.C0651f;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.C1775o;
import kotlin.NoWhenBranchMatchedException;
import kotlin.p081e.p082a.AbstractC1662a;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2136ay;
import org.mistergroup.shouldianswer.p097a.AbstractC2141bc;
import org.mistergroup.shouldianswer.p097a.AbstractC2143be;
import org.mistergroup.shouldianswer.p097a.AbstractC2145bg;
import org.mistergroup.shouldianswer.p101ui.number_reports.C2758a;
/* renamed from: org.mistergroup.shouldianswer.ui.number_reports.f */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/f.class */
public final class C2766f extends RecyclerView.AbstractC0945a<RecyclerView.AbstractC0977w> {

    /* renamed from: a */
    private AbstractC1662a<C1775o> f8236a;

    /* renamed from: b */
    private AbstractC1662a<C1775o> f8237b;

    /* renamed from: c */
    private boolean f8238c;

    /* renamed from: d */
    private final ArrayList<C2758a> f8239d = new ArrayList<>();

    public C2766f(List<C2758a> list) {
        m534a(list);
    }

    /* renamed from: a */
    public final AbstractC1662a<C1775o> m535a() {
        return this.f8236a;
    }

    /* renamed from: a */
    public final void m534a(List<C2758a> list) {
        this.f8239d.clear();
        if (list != null) {
            this.f8239d.addAll(list);
        }
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m533a(AbstractC1662a<C1775o> abstractC1662a) {
        C1694h.m3117b(abstractC1662a, "callback");
        this.f8236a = abstractC1662a;
    }

    /* renamed from: a */
    public final void m532a(boolean z) {
        this.f8238c = z;
    }

    /* renamed from: b */
    public final AbstractC1662a<C1775o> m531b() {
        return this.f8237b;
    }

    /* renamed from: b */
    public final void m530b(AbstractC1662a<C1775o> abstractC1662a) {
        C1694h.m3117b(abstractC1662a, "callback");
        this.f8237b = abstractC1662a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemCount() {
        return this.f8239d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemViewType(int i) {
        return this.f8239d.get(i).m540c().ordinal();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onBindViewHolder(RecyclerView.AbstractC0977w abstractC0977w, int i) {
        C1694h.m3117b(abstractC0977w, "holder");
        C2758a c2758a = this.f8239d.get(i);
        if (c2758a != null) {
            C1694h.m3122a((Object) c2758a, "items[position] ?: return");
            if (abstractC0977w instanceof C2765e) {
                ((C2765e) abstractC0977w).m536a(c2758a);
            }
            if (abstractC0977w instanceof C2762c) {
                ((C2762c) abstractC0977w).m537a(c2758a);
            }
            if (!(abstractC0977w instanceof C2760b)) {
                return;
            }
            ((C2760b) abstractC0977w).m538a(c2758a);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public RecyclerView.AbstractC0977w onCreateViewHolder(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        int i2 = C2767g.f8240a[C2758a.EnumC2759a.values()[i].ordinal()];
        if (i2 == 1) {
            AbstractC2141bc abstractC2141bc = (AbstractC2141bc) C0651f.m5843a(LayoutInflater.from(viewGroup.getContext()), 2131558478, viewGroup, false);
            C1694h.m3122a((Object) abstractC2141bc, "bindingInfo");
            return new C2762c(abstractC2141bc);
        } else if (i2 == 2) {
            AbstractC2143be abstractC2143be = (AbstractC2143be) C0651f.m5843a(LayoutInflater.from(viewGroup.getContext()), 2131558479, viewGroup, false);
            C1694h.m3122a((Object) abstractC2143be, "bindingMoreInfo");
            return new C2763d(this, abstractC2143be);
        } else if (i2 == 3) {
            AbstractC2145bg abstractC2145bg = (AbstractC2145bg) C0651f.m5843a(LayoutInflater.from(viewGroup.getContext()), 2131558480, viewGroup, false);
            C1694h.m3122a((Object) abstractC2145bg, "binding");
            return new C2765e(abstractC2145bg);
        } else if (i2 != 4) {
            throw new NoWhenBranchMatchedException();
        } else {
            AbstractC2136ay abstractC2136ay = (AbstractC2136ay) C0651f.m5843a(LayoutInflater.from(viewGroup.getContext()), 2131558476, viewGroup, false);
            C1694h.m3122a((Object) abstractC2136ay, "binding");
            return new C2760b(this, abstractC2136ay);
        }
    }
}
