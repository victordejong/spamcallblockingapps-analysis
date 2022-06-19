package p193e.p194a.p294b.p345k.p351d.p352a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.governmentServices.p146ui.adapters.ViewType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p294b.p345k.p347b.p349b.C7981b;
import p193e.p194a.p294b.p357o.p365f.p368c.AbstractC8176e;
import p193e.p194a.p294b.p357o.p365f.p368c.AbstractC8183i;
import p193e.p194a.p294b.p357o.p365f.p368c.C8173b;
import p193e.p194a.p294b.p357o.p365f.p368c.C8175d;
import p193e.p194a.p294b.p357o.p365f.p368c.C8177f;
import p193e.p194a.p294b.p357o.p365f.p368c.C8182h;
import p193e.p194a.p294b.p357o.p365f.p368c.C8184j;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.b.k.d.a.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/d/a/c.class */
public final class C7999c extends RecyclerView.AbstractC0317g<RecyclerView.AbstractC0313c0> implements Filterable {

    /* renamed from: a */
    public ArrayList<C8173b> f24698a = new ArrayList<>();

    /* renamed from: b */
    public ArrayList<C8173b> f24699b = new ArrayList<>();

    /* renamed from: c */
    public final C8182h f24700c;

    /* renamed from: d */
    public final C8175d f24701d;

    /* renamed from: e */
    public final AbstractC8002d f24702e;

    /* renamed from: e.a.b.k.d.a.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/a/c$a.class */
    public static final class C8000a extends Filter {
        public C8000a() {
            C7999c.this = r4;
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            ArrayList<C8173b> arrayList;
            l.e(charSequence, "charSequence");
            String obj = charSequence.toString();
            C7999c c7999c = C7999c.this;
            if (obj.length() == 0) {
                arrayList = C7999c.this.f24698a;
            } else {
                arrayList = new ArrayList<>();
                Iterator<C8173b> it = C7999c.this.f24698a.iterator();
                while (it.hasNext()) {
                    C8173b next = it.next();
                    String str = next.m28841a().f24652b;
                    Locale locale = Locale.ROOT;
                    l.d(locale, "Locale.ROOT");
                    Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                    String lowerCase = str.toLowerCase(locale);
                    l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    l.d(locale, "Locale.ROOT");
                    String lowerCase2 = obj.toLowerCase(locale);
                    l.d(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                    if (v.B(lowerCase, lowerCase2, false, 2)) {
                        ViewType viewType = next.f25299a;
                        if (viewType == null) {
                            l.l("type");
                            throw null;
                        } else if (viewType == ViewType.TYPE_DISTRICT) {
                            l.d(next, "row");
                            arrayList.add(next);
                        }
                    }
                }
            }
            c7999c.f24699b = arrayList;
            Filter.FilterResults filterResults = new Filter.FilterResults();
            filterResults.values = C7999c.this.f24699b;
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            l.e(charSequence, "charSequence");
            l.e(filterResults, "filterResults");
            C7999c c7999c = C7999c.this;
            Object obj = filterResults.values;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.truecaller.bizmon.governmentServices.ui.adapters.CovidCityListObject> /* = java.util.ArrayList<com.truecaller.bizmon.governmentServices.ui.adapters.CovidCityListObject> */");
            c7999c.f24699b = (ArrayList) obj;
            c7999c.notifyDataSetChanged();
            C7999c c7999c2 = C7999c.this;
            c7999c2.f24702e.mo28999F(c7999c2.f24699b.size());
        }
    }

    /* renamed from: e.a.b.k.d.a.c$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/a/c$b.class */
    public static final class View$OnClickListenerC8001b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C7981b f24705b;

        public View$OnClickListenerC8001b(C7981b c7981b) {
            C7999c.this = r4;
            this.f24705b = c7981b;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7999c.this.f24702e.mo28994Kv(this.f24705b);
        }
    }

    public C7999c(C8182h c8182h, C8175d c8175d, AbstractC8002d abstractC8002d) {
        l.e(c8182h, "districtPresenter");
        l.e(c8175d, "districtIndexPresenter");
        l.e(abstractC8002d, "listener");
        this.f24700c = c8182h;
        this.f24701d = c8175d;
        this.f24702e = abstractC8002d;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new C8000a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f24699b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        ViewType viewType = this.f24699b.get(i).f25299a;
        if (viewType != null) {
            return viewType.ordinal();
        }
        l.l("type");
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        l.e(abstractC0313c0, "holder");
        C7981b m28841a = this.f24699b.get(i).m28841a();
        if (!(abstractC0313c0 instanceof C8177f)) {
            if (!(abstractC0313c0 instanceof C8184j)) {
                return;
            }
            this.f24700c.m28836a((AbstractC8183i) abstractC0313c0, m28841a.f24652b, m28841a.f24653c);
            abstractC0313c0.itemView.setOnClickListener(new View$OnClickListenerC8001b(m28841a));
            return;
        }
        C8175d c8175d = this.f24701d;
        AbstractC8176e abstractC8176e = (AbstractC8176e) abstractC0313c0;
        String str = m28841a.f24652b;
        Objects.requireNonNull(c8175d);
        l.e(abstractC8176e, "districtIndexView");
        l.e(str, "index");
        abstractC8176e.mo28838s3(str);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C8177f c8177f;
        LayoutInflater m8628e1 = C22128a.m8628e1(viewGroup, "parent");
        ViewType viewType = ViewType.TYPE_INDEX;
        if (i == 0) {
            View inflate = m8628e1.inflate(C3478R.layout.item_district_list_index, viewGroup, false);
            l.d(inflate, "mInflater.inflate(R.layo…ist_index, parent, false)");
            c8177f = new C8177f(inflate);
        } else {
            ViewType viewType2 = ViewType.TYPE_DISTRICT;
            if (i == 1) {
                View inflate2 = m8628e1.inflate(C3478R.layout.item_district_list, viewGroup, false);
                l.d(inflate2, "mInflater.inflate(R.layo…rict_list, parent, false)");
                c8177f = new C8184j(inflate2);
            } else {
                View inflate3 = m8628e1.inflate(C3478R.layout.item_district_list, viewGroup, false);
                l.d(inflate3, "mInflater.inflate(R.layo…rict_list, parent, false)");
                c8177f = new C8184j(inflate3);
            }
        }
        return c8177f;
    }
}
