package org.mistergroup.shouldianswer.p101ui.main.p103b;

import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.C0651f;
import androidx.recyclerview.widget.RecyclerView;
import com.p051a.p052a.p053a.p054a.p058c.AbstractC1135d;
import com.p051a.p052a.p053a.p054a.p058c.C1141j;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import kotlin.C1775o;
import kotlin.p073a.C1600g;
import kotlin.p074b.C1615a;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.p097a.AbstractC2261w;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.main.b.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/b.class */
public final class C2628b extends RecyclerView.AbstractC0945a<C2623a> implements AbstractC1135d<C2623a> {

    /* renamed from: a */
    private C2629a f7716a = new C2629a();

    /* renamed from: b */
    private boolean f7717b = true;

    /* renamed from: c */
    private boolean f7718c = true;

    /* renamed from: d */
    private final ArrayList<C2302a> f7719d = new ArrayList<>();

    /* renamed from: e */
    private AbstractC1674m<? super ContextMenu, ? super C2302a, C1775o> f7720e;

    /* renamed from: f */
    private AbstractC1663b<? super C2385ac, C1775o> f7721f;

    /* renamed from: g */
    private List<C2302a> f7722g;

    /* renamed from: h */
    private List<C2302a> f7723h;

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.b$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/b$a.class */
    public static final class C2629a extends Observable {
        @Override // java.util.Observable
        public void setChanged() {
            super.setChanged();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.b.b$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/b/b$b.class */
    public static final class C2630b<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C1615a.m3177a(Integer.valueOf(((C2302a) t).m1660d()), Integer.valueOf(((C2302a) t2).m1660d()));
        }
    }

    public C2628b(List<C2302a> list) {
        C1694h.m3117b(list, "contactItems");
        this.f7723h = list;
        setHasStableIds(true);
    }

    /* renamed from: a */
    public C2623a onCreateViewHolder(ViewGroup viewGroup, int i) {
        C1694h.m3117b(viewGroup, "parent");
        AbstractC2261w abstractC2261w = (AbstractC2261w) C0651f.m5843a(LayoutInflater.from(viewGroup.getContext()), 2131558454, viewGroup, false);
        C1694h.m3122a((Object) abstractC2261w, "bindingInfo");
        View d = abstractC2261w.m5863d();
        C1694h.m3122a((Object) d, "bindingInfo.root");
        d.getLayoutParams().height = viewGroup.getMeasuredWidth() / 2;
        return new C2623a(abstractC2261w, this);
    }

    /* renamed from: a */
    public final C2629a m692a() {
        return this.f7716a;
    }

    @Override // com.p051a.p052a.p053a.p054a.p058c.AbstractC1135d
    /* renamed from: a */
    public void mo4117a(int i) {
        notifyDataSetChanged();
    }

    @Override // com.p051a.p052a.p053a.p054a.p058c.AbstractC1135d
    /* renamed from: a */
    public void mo690a(int i, int i2) {
        C2302a remove = this.f7719d.remove(i);
        C1694h.m3122a((Object) remove, "items.removeAt(fromPosition)");
        this.f7719d.add(i2, remove);
        ArrayList<Long> arrayList = new ArrayList<>();
        for (C2302a c2302a : this.f7719d) {
            if (c2302a.m1658f() != null && c2302a.m1658f().m1356c()) {
                arrayList.add(Long.valueOf(c2302a.m1658f().m1368a()));
            }
        }
        C2405c.f6946b.m1198a(arrayList);
    }

    @Override // com.p051a.p052a.p053a.p054a.p058c.AbstractC1135d
    /* renamed from: a */
    public void mo689a(int i, int i2, boolean z) {
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m685a(List<C2302a> list, List<C2302a> list2) {
        C1694h.m3117b(list, "contactItems");
        ArrayList<Long> m1204N = C2405c.f6946b.m1204N();
        for (C2302a c2302a : list) {
            C2385ac m1658f = c2302a.m1658f();
            if (m1658f == null) {
                C1694h.m3124a();
            }
            int indexOf = m1204N.indexOf(Long.valueOf(m1658f.m1368a()));
            int i = indexOf;
            if (indexOf == -1) {
                i = 10000;
            }
            c2302a.m1666a(i);
        }
        if (list.size() > 1) {
            C1600g.m3198a(list, new C2630b());
        }
        this.f7723h = list;
        this.f7722g = list2;
        m675d();
        this.f7717b = false;
        this.f7716a.notifyObservers();
    }

    /* renamed from: a */
    public final void m684a(AbstractC1663b<? super C2385ac, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "callback");
        this.f7721f = abstractC1663b;
    }

    /* renamed from: a */
    public final void m683a(AbstractC1674m<? super ContextMenu, ? super C2302a, C1775o> abstractC1674m) {
        C1694h.m3117b(abstractC1674m, "callback");
        this.f7720e = abstractC1674m;
    }

    /* renamed from: a */
    public void onBindViewHolder(C2623a c2623a, int i) {
        C1694h.m3117b(c2623a, "holder");
        try {
            C2302a c2302a = this.f7719d.get(i);
            C1694h.m3122a((Object) c2302a, "items[position]");
            c2623a.m705a(c2302a);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m680a(boolean z) {
        this.f7718c = z;
    }

    /* renamed from: a */
    public boolean mo686a(C2623a c2623a, int i, int i2, int i3) {
        C1694h.m3117b(c2623a, "holder");
        C2385ac m1658f = this.f7719d.get(i).m1658f();
        return m1658f != null ? m1658f.m1356c() : false;
    }

    /* renamed from: b */
    public C1141j mo687a(C2623a c2623a, int i) {
        C1694h.m3117b(c2623a, "holder");
        return null;
    }

    /* renamed from: b */
    public final AbstractC1674m<ContextMenu, C2302a, C1775o> m679b() {
        return this.f7720e;
    }

    @Override // com.p051a.p052a.p053a.p054a.p058c.AbstractC1135d
    /* renamed from: b */
    public boolean mo678b(int i, int i2) {
        C2385ac m1658f = this.f7719d.get(i2).m1658f();
        return m1658f != null ? m1658f.m1356c() : false;
    }

    /* renamed from: c */
    public final AbstractC1663b<C2385ac, C1775o> m676c() {
        return this.f7721f;
    }

    /* renamed from: d */
    public final void m675d() {
        int i;
        try {
            this.f7719d.clear();
            List<C2302a> list = this.f7723h;
            C3104j.m157a(C3104j.f9124a, "FavoritesAdapter.updateData items count=" + String.valueOf(list.size()), (String) null, 2, (Object) null);
            for (C2302a c2302a : list) {
                C2385ac m1658f = c2302a.m1658f();
                if (m1658f != null && m1658f.m1356c()) {
                    this.f7719d.add(c2302a);
                }
            }
            List<C2302a> list2 = this.f7722g;
            if (list2 != null && this.f7718c) {
                int i2 = 0;
                Iterator<C2302a> it = list2.iterator();
                do {
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    C2302a next = it.next();
                    i = i2;
                    if (next.m1658f() != null) {
                        this.f7719d.add(next);
                        i = i2 + 1;
                    }
                    i2 = i;
                } while (i <= 10);
                if (this.f7719d.size() > 2 && i > 0 && this.f7719d.size() % 2 == 1) {
                    this.f7719d.remove(getItemCount() - 1);
                }
            }
            C3104j.m157a(C3104j.f9124a, "FavoritesAdapter.updateData notifyChanges", (String) null, 2, (Object) null);
            notifyDataSetChanged();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemCount() {
        return this.f7719d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public long getItemId(int i) {
        C2385ac m1658f = this.f7719d.get(i).m1658f();
        if (m1658f == null) {
            C1694h.m3124a();
        }
        return m1658f.m1368a();
    }
}
