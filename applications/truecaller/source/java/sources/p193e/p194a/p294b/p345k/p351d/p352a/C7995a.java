package p193e.p194a.p294b.p345k.p351d.p352a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import p193e.p194a.p294b.p345k.p347b.p349b.C7980a;
import p193e.p194a.p294b.p357o.p365f.p367b.C8170c;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.f0.v;
import s1.f0.w;
import s1.z.c.l;
/* renamed from: e.a.b.k.d.a.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/d/a/a.class */
public final class C7995a extends RecyclerView.AbstractC0317g<C8170c> implements Filterable {

    /* renamed from: a */
    public final LayoutInflater f24692a;

    /* renamed from: b */
    public List<C7980a> f24693b;

    /* renamed from: c */
    public List<C7980a> f24694c;

    /* renamed from: d */
    public final C7998b f24695d;

    /* renamed from: e */
    public final AbstractC7996a f24696e;

    /* renamed from: e.a.b.k.d.a.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/a/a$a.class */
    public interface AbstractC7996a {
        /* renamed from: F */
        void mo29024F(int i);

        /* renamed from: H8 */
        void mo29020H8(C7980a c7980a);

        /* renamed from: xx */
        void mo29007xx(C7980a c7980a);
    }

    /* renamed from: e.a.b.k.d.a.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/a/a$b.class */
    public static final class C7997b extends Filter {
        public C7997b() {
            C7995a.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v41, types: [java.util.List<e.a.b.k.b.b.a>] */
        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            ArrayList arrayList;
            l.e(charSequence, "charSequence");
            String obj = charSequence.toString();
            C7995a c7995a = C7995a.this;
            if (obj.length() == 0) {
                arrayList = C7995a.this.f24694c;
            } else {
                arrayList = new ArrayList();
                for (C7980a c7980a : C7995a.this.f24694c) {
                    String str = c7980a.f24646b;
                    Locale locale = Locale.ROOT;
                    l.d(locale, "Locale.ROOT");
                    Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                    String lowerCase = str.toLowerCase(locale);
                    l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    l.d(locale, "Locale.ROOT");
                    String lowerCase2 = obj.toLowerCase(locale);
                    l.d(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                    if (v.B(lowerCase, lowerCase2, false, 2)) {
                        arrayList.add(c7980a);
                    }
                }
            }
            c7995a.f24693b = arrayList;
            Filter.FilterResults filterResults = new Filter.FilterResults();
            filterResults.values = C7995a.this.f24693b;
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            l.e(charSequence, "charSequence");
            l.e(filterResults, "filterResults");
            C7995a c7995a = C7995a.this;
            Object obj = filterResults.values;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.truecaller.bizmon.covidDirectory.db.entities.CovidHospitalContact> /* = java.util.ArrayList<com.truecaller.bizmon.covidDirectory.db.entities.CovidHospitalContact> */");
            c7995a.f24693b = (ArrayList) obj;
            c7995a.notifyDataSetChanged();
            C7995a c7995a2 = C7995a.this;
            AbstractC7996a abstractC7996a = c7995a2.f24696e;
            if (abstractC7996a != null) {
                abstractC7996a.mo29024F(c7995a2.f24693b.size());
            }
        }
    }

    public C7995a(Context context, List<C7980a> list, C7998b c7998b, AbstractC7996a abstractC7996a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "contactList");
        l.e(c7998b, "itemPresenter");
        this.f24694c = list;
        this.f24695d = c7998b;
        this.f24696e = abstractC7996a;
        LayoutInflater from = LayoutInflater.from(context);
        l.d(from, "LayoutInflater.from(context)");
        this.f24692a = from;
        this.f24693b = this.f24694c;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new C7997b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f24693b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C8170c c8170c, int i) {
        C8170c c8170c2 = c8170c;
        l.e(c8170c2, "holder");
        C7998b c7998b = this.f24695d;
        C7980a c7980a = this.f24693b.get(i);
        Objects.requireNonNull(c7998b);
        l.e(c8170c2, "itemViewHolder");
        l.e(c7980a, "contactData");
        String str = c7980a.f24646b;
        String str2 = c7980a.f24648d;
        if (str2 != null) {
            if (str2.length() > 0) {
                c8170c2.m28846O4(true);
                l.e(str2, "departmentName");
                AppCompatTextView appCompatTextView = c8170c2.m28847N4().f25147c;
                l.d(appCompatTextView, "binding.textDepartment");
                appCompatTextView.setText(str2);
                c8170c2.setName(str);
            } else {
                c8170c2.setName(str);
                c8170c2.m28846O4(false);
            }
        } else {
            c8170c2.setName(str);
            c8170c2.m28846O4(false);
        }
        String str3 = c7980a.f24647c;
        l.e(str3, AnalyticsConstants.PHONE);
        AppCompatTextView appCompatTextView2 = c8170c2.m28847N4().f25149e;
        l.d(appCompatTextView2, "binding.textNumber");
        appCompatTextView2.setText(str3);
        AvatarXConfig avatarXConfig = new AvatarXConfig(null, null, null, w.n0(str, 1), false, false, false, false, false, false, false, false, false, false, null, false, 65527);
        l.e(avatarXConfig, "avatarXConfig");
        C8243a.m28739ok(c8170c2.f25296b, avatarXConfig, false, 2, null);
        c8170c2.itemView.setOnClickListener(new h0(0, i, this));
        c8170c2.m28847N4().f25146b.setOnClickListener(new h0(1, i, this));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C8170c onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        View inflate = this.f24692a.inflate(C3478R.layout.item_gov_services_contact, viewGroup, false);
        l.d(inflate, "inflater.inflate(R.layou…s_contact, parent, false)");
        return new C8170c(inflate);
    }
}
