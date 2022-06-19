package p193e.p194a.p1342w4.p1344s;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.listitem.ListItemX;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p682e.C13338z0;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
import p193e.p194a.p804h.C14653d0;
import s1.z.c.l;
/* renamed from: e.a.w4.s.l0 */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/l0.class */
public final class C21267l0 extends AbstractC13209t<AbstractC13209t.C13211b> {

    /* renamed from: b */
    public final ComponentCallbacks2C22236i f59591b;

    /* renamed from: c */
    public final AbstractC21242e0 f59592c;

    /* renamed from: d */
    public final AbstractC17405c f59593d;

    /* renamed from: e */
    public final AbstractC19222c f59594e;

    /* renamed from: f */
    public final AbstractC18904l f59595f;

    /* renamed from: e.a.w4.s.l0$a */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/l0$a.class */
    public static final class C21268a extends AbstractC13209t.C13211b implements AbstractC21282r0, C13338z0.AbstractC13339a {

        /* renamed from: b */
        public final /* synthetic */ C14653d0 f59596b = new C14653d0();

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21268a(View view) {
            super(view);
            l.e(view, "itemView");
        }

        @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
        /* renamed from: B */
        public boolean mo9976B() {
            return this.f59596b.f42140b;
        }

        @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
        /* renamed from: F */
        public String mo9975F() {
            return this.f59596b.f42157a;
        }

        @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
        /* renamed from: Y3 */
        public void mo9974Y3(boolean z) {
            this.f59596b.f42140b = z;
        }

        @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
        /* renamed from: n */
        public void mo9973n(String str) {
            this.f59596b.f42157a = str;
        }
    }

    public C21267l0(ComponentCallbacks2C22236i componentCallbacks2C22236i, AbstractC21242e0 abstractC21242e0, AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c, AbstractC18904l abstractC18904l) {
        l.e(componentCallbacks2C22236i, "requestManager");
        l.e(abstractC21242e0, "presenter");
        l.e(abstractC17405c, "availabilityManager");
        l.e(abstractC19222c, "clock");
        l.e(abstractC18904l, "eventListener");
        this.f59591b = componentCallbacks2C22236i;
        this.f59592c = abstractC21242e0;
        this.f59593d = abstractC17405c;
        this.f59594e = abstractC19222c;
        this.f59595f = abstractC18904l;
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: e */
    public void mo10012e(AbstractC13209t.C13211b c13211b, int i) {
        l.e(c13211b, "holder");
        this.f59592c.mo10095G((AbstractC21282r0) c13211b, i);
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: g */
    public AbstractC13209t.C13211b mo10011g(ViewGroup viewGroup, int i) {
        LayoutInflater m8628e1 = C22128a.m8628e1(viewGroup, "parent");
        switch (i) {
            case C2752R.C2754id.global_search_view_type_ads /* 2131364001 */:
                return new C21289u(m8628e1.inflate(C2752R.layout.ad_tcx_frame, viewGroup, false));
            case C2752R.C2754id.global_search_view_type_contacts /* 2131364002 */:
            case C2752R.C2754id.global_search_view_type_groups /* 2131364003 */:
            case C2752R.C2754id.global_search_view_type_messages /* 2131364007 */:
            case C2752R.C2754id.global_search_view_type_search_results /* 2131364009 */:
                Context context = viewGroup.getContext();
                l.d(context, "parent.context");
                ListItemX listItemX = new ListItemX(context);
                listItemX.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                return new C21260k0(listItemX, this.f59593d, this.f59594e, this.f59591b, this.f59595f);
            case C2752R.C2754id.global_search_view_type_loading_ts /* 2131364004 */:
                View inflate = m8628e1.inflate(C2752R.layout.listitem_loading_indicator, viewGroup, false);
                l.d(inflate, "inflater.inflate(R.layou…indicator, parent, false)");
                return new C21268a(inflate);
            case C2752R.C2754id.global_search_view_type_manual_name_search /* 2131364005 */:
                View inflate2 = m8628e1.inflate(C2752R.layout.view_manual_name_search, viewGroup, false);
                l.d(inflate2, "inflater.inflate(R.layou…me_search, parent, false)");
                return new C21268a(inflate2);
            case C2752R.C2754id.global_search_view_type_manual_name_search_loading /* 2131364006 */:
                View inflate3 = m8628e1.inflate(C2752R.layout.view_manual_name_search_loading_state, viewGroup, false);
                l.d(inflate3, "inflater.inflate(R.layou…ing_state, parent, false)");
                return new C21268a(inflate3);
            case C2752R.C2754id.global_search_view_type_no_results_search /* 2131364008 */:
                View inflate4 = m8628e1.inflate(C2752R.layout.view_no_result_label, viewGroup, false);
                l.d(inflate4, "inflater.inflate(R.layou…ult_label, parent, false)");
                return new C21268a(inflate4);
            case C2752R.C2754id.global_search_view_type_truecaller_signup /* 2131364010 */:
                return new C21281r(m8628e1.inflate(C2752R.layout.list_item_search_action, viewGroup, false));
            case C2752R.C2754id.global_search_view_type_view_more_contacts /* 2131364011 */:
            case C2752R.C2754id.global_search_view_type_view_more_groups /* 2131364012 */:
            case C2752R.C2754id.global_search_view_type_view_more_messages /* 2131364013 */:
            case C2752R.C2754id.global_search_view_type_view_more_search_results /* 2131364014 */:
                View inflate5 = m8628e1.inflate(C2752R.layout.view_show_more, viewGroup, false);
                l.d(inflate5, "inflater.inflate(R.layou…show_more, parent, false)");
                return new C21268a(inflate5);
            default:
                throw new IllegalArgumentException(C22128a.m8611i2("Cannot create viewholder for view type ", i));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f59592c.mo10091Kb();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return this.f59592c.mo10064Za(i);
    }
}
