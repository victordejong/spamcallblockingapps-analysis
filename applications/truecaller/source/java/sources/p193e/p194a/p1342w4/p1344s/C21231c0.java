package p193e.p194a.p1342w4.p1344s;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.ads.AdLayoutTypeX;
import com.truecaller.ads.CustomTemplate;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.details_view.DetailsViewActivity;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.search.global.CompositeAdapterDelegate;
import com.truecaller.settings.CallingSettings;
import e.a.h.s0.c;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import n3.r.a.l;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1146q2.AbstractC19550v0;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1410z4.AbstractC21878a;
import p193e.p194a.p288a0.AbstractC7407v;
import p193e.p194a.p372b0.p373a.C8321n;
import p193e.p194a.p682e.AbstractC13258g1;
import p193e.p194a.p682e.AbstractC13274l0;
import p193e.p194a.p682e.AbstractC13289n1;
import p193e.p194a.p682e.C13338z0;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
import p193e.p194a.p682e.p699c2.C13188f0;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p682e.p699c2.C13199j0;
import p193e.p194a.p682e.p700d2.C13230g;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p905t.AbstractC15231e;
import p193e.p194a.p852i.p905t.C15226a;
import p193e.p194a.p852i.p905t.C15230d;
import p193e.p194a.p852i.p905t.C15232f;
import p193e.p194a.p852i.p905t.C15234g;
/* renamed from: e.a.w4.s.c0 */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/c0.class */
public class C21231c0 extends AbstractC13258g1 implements AbstractC13289n1, AbstractC19550v0 {

    /* renamed from: x */
    public static final /* synthetic */ int f59462x = 0;

    /* renamed from: e */
    public AbstractC21242e0 f59463e;

    /* renamed from: f */
    public RecyclerView f59464f;

    /* renamed from: g */
    public TextView f59465g;

    /* renamed from: h */
    public C13199j0 f59466h;

    /* renamed from: i */
    public C13188f0 f59467i;

    /* renamed from: j */
    public AbstractC15231e f59468j;

    /* renamed from: k */
    public C15226a f59469k;

    /* renamed from: l */
    public RecyclerView.AbstractC0320i f59470l;

    /* renamed from: m */
    public RecyclerView.AbstractC0317g f59471m;

    /* renamed from: n */
    public AbstractC19854f<AbstractC17348c> f59472n;

    /* renamed from: o */
    public AbstractC19870l f59473o;

    /* renamed from: p */
    public AbstractC19844a f59474p;

    /* renamed from: q */
    public CallingSettings f59475q;

    /* renamed from: r */
    public AbstractC21878a f59476r;

    /* renamed from: s */
    public AbstractC19222c f59477s;

    /* renamed from: t */
    public AbstractC17405c f59478t;

    /* renamed from: u */
    public AbstractC14537p f59479u;

    /* renamed from: v */
    public AbstractC7407v f59480v;

    /* renamed from: w */
    public final ContentObserver f59481w = new C21232a(new Handler(Looper.getMainLooper()));

    /* renamed from: e.a.w4.s.c0$a */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/c0$a.class */
    public class C21232a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21232a(Handler handler) {
            super(handler);
            C21231c0.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C21231c0 c21231c0 = C21231c0.this;
            int i = C21231c0.f59462x;
            c21231c0.m10104dB();
        }
    }

    /* renamed from: e.a.w4.s.c0$b */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/c0$b.class */
    public class C21233b extends RecyclerView.AbstractC0338t {
        public C21233b(C21231c0 c21231c0) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            C19286f.m13681W(recyclerView, false);
        }
    }

    /* renamed from: e.a.w4.s.c0$c */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/c0$c.class */
    public class C21234c implements C13188f0.AbstractC13190b {
        public C21234c() {
            C21231c0.this = r4;
        }
    }

    /* renamed from: e.a.w4.s.c0$d */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/c0$d.class */
    public class C21235d extends LinearLayoutManager {
        public C21235d(C21231c0 c21231c0, Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.AbstractC0329o
        public void onLayoutChildren(RecyclerView.C0341v c0341v, RecyclerView.C0347z c0347z) {
            super.onLayoutChildren(c0341v, c0347z);
        }
    }

    /* renamed from: e.a.w4.s.c0$e */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/c0$e.class */
    public class C21236e extends RecyclerView.AbstractC0320i {
        public C21236e() {
            C21231c0.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onChanged() {
            super.onChanged();
            C21231c0.this.m10103eB();
        }
    }

    /* renamed from: e.a.w4.s.c0$f */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/c0$f.class */
    public static class View$OnClickListenerC21237f extends AbstractC13274l0 implements View.OnClickListener {

        /* renamed from: b */
        public View.OnClickListener f59485b;

        /* renamed from: e.a.w4.s.c0$f$a */
        /* loaded from: classes13-dex2jar.jar:e/a/w4/s/c0$f$a.class */
        public static class C21238a extends AbstractC13209t.C13211b {
            public C21238a(View view) {
                super(view);
            }
        }

        public View$OnClickListenerC21237f(RecyclerView.AbstractC0317g abstractC0317g) {
            super(abstractC0317g);
        }

        @Override // p193e.p194a.p682e.AbstractC13274l0, androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemCount() {
            int itemCount = super.getItemCount();
            return itemCount == 0 ? 0 : itemCount + 1;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [long] */
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public long getItemId(int i) {
            return i == super.getItemCount() ? (char) 65535 : this.f38578a.getItemId(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemViewType(int i) {
            return i == super.getItemCount() ? 2131366843 : this.f38578a.getItemViewType(i);
        }

        @Override // p193e.p194a.p682e.AbstractC13274l0
        /* renamed from: h */
        public boolean mo10100h(int i) {
            return i == 2131366843;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
            if (abstractC0313c0.getItemViewType() == 2131366843) {
                abstractC0313c0.itemView.setOnClickListener(this);
            } else {
                this.f38578a.onBindViewHolder(abstractC0313c0, i);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i, List list) {
            if (abstractC0313c0.getItemViewType() == 2131366843) {
                abstractC0313c0.itemView.setOnClickListener(this);
            } else {
                this.f38578a.onBindViewHolder(abstractC0313c0, i, list);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f59485b.onClick(view);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
            return i == 2131366843 ? new C21238a(LayoutInflater.from(viewGroup.getContext()).inflate(C2752R.layout.view_clear_history, viewGroup, false)) : this.f38578a.onCreateViewHolder(viewGroup, i);
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: Cc */
    public void mo10112Cc(Intent intent) {
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8322o
    /* renamed from: LA */
    public C8321n mo10111LA() {
        return null;
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    /* renamed from: PA */
    public void mo10110PA() {
        this.f59466h.unregisterAdapterDataObserver(this.f59470l);
        this.f59468j.mo19026a();
        C c = this.f59466h.f38386b;
        if (c != 0) {
            c.unregisterContentObserver(this.f59481w);
        }
        C13199j0 c13199j0 = this.f59466h;
        Objects.requireNonNull(c13199j0);
        c13199j0.f38386b = null;
        c13199j0.notifyDataSetChanged();
        this.f59470l = null;
        this.f59466h = null;
        this.f59469k = null;
        this.f59468j = null;
        AbstractC19844a abstractC19844a = this.f59474p;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
            this.f59474p = null;
        }
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8318l
    /* renamed from: Wy */
    public int mo10109Wy() {
        return this.f59463e.mo10053t9();
    }

    @Override // p193e.p194a.p682e.AbstractC13258g1
    /* renamed from: YA */
    public TextView mo10108YA() {
        return this.f59465g;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19550v0
    /* renamed from: Zn */
    public void mo10107Zn(String str) {
        C22128a.m8596m1().mo13274b(C19597a.m13114b("globalSearchHistory"));
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: bx */
    public void mo10106bx(boolean z) {
        if (isVisible()) {
            this.f59468j.mo19025b(true);
        }
        long millis = TimeUnit.SECONDS.toMillis(this.f59476r.getLong("adFeatureRetentionTime", 0L));
        if (millis == 0) {
            this.f59468j.mo19021f();
        } else {
            this.f59468j.mo19024c(millis);
        }
    }

    /* renamed from: cB */
    public void m10105cB(C13197i0 c13197i0) {
        HistoryEvent historyEvent = c13197i0 instanceof C13230g ? ((C13230g) c13197i0).f38453k : null;
        if (historyEvent == null) {
            return;
        }
        String str = historyEvent.f11535b;
        l requireActivity = requireActivity();
        String tcId = historyEvent.getTcId();
        String str2 = historyEvent.f11538e;
        String str3 = historyEvent.f11536c;
        String str4 = historyEvent.f11537d;
        SourceType sourceType = SourceType.SearchHistory;
        s1.z.c.l.e(requireActivity, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(sourceType, "source");
        Intent intent = new Intent((Context) requireActivity, (Class<?>) DetailsViewActivity.class);
        intent.putExtra("ARG_TC_ID", tcId);
        intent.putExtra("NAME", str2);
        intent.putExtra("NORMALIZED_NUMBER", str);
        intent.putExtra("RAW_NUMBER", str3);
        intent.putExtra("COUNTRY_CODE", str4);
        intent.putExtra("ARG_SOURCE_TYPE", sourceType.ordinal());
        intent.putExtra("SHOULD_SAVE", false);
        intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", true);
        intent.putExtra("SEARCH_TYPE", 10);
        l requireActivity2 = requireActivity();
        s1.z.c.l.e(requireActivity2, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(intent, "intentWithExtras");
        requireActivity2.startActivity(intent);
    }

    /* renamed from: dB */
    public final void m10104dB() {
        AbstractC19844a abstractC19844a = this.f59474p;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
        m10103eB();
        this.f59474p = this.f59472n.mo11854a().mo16231q(5).mo11830e(this.f59473o.mo11845d(), new AbstractC19851d0() { // from class: e.a.w4.s.e
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                C21231c0 c21231c0 = C21231c0.this;
                AbstractC17373b abstractC17373b = (AbstractC17373b) obj;
                c21231c0.f59474p = null;
                C13199j0 c13199j0 = c21231c0.f59466h;
                if (c13199j0 == null) {
                    return;
                }
                C c = c13199j0.f38386b;
                if (c != 0) {
                    c.unregisterContentObserver(c21231c0.f59481w);
                }
                C13199j0 c13199j02 = c21231c0.f59466h;
                Objects.requireNonNull(c13199j02);
                if (abstractC17373b != null) {
                    c13199j02.f38387c = abstractC17373b.getColumnIndex("_id");
                }
                c13199j02.f38386b = abstractC17373b;
                c13199j02.notifyDataSetChanged();
                if (c21231c0.f59464f.getAdapter() == null) {
                    c21231c0.f59464f.setAdapter(c21231c0.f59471m);
                } else {
                    c21231c0.f59466h.notifyDataSetChanged();
                }
                if (abstractC17373b != null) {
                    abstractC17373b.registerContentObserver(c21231c0.f59481w);
                }
                c21231c0.m10103eB();
                c21231c0.m21975ZA(c21231c0.f59467i);
            }
        });
        m21975ZA(this.f59467i);
    }

    /* renamed from: eB */
    public void m10103eB() {
        if (!mo18684li()) {
            m21972f(false);
            C19045j0.m14194v(this.f59465g, false, true);
            C19045j0.m14194v(m21976XA(), false, true);
            C19045j0.m14194v(m21977WA(), false, true);
            if (this.f59474p != null) {
                m21972f(true);
            } else if (this.f59466h.getItemCount() != 0) {
            } else {
                if (!this.f59475q.getBoolean("initialCallLogSyncComplete")) {
                    m21972f(true);
                    return;
                }
                C19045j0.m14194v(this.f59465g, true, true);
                C19045j0.m14194v(m21976XA(), true, true);
                C19045j0.m14194v(m21977WA(), true, true);
            }
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: j */
    public void mo10102j() {
        if (isVisible()) {
            this.f59468j.mo19025b(false);
            this.f59468j.mo19023d();
        }
    }

    public void onAttach(Context context) {
        C21231c0.super.onAttach(context);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) context.getApplicationContext()).mo10154s();
        this.f59473o = mo10154s.mo12119z1();
        this.f59472n = mo10154s.mo12471Z0();
        this.f59475q = mo10154s.mo12414d6();
        this.f59476r = mo10154s.mo12183u5();
        this.f59477s = mo10154s.mo11637k();
        this.f59478t = mo10154s.mo12710H2();
        this.f59479u = mo10154s.mo12619O();
        this.f59480v = mo10154s.mo12330j4();
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = requireActivity().getIntent();
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) requireContext().getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        C21240d0 c21240d0 = new C21240d0(3, (CompositeAdapterDelegate.SearchResultOrder) intent.getSerializableExtra("ARG_RESULT_ORDER"), getActivity(), mo10154s.mo12659L0().m10906a());
        C25225a.m3846s(c21240d0, C21240d0.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        new C21224a0(c21240d0, mo10154s, null);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) viewGroup.getContext().getApplicationContext()).mo10154s();
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.view_global_search_history, viewGroup, false);
        C13199j0 c13199j0 = new C13199j0(requireContext(), null, this.f59479u, this.f59478t, this.f59477s, mo10154s.mo12682J3(), C17891a1.C17902k.m15658M1(this), new AbstractC18904l() { // from class: e.a.w4.s.i
            @Override // p193e.p194a.p1111o2.AbstractC18904l
            /* renamed from: v */
            public final boolean mo10026v(C18900h c18900h) {
                Contact contact;
                C21231c0 c21231c0 = C21231c0.this;
                int i = C21231c0.f59462x;
                Objects.requireNonNull(c21231c0);
                if (!c18900h.f53001a.equals("Call") || (contact = (Contact) c18900h.f53005e) == null) {
                    return false;
                }
                c.SA(c21231c0.requireActivity(), contact, contact.m35557M(), true, true, false, false, false, "globalSearchHistory");
                return false;
            }
        }, TrueApp.m36032b0().mo10154s().mo12683J1(), TrueApp.m36032b0().mo10154s().mo12263o5(), this.f59480v);
        this.f59466h = c13199j0;
        this.f59467i = new C13188f0(c13199j0);
        AbstractC15163d mo12356h7 = mo10154s.mo12356h7();
        C15222s.C15223a m19043a = C15222s.m19043a(mo10154s.mo12430c4().m19081a("historyAdUnitId"), null, "HISTORY", mo10154s.mo11648b());
        m19043a.f43331i = "searchHistory";
        m19043a.m19037f(CustomTemplate.NATIVE_CONTENT_DUAL_TRACKER);
        C15232f c15232f = new C15232f(mo12356h7, new C15222s(m19043a), mo10154s.mo12378g());
        this.f59468j = c15232f;
        C15234g c15234g = new C15234g(C2752R.layout.ad_tcx_frame, 2131362924, this.f59467i, AdLayoutTypeX.SMALL, new C15230d(1), c15232f);
        this.f59469k = c15234g;
        View$OnClickListenerC21237f view$OnClickListenerC21237f = new View$OnClickListenerC21237f(c15234g);
        view$OnClickListenerC21237f.f59485b = new View.OnClickListener() { // from class: e.a.w4.s.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final C21231c0 c21231c0 = C21231c0.this;
                g$a g_a = new g$a(c21231c0.requireContext());
                g_a.m3664e(C2752R.string.SearchClearHistoryConfirmMessage);
                g_a.m3662g(2131887867, null);
                g_a.m3660i(C2752R.string.btn_delete, new DialogInterface.OnClickListener() { // from class: e.a.w4.s.f
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        C21231c0.this.f59472n.mo11854a().mo16244d(5);
                        TrueApp.m36032b0().mo10154s().mo12776C4().mo13271e(new AbstractC19502g.C19504b.C19505a("SEARCHVIEW_ClearedRecentSearches", null, null, null));
                    }
                });
                g_a.m3652q();
            }
        };
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(2131365378);
        this.f59464f = recyclerView;
        recyclerView.addOnScrollListener(new C21233b(this));
        this.f59465g = (TextView) inflate.findViewById(C2752R.C2754id.listEmptyText);
        this.f59471m = view$OnClickListenerC21237f;
        this.f59467i.f38310b = new C21234c();
        return inflate;
    }

    public void onHiddenChanged(boolean z) {
        C21231c0.super.onHiddenChanged(z);
        this.f59468j.mo19025b(!z);
        if (isVisible()) {
            this.f59468j.mo19023d();
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onResume() {
        super.onResume();
        m10104dB();
    }

    public void onSaveInstanceState(Bundle bundle) {
        C21231c0.super.onSaveInstanceState(bundle);
        if (this.f59464f.getLayoutManager() != null) {
            bundle.putParcelable("STATE_LAYOUT_MANAGER", this.f59464f.getLayoutManager().onSaveInstanceState());
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        m21973bB(getString((int) C2752R.string.HistoryListEmpty), getString((int) C2752R.string.HistoryListEmptySubText), 0);
        this.f59464f.setLayoutManager(new C21235d(this, getActivity()));
        this.f59464f.setItemAnimator(null);
        C21236e c21236e = new C21236e();
        this.f59470l = c21236e;
        this.f59466h.registerAdapterDataObserver(c21236e);
        this.f59466h.f38359a = new AbstractC13209t.AbstractC13210a() { // from class: e.a.w4.s.h
            @Override // p193e.p194a.p682e.p699c2.AbstractC13209t.AbstractC13210a
            /* renamed from: a */
            public final void mo10041a(int i, long j) {
                Contact contact;
                C21231c0 c21231c0 = C21231c0.this;
                AbstractC17373b abstractC17373b = (AbstractC17373b) c21231c0.f59466h.f38386b;
                if (abstractC17373b != null) {
                    abstractC17373b.moveToPosition(i);
                    HistoryEvent mo16159n = abstractC17373b.mo16159n();
                    if (mo16159n == null || (contact = mo16159n.f11539f) == null) {
                        String str = "History event did not include a contact (position=" + i + "), event=" + mo16159n;
                    } else {
                        c21231c0.m10105cB(new C13230g(contact, mo16159n));
                    }
                }
                AbstractC19462a m8596m1 = C22128a.m8596m1();
                AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("SEARCHVIEW_RecentSearchItem_Clicked");
                c19504b.m13265b("List_Position", i);
                m8596m1.mo13271e(c19504b.m13266a());
            }
        };
        Context requireContext = requireContext();
        C13338z0 c13338z0 = new C13338z0(requireContext, C2752R.layout.view_list_header_tcx, C19291g.m13612L(requireContext, 2130970356));
        c13338z0.f38756g = false;
        c13338z0.m21902e(0);
        this.f59464f.addItemDecoration(c13338z0);
        m10103eB();
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: y0 */
    public void mo10101y0() {
        RecyclerView recyclerView = this.f59464f;
        if (recyclerView != null) {
            recyclerView.smoothScrollToPosition(0);
        }
    }
}
