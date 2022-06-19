package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p1080o.p1097b.p1098a.p1099a.AbstractC18671e;
import p193e.p194a.p1080o.p1102o.C18798k;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.o.b.a.a.d */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/d.class */
public final class C18670d extends RecyclerView.AbstractC0317g<AbstractC18669c> {

    /* renamed from: a */
    public final List<AbstractC18671e> f52511a = new ArrayList();

    /* renamed from: b */
    public final C18689r f52512b;

    /* renamed from: c */
    public final AbstractC18686p f52513c;

    public C18670d(C18689r c18689r, AbstractC18686p abstractC18686p) {
        l.e(c18689r, "theme");
        this.f52512b = c18689r;
        this.f52513c = abstractC18686p;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f52511a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        int i2;
        AbstractC18671e abstractC18671e = this.f52511a.get(i);
        if (abstractC18671e instanceof AbstractC18671e.C18673b) {
            i2 = 0;
        } else if (abstractC18671e instanceof AbstractC18671e.C18672a) {
            i2 = 1;
        } else if (!l.a(abstractC18671e, AbstractC18671e.C18674c.f52516a)) {
            throw new i();
        } else {
            i2 = 2;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(AbstractC18669c abstractC18669c, int i) {
        AbstractC18669c abstractC18669c2 = abstractC18669c;
        l.e(abstractC18669c2, "holder");
        abstractC18669c2.mo14627N4(this.f52511a.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public AbstractC18669c onCreateViewHolder(ViewGroup viewGroup, int i) {
        C18690s c18690s;
        l.e(viewGroup, "parent");
        if (i == 0) {
            C18798k m14463a = C18798k.m14463a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            l.d(m14463a, "ContextCallOnDemandReaso….context), parent, false)");
            c18690s = new C18687q(m14463a, this.f52512b, this.f52513c);
        } else if (i == 1) {
            C18798k m14463a2 = C18798k.m14463a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            l.d(m14463a2, "ContextCallOnDemandReaso….context), parent, false)");
            c18690s = new C18667b(m14463a2, this.f52512b, this.f52513c);
        } else if (i != 2) {
            throw new Exception("Invalid view type");
        } else {
            C18798k m14463a3 = C18798k.m14463a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            l.d(m14463a3, "ContextCallOnDemandReaso….context), parent, false)");
            c18690s = new C18690s(m14463a3, this.f52512b, this.f52513c);
        }
        return c18690s;
    }
}
