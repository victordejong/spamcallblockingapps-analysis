package p193e.p194a.p1159q4;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.details_view.DetailsViewActivity;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.newconversation.NewConversationActivity;
import com.truecaller.p183ui.view.ContactPhoto;
import com.truecaller.referral.BulkSmsView;
import com.truecaller.referral.ReferralManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import n3.r.a.l;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p679d5.p680g.AbstractC12635n;
import w3.c.a.a.a.h;
/* renamed from: e.a.q4.v */
/* loaded from: classes12-dex2jar.jar:e/a/q4/v.class */
public class C19674v extends AbstractC12635n implements BulkSmsView {

    /* renamed from: a */
    public RecyclerView f54645a;

    /* renamed from: b */
    public C19669t f54646b;

    /* renamed from: c */
    public Button f54647c;

    /* renamed from: d */
    public View f54648d;

    /* renamed from: e */
    public View f54649e;

    /* renamed from: f */
    public View f54650f;

    /* renamed from: g */
    public ViewGroup f54651g;

    /* renamed from: h */
    public LinearLayoutManager f54652h;

    /* renamed from: i */
    public TextView f54653i;

    /* renamed from: j */
    public TextView f54654j;
    @Inject

    /* renamed from: k */
    public C19679x f54655k;

    /* renamed from: l */
    public RecyclerView.AbstractC0338t f54656l;

    /* renamed from: e.a.q4.v$a */
    /* loaded from: classes12-dex2jar.jar:e/a/q4/v$a.class */
    public class C19675a extends RecyclerView.AbstractC0338t {
        public C19675a() {
            C19674v.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            C19679x c19679x = C19674v.this.f54655k;
            Objects.requireNonNull(c19679x);
            if (i == 0) {
                c19679x.m13004Mj();
            }
        }
    }

    /* renamed from: OA */
    public static C19674v m13024OA(String str, BulkSmsView.PromoLayout promoLayout, ReferralManager.ReferralLaunchContext referralLaunchContext, String str2) {
        return m13022PA(str, null, promoLayout, referralLaunchContext, str2, false);
    }

    /* renamed from: PA */
    public static C19674v m13022PA(String str, Contact contact, BulkSmsView.PromoLayout promoLayout, ReferralManager.ReferralLaunchContext referralLaunchContext, String str2, boolean z) {
        C19674v c19674v = new C19674v();
        Bundle bundle = new Bundle();
        bundle.putString("SHARE_TEXT", str);
        bundle.putString("CAMPAIGN_ID", str2);
        bundle.putSerializable("LAUNCH_CONTEXT", referralLaunchContext);
        c19674v.setArguments(bundle);
        Bundle arguments = c19674v.getArguments();
        AssertionUtil.isNotNull(arguments, new String[0]);
        if (contact != null) {
            arguments.putParcelable("CONTACT", contact);
        }
        if (promoLayout != null) {
            arguments.putParcelable("LAYOUT_RES", promoLayout);
        }
        arguments.putBoolean("CONTACT_HAS_WHATSAPP_PROFILE", z);
        return c19674v;
    }

    @Override // com.truecaller.referral.BulkSmsView
    /* renamed from: Cu */
    public void mo13031Cu(int i) {
        this.f54646b.notifyItemRemoved(i);
    }

    @Override // com.truecaller.referral.BulkSmsView
    /* renamed from: Ek */
    public void mo13030Ek(ArrayList<Participant> arrayList) {
        l requireActivity = requireActivity();
        int i = NewConversationActivity.f13580a;
        s1.z.c.l.e(requireActivity, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(arrayList, "participants");
        Intent intent = new Intent((Context) requireActivity, (Class<?>) NewConversationActivity.class);
        intent.putExtra("pre_fill_participants", arrayList);
        startActivityForResult(intent, 101);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19671t0
    /* renamed from: Il */
    public void mo13029Il(int i) {
        this.f54645a.smoothScrollToPosition(i);
    }

    @Override // com.truecaller.referral.BulkSmsView
    /* renamed from: Ja */
    public void mo13028Ja(String str, boolean z) {
        int i = 8;
        if (this.f54654j != null && z) {
            this.f54653i.setVisibility(8);
            this.f54654j.setText(str);
            return;
        }
        TextView textView = this.f54653i;
        if (z) {
            i = 0;
        }
        textView.setVisibility(i);
        this.f54653i.setText(str);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19671t0
    /* renamed from: Lu */
    public int mo13027Lu() {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.f54645a.getLayoutManager();
        AssertionUtil.isNotNull(linearLayoutManager, new String[0]);
        return linearLayoutManager.findLastVisibleItemPosition();
    }

    @Override // p193e.p194a.p1159q4.AbstractC19671t0
    /* renamed from: Lz */
    public int mo13026Lz() {
        return this.f54652h.findLastCompletelyVisibleItemPosition();
    }

    @Override // com.truecaller.referral.BulkSmsView
    /* renamed from: Nf */
    public void mo13025Nf(String str) {
        Toast.makeText(getContext(), str, 0).show();
    }

    @Override // com.truecaller.referral.BulkSmsView
    /* renamed from: P6 */
    public void mo13023P6(boolean z, int i) {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.f54645a.getLayoutManager();
        AssertionUtil.isNotNull(linearLayoutManager, new String[0]);
        linearLayoutManager.setOrientation(i);
        this.f54645a.setVisibility(z ? 0 : 8);
    }

    /* renamed from: QA */
    public void m13021QA(int i, int[] iArr, String[] strArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        this.f54651g.setVisibility(0);
        View inflate = LayoutInflater.from(getContext()).inflate(i, this.f54651g, true);
        if (iArr != null && strArr != null) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                ((TextView) inflate.findViewById(iArr[i2])).setText(strArr[i2]);
            }
        }
        if (iArr2 != null && iArr3 != null) {
            for (int i3 = 0; i3 < iArr2.length; i3++) {
                ((ImageView) inflate.findViewById(iArr2[i3])).setImageResource(iArr3[i3]);
            }
        }
        if (iArr4 != null) {
            for (int i4 : iArr4) {
                inflate.findViewById(i4).setVisibility(8);
            }
        }
        this.f54654j = (TextView) this.f54651g.findViewById(2131366469);
    }

    /* renamed from: RA */
    public void m13020RA(Uri uri, String str, String str2) {
        View view = getView();
        if (view != null) {
            view.findViewById(C2752R.C2754id.single_contact_view).setVisibility(0);
            ((ContactPhoto) view.findViewById(C2752R.C2754id.contact_photo)).m34479f(uri, null);
            ((TextView) view.findViewById(2131364884)).setText(str);
            TextView textView = (TextView) view.findViewById(C2752R.C2754id.number_text);
            if (h.e(str, str2)) {
                textView.setVisibility(8);
            } else {
                textView.setText(str2);
            }
        }
    }

    /* renamed from: SA */
    public void m13019SA(boolean z) {
        this.f54649e.setVisibility(z ? 0 : 8);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19671t0
    /* renamed from: T9 */
    public int mo13018T9() {
        return this.f54652h.findFirstCompletelyVisibleItemPosition();
    }

    @Override // p193e.p194a.p1159q4.AbstractC19671t0
    /* renamed from: Uo */
    public void mo13017Uo(boolean z) {
        this.f54650f.setVisibility(z ? 0 : 8);
    }

    @Override // com.truecaller.referral.BulkSmsView
    /* renamed from: f */
    public void mo13016f(boolean z) {
        this.f54648d.setVisibility(z ? 0 : 8);
    }

    @Override // com.truecaller.referral.BulkSmsView
    public void finish() {
        dismissAllowingStateLoss();
    }

    @Override // com.truecaller.referral.BulkSmsView
    /* renamed from: ih */
    public void mo13015ih() {
        this.f54646b.notifyDataSetChanged();
    }

    @Override // com.truecaller.referral.BulkSmsView
    /* renamed from: mh */
    public void mo13014mh(Participant participant, SourceType sourceType, boolean z, boolean z2, boolean z3) {
        Context requireContext = requireContext();
        String str = participant.f11574g;
        String str2 = participant.f11579l;
        String str3 = participant.f11572e;
        String str4 = participant.f11571d;
        String str5 = participant.f11573f;
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(sourceType, "source");
        Intent intent = new Intent(requireContext, DetailsViewActivity.class);
        intent.putExtra("ARG_TC_ID", str);
        intent.putExtra("NAME", str2);
        intent.putExtra("NORMALIZED_NUMBER", str3);
        intent.putExtra("RAW_NUMBER", str4);
        intent.putExtra("COUNTRY_CODE", str5);
        intent.putExtra("ARG_SOURCE_TYPE", sourceType.ordinal());
        intent.putExtra("SHOULD_SAVE", z);
        intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", z2);
        intent.putExtra("SEARCH_TYPE", 14);
        Context requireContext2 = requireContext();
        s1.z.c.l.e(requireContext2, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(intent, "intentWithExtras");
        requireContext2.startActivity(intent);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C19679x c19679x = this.f54655k;
        PV pv = c19679x.f57683a;
        if (pv == 0) {
            return;
        }
        switch (i) {
            case 101:
                if (i2 != -1) {
                    return;
                }
                c19679x.m13009Hj(((BulkSmsView) pv).mo13013p8(intent));
                return;
            case 102:
                if (i2 == -1) {
                    c19679x.m13008Ij(true);
                    return;
                } else {
                    ((BulkSmsView) pv).mo13025Nf(c19679x.f54672h.mo13768b(C2752R.string.referral_bulk_sms_error_default_sms_app, new Object[0]));
                    return;
                }
            case 103:
                if (i2 == -1) {
                    c19679x.m13006Kj();
                    return;
                } else {
                    ((BulkSmsView) pv).mo13025Nf(c19679x.f54672h.mo13768b(C2752R.string.referral_bulk_sms_error_pick_contact, new Object[0]));
                    return;
                }
            default:
                return;
        }
    }

    public void onCreate(Bundle bundle) {
        C19674v.super.onCreate(bundle);
        setStyle(1, 0);
        String string = getArguments().getString("SHARE_TEXT");
        Contact contact = (Contact) getArguments().getParcelable("CONTACT");
        AssertionUtil.isNotNull(string, new String[0]);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) requireContext().getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        C19677w c19677w = new C19677w(string, contact);
        C19655n0 c19655n0 = new C19655n0(10);
        C25225a.m3846s(c19655n0, C19655n0.class);
        C25225a.m3846s(c19677w, C19677w.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C19679x c19679x = (C19679x) new C19620a0(c19655n0, c19677w, mo10154s, null).f54530l.get();
        this.f54655k = c19679x;
        this.f54646b = new C19669t(c19679x);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C2752R.layout.referral_bulk_sms_view, viewGroup, false);
    }

    public void onDestroy() {
        C19674v.super.onDestroy();
        this.f54655k.mo9806c();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        C19674v.super.onRequestPermissionsResult(i, strArr, iArr);
        C19291g.m13608M0(strArr, iArr);
        C19679x c19679x = this.f54655k;
        Objects.requireNonNull(c19679x);
        if (i == 102 || i == 103) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (strArr[i2].equals("android.permission.SEND_SMS") && iArr[i2] == 0) {
                    if (i == 102) {
                        c19679x.m13008Ij(false);
                        return;
                    } else {
                        c19679x.m13006Kj();
                        return;
                    }
                }
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        C19674v.super.onSaveInstanceState(bundle);
        C19679x c19679x = this.f54655k;
        bundle.putParcelableArrayList("contacts", c19679x.f54667c);
        bundle.putBoolean("CONTACT_HAS_WHATSAPP_PROFILE", c19679x.f54682r);
        bundle.putSerializable("LAUNCH_CONTEXT", c19679x.f54677m);
        String str = c19679x.f54681q;
        if (str != null) {
            bundle.putString("CAMPAIGN_ID", str);
        }
        BulkSmsView.PromoLayout promoLayout = c19679x.f54676l;
        if (promoLayout != null) {
            bundle.putParcelable("LAYOUT_RES", promoLayout);
        }
    }

    public void onStart() {
        C19674v.super.onStart();
        Window window = getDialog().getWindow();
        if (window != null) {
            window.setLayout(-1, -2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        BulkSmsView.C4389a c4389a;
        C19674v.super.onViewCreated(view, bundle);
        this.f54645a = (RecyclerView) view.findViewById(C2752R.C2754id.group_contacts_recycler_view);
        this.f54647c = (Button) view.findViewById(2131364445);
        this.f54649e = view.findViewById(2131363364);
        this.f54648d = view.findViewById(C2752R.C2754id.loader);
        this.f54650f = view.findViewById(C2752R.C2754id.reveal_more);
        this.f54651g = (ViewGroup) view.findViewById(C2752R.C2754id.promo_container);
        this.f54652h = (LinearLayoutManager) this.f54645a.getLayoutManager();
        View findViewById = view.findViewById(C2752R.C2754id.actionClose);
        this.f54653i = (TextView) view.findViewById(C2752R.C2754id.invite_more_friends);
        this.f54645a.setAdapter(this.f54646b);
        C19675a c19675a = new C19675a();
        this.f54656l = c19675a;
        this.f54645a.addOnScrollListener(c19675a);
        this.f54647c.setOnClickListener(new View.OnClickListener() { // from class: e.a.q4.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C19674v.this.f54655k.m13008Ij(true);
            }
        });
        this.f54650f.setOnClickListener(new View.OnClickListener() { // from class: e.a.q4.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C19679x c19679x = C19674v.this.f54655k;
                PV pv = c19679x.f57683a;
                if (pv != 0) {
                    int mo13018T9 = ((BulkSmsView) pv).mo13018T9();
                    int mo13026Lz = ((BulkSmsView) c19679x.f57683a).mo13026Lz();
                    ((BulkSmsView) c19679x.f57683a).mo13029Il((mo13026Lz - mo13018T9) + mo13026Lz + 1);
                }
            }
        });
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: e.a.q4.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PV pv = C19674v.this.f54655k.f57683a;
                if (pv != 0) {
                    ((BulkSmsView) pv).finish();
                }
            }
        });
        C19679x c19679x = this.f54655k;
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        if (bundle2 != null) {
            ReferralManager.ReferralLaunchContext referralLaunchContext = (ReferralManager.ReferralLaunchContext) bundle2.getSerializable("LAUNCH_CONTEXT");
            AssertionUtil.isNotNull(referralLaunchContext, new String[0]);
            c4389a = new BulkSmsView.C4389a(bundle2.getParcelableArrayList("contacts"), (BulkSmsView.PromoLayout) bundle2.getParcelable("LAYOUT_RES"), referralLaunchContext, bundle2.getString("CAMPAIGN_ID"), bundle2.getBoolean("CONTACT_HAS_WHATSAPP_PROFILE"));
        } else {
            c4389a = null;
        }
        Objects.requireNonNull(c19679x);
        if (c4389a != null) {
            ArrayList arrayList = (ArrayList) c4389a.f14426a;
            if (arrayList != null && !arrayList.isEmpty()) {
                c19679x.m13009Hj(arrayList);
            }
            c19679x.f54676l = c4389a.f14427b;
            c19679x.f54677m = c4389a.f14428c;
            c19679x.f54681q = c4389a.f14429d;
            c19679x.f54682r = c4389a.f14430e;
        }
        final C19679x c19679x2 = this.f54655k;
        c19679x2.f57683a = this;
        BulkSmsView.PromoLayout promoLayout = c19679x2.f54676l;
        if (promoLayout != null) {
            m13021QA(promoLayout.f14420a, promoLayout.f14421b, promoLayout.f14422c, promoLayout.f14423d, promoLayout.f14424e, promoLayout.f14425f);
        }
        Participant participant = c19679x2.f54671g;
        if (participant != null) {
            m13020RA(c19679x2.f54670f.mo14235k(participant.f11582o, participant.f11580m, true), C10480a.m25885v0(c19679x2.f54671g), C10480a.m26058J0(c19679x2.f54671g));
        }
        if (c19679x2.m13007Jj()) {
            c19679x2.m13003Nj(false);
            mo13016f(false);
            mo13017Uo(false);
            mo13010xt(true);
            m13019SA(false);
            return;
        }
        m13019SA((c19679x2.f54671g == null && c19679x2.f54676l == null) ? false : true);
        if (!c19679x2.f54667c.isEmpty()) {
            mo13015ih();
            c19679x2.m13001Pj(this);
            return;
        }
        c19679x2.m13003Nj(false);
        mo13016f(true);
        mo13017Uo(false);
        c19679x2.f54680p = c19679x2.f54678n.mo11854a().mo13087c().mo11830e(c19679x2.f54679o, new AbstractC19851d0() { // from class: e.a.q4.g
            @Override // p193e.p194a.p1187r2.AbstractC19851d0
            public final void onResult(Object obj) {
                C19679x.this.m13009Hj((List) obj);
            }
        });
    }

    @Override // com.truecaller.referral.BulkSmsView
    /* renamed from: p8 */
    public List<Participant> mo13013p8(Intent intent) {
        s1.z.c.l.e(intent, RemoteMessageConst.DATA);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("RESULT_PARTICIPANTS");
        if (parcelableArrayListExtra != null) {
            return parcelableArrayListExtra;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    @Override // com.truecaller.referral.BulkSmsView
    /* renamed from: q0 */
    public void mo13012q0(int i) {
        C19291g.m13558d1(this, "android.permission.SEND_SMS", i, true);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19671t0
    /* renamed from: tw */
    public void mo13011tw(boolean z) {
        mo13017Uo(false);
        this.f54645a.removeOnScrollListener(this.f54656l);
    }

    @Override // com.truecaller.referral.BulkSmsView
    /* renamed from: xt */
    public void mo13010xt(boolean z) {
        this.f54647c.setEnabled(z);
    }
}
