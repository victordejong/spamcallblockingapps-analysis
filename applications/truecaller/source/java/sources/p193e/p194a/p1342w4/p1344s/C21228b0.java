package p193e.p194a.p1342w4.p1344s;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.DetailsViewActivity;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.scanner.NumberDetectorProcessor;
import com.truecaller.scanner.NumberScannerActivity;
import com.truecaller.search.global.CompositeAdapterDelegate;
import com.truecaller.search.global.GlobalSearchResultActivity;
import e.a.h.s0.c;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import n3.r.a.l;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1273u4.C20637q;
import p193e.p194a.p372b0.p373a.p374a.DialogC8225e;
import p193e.p194a.p682e.C13338z0;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
/* renamed from: e.a.w4.s.b0 */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/b0.class */
public class C21228b0 extends Fragment implements AbstractC21254h0 {

    /* renamed from: g */
    public static final /* synthetic */ int f59453g = 0;

    /* renamed from: a */
    public AbstractC21242e0 f59454a;

    /* renamed from: b */
    public C21267l0 f59455b;

    /* renamed from: c */
    public RecyclerView f59456c;

    /* renamed from: d */
    public AbstractC19222c f59457d;

    /* renamed from: e */
    public AbstractC17405c f59458e;

    /* renamed from: f */
    public boolean f59459f;

    /* renamed from: e.a.w4.s.b0$a */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/b0$a.class */
    public class C21229a extends RecyclerView.AbstractC0338t {
        public C21229a() {
            C21228b0.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            C21228b0.this.f59454a.mo10074U6();
        }
    }

    /* renamed from: OA */
    public static Intent m10115OA(Context context, String str, String str2, boolean z, CompositeAdapterDelegate.SearchResultOrder searchResultOrder, boolean z2) {
        return new Intent(context, GlobalSearchResultActivity.class).putExtra("ARG_SEARCH_TEXT", str).putExtra("ARG_SEARCH_COUNTRY", str2).putExtra("ARG_FORCE_NUMBER_SEARCH", z).putExtra("ARG_SHOW_KEYBOARD", z2).putExtra("ARG_RESULT_ORDER", searchResultOrder);
    }

    /* renamed from: PA */
    public static void m10114PA(Activity activity, String str, String str2, boolean z, CompositeAdapterDelegate.SearchResultOrder searchResultOrder) {
        m10113QA(activity, str, str2, z, searchResultOrder, str == null, null);
    }

    /* renamed from: QA */
    public static void m10113QA(Activity activity, String str, String str2, boolean z, CompositeAdapterDelegate.SearchResultOrder searchResultOrder, boolean z2, View view) {
        Intent m10115OA = m10115OA(activity, str, str2, z, searchResultOrder, z2);
        if (view == null || !view.isAttachedToWindow()) {
            activity.startActivity(m10115OA);
            return;
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        activity.startActivity(m10115OA, ActivityOptions.makeSceneTransitionAnimation(activity, view, view.getTransitionName()).toBundle());
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: Ke */
    public void mo10040Ke(boolean z) {
        this.f59456c.setVisibility(z ? 0 : 8);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: Or */
    public void mo10039Or(final List<String> list) {
        g$a g_a = new g$a(requireActivity());
        g_a.m3656m(C2752R.string.scanner_SelectNumber);
        C20637q c20637q = new C20637q(requireActivity(), list);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: e.a.w4.s.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C21228b0.this.f59454a.mo10084Of((String) list.get(i));
            }
        };
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f168r = c20637q;
        c0037b.f169s = onClickListener;
        g_a.m3668a().show();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: Qz */
    public void mo10038Qz(boolean z) {
        if (z) {
            Fragment c21231c0 = new C21231c0();
            C26907a c26907a = new C26907a(getChildFragmentManager());
            c26907a.m1120m(C2752R.C2754id.history_container, c21231c0, "TAG_HISTORY_FRAGMENT");
            c26907a.mo1124i();
            c21231c0.f59463e = this.f59454a;
            return;
        }
        Fragment m42942K = getChildFragmentManager().m42942K("TAG_HISTORY_FRAGMENT");
        if (m42942K == null) {
            return;
        }
        C26907a c26907a2 = new C26907a(getChildFragmentManager());
        c26907a2.mo1121l(m42942K);
        c26907a2.mo1124i();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: T2 */
    public void mo10037T2(long j) {
        Intent intent = new Intent((Context) getActivity(), (Class<?>) ConversationActivity.class);
        intent.putExtra("conversation_id", j);
        intent.putExtra("launch_source", "globalSearch");
        startActivity(intent);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: Uz */
    public void mo10036Uz(Contact contact) {
        c.SA(requireActivity(), contact, contact.m35557M(), true, true, false, false, false, "globalSearch");
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: We */
    public void mo10035We(String str) {
        Toast.makeText(getContext(), str, 0).show();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: X9 */
    public void mo10034X9(Contact contact, SourceType sourceType) {
        l requireActivity = requireActivity();
        SourceType sourceType2 = SourceType.SearchResult;
        s1.z.c.l.e(requireActivity, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(sourceType2, "source");
        Intent intent = new Intent((Context) requireActivity, (Class<?>) DetailsViewActivity.class);
        intent.putExtra("ARG_CONTACT", contact);
        intent.putExtra("ARG_SOURCE_TYPE", 0);
        intent.putExtra("SHOULD_SAVE", true);
        intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", false);
        l requireActivity2 = requireActivity();
        s1.z.c.l.e(requireActivity2, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(intent, "intentWithExtras");
        requireActivity2.startActivity(intent);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: Y9 */
    public void mo10033Y9(long j, long j2, int i) {
        Intent intent = new Intent((Context) getActivity(), (Class<?>) ConversationActivity.class);
        intent.putExtra("conversation_id", j);
        intent.putExtra("message_id", j2);
        intent.putExtra("launch_source", "globalSearch");
        intent.putExtra("filter", i);
        startActivity(intent);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    public void finish() {
        if (this.f59459f || getActivity() == null || getActivity().isFinishing()) {
            return;
        }
        this.f59459f = true;
        requireActivity().supportFinishAfterTransition();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: fz */
    public void mo10032fz(Contact contact, SourceType sourceType) {
        l requireActivity = requireActivity();
        SourceType sourceType2 = SourceType.SearchResult;
        s1.z.c.l.e(requireActivity, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(sourceType2, "source");
        Intent intent = new Intent((Context) requireActivity, (Class<?>) DetailsViewActivity.class);
        intent.putExtra("ARG_CONTACT", contact);
        intent.putExtra("ARG_SOURCE_TYPE", 0);
        intent.putExtra("SHOULD_SAVE", true);
        intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", true);
        l requireActivity2 = requireActivity();
        s1.z.c.l.e(requireActivity2, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(intent, "intentWithExtras");
        requireActivity2.startActivity(intent);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: l2 */
    public void mo10031l2() {
        this.f59455b.notifyDataSetChanged();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: nd */
    public void mo10030nd() {
        new DialogC8225e(requireActivity(), 2131886709, 2131887630, C2752R.C2753drawable.country_search, new AdapterView.OnItemClickListener() { // from class: e.a.w4.s.a
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                C21228b0.this.f59454a.mo10052tc((CountryListDto.C3679a) adapterView.getAdapter().getItem(i));
            }
        }, null).show();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C21228b0.super.onActivityResult(i, i2, intent);
        this.f59454a.onActivityResult(i, i2, intent);
    }

    public void onCreate(Bundle bundle) {
        C21228b0.super.onCreate(bundle);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) requireContext().getApplicationContext()).mo10154s();
        this.f59457d = mo10154s.mo11637k();
        this.f59458e = mo10154s.mo12710H2();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.view_global_search_results, viewGroup, false);
    }

    public void onDestroy() {
        C21228b0.super.onDestroy();
        this.f59454a.mo9806c();
    }

    public void onResume() {
        C21228b0.super.onResume();
        this.f59454a.onResume();
    }

    public void onStart() {
        C21228b0.super.onStart();
        this.f59454a.onStart();
    }

    public void onStop() {
        C21228b0.super.onStop();
        this.f59454a.onStop();
    }

    public void onViewCreated(View view, Bundle bundle) {
        C21228b0.super.onViewCreated(view, bundle);
        this.f59456c = (RecyclerView) view.findViewById(2131365378);
        this.f59455b = new C21267l0(C17891a1.C17902k.m15658M1(this), this.f59454a, this.f59458e, this.f59457d, new AbstractC18904l() { // from class: e.a.w4.s.c
            @Override // p193e.p194a.p1111o2.AbstractC18904l
            /* renamed from: v */
            public final boolean mo10026v(C18900h c18900h) {
                return C21228b0.this.f59454a.mo10094Hf(c18900h);
            }
        });
        this.f59456c.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f59456c.addOnScrollListener(new C21229a());
        C13338z0 c13338z0 = new C13338z0(requireContext(), C2752R.layout.view_list_header_tcx, 0);
        c13338z0.f38756g = false;
        c13338z0.m21902e(0);
        Context context = c13338z0.f38755f.getContext();
        Object obj = C26467a.f74235a;
        c13338z0.f38751b = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.tcx_divider);
        this.f59456c.addItemDecoration(c13338z0);
        C21267l0 c21267l0 = this.f59455b;
        c21267l0.f38359a = new AbstractC13209t.AbstractC13210a() { // from class: e.a.w4.s.d
            @Override // p193e.p194a.p682e.p699c2.AbstractC13209t.AbstractC13210a
            /* renamed from: a */
            public final void mo10041a(int i, long j) {
                C21228b0.this.f59454a.mo10058n(i);
            }
        };
        this.f59456c.setAdapter(c21267l0);
        this.f59454a.mo9029Y0(this);
        this.f59454a.mo10050z6(requireActivity().getIntent());
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: pA */
    public void mo10029pA() {
        this.f59456c.scrollToPosition(0);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: so */
    public void mo10028so() {
        Context requireContext = requireContext();
        NumberDetectorProcessor.ScanType scanType = NumberDetectorProcessor.ScanType.SCAN_PHONE;
        int i = NumberScannerActivity.f14484f;
        Intent intent = new Intent(requireContext, NumberScannerActivity.class);
        intent.putExtra("scan_type", scanType);
        startActivityForResult(intent, 100);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21254h0
    /* renamed from: wf */
    public void mo10027wf(String str) {
        m10114PA(requireActivity(), str, null, true, CompositeAdapterDelegate.SearchResultOrder.ORDER_CGMT);
        finish();
    }
}
