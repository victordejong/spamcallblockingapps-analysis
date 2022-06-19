package p193e.p194a.p1159q4;

import android.app.Activity;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.referral.BulkSmsView;
import com.truecaller.referral.ReferralManager;
import com.truecaller.referral.ReferralUrl;
import java.util.Objects;
import javax.inject.Inject;
import n3.b.a.g;
import n3.r.a.l;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1159q4.C19657o0;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import p193e.p194a.p682e.p683a.DialogC12697c3;
import w3.c.a.a.a.h;
/* renamed from: e.a.q4.l0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/l0.class */
public class C19651l0 extends Fragment implements ReferralManager, AbstractC19653m0, AbstractC19668s0 {

    /* renamed from: d */
    public static final /* synthetic */ int f54576d = 0;

    /* renamed from: a */
    public DialogC12697c3 f54577a;

    /* renamed from: b */
    public g f54578b;
    @Inject

    /* renamed from: c */
    public C19657o0 f54579c;

    /* renamed from: OA */
    public static ReferralManager m13085OA(FragmentManager fragmentManager, String str) {
        Fragment fragment;
        try {
            Fragment c19651l0 = new C19651l0();
            C26907a c26907a = new C26907a(fragmentManager);
            c26907a.mo1122k(0, c19651l0, str, 1);
            c26907a.mo1124i();
            fragment = c19651l0;
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            fragment = null;
        }
        return fragment;
    }

    /* renamed from: PA */
    public static ReferralManager m13084PA(l lVar, String str) {
        return m13085OA(lVar.getSupportFragmentManager(), str);
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Ef */
    public boolean mo13070Ef(ReferralManager.ReferralLaunchContext referralLaunchContext) {
        return this.f54579c.m13068Ij(referralLaunchContext);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19668s0
    /* renamed from: Hv */
    public Fragment mo13044Hv(ReferralManager.ReferralLaunchContext referralLaunchContext) {
        String string = this.f54579c.f54587d.getString("referralCode");
        ReferralUrl m13062Lj = this.f54579c.m13062Lj();
        if (h.j(string) || m13062Lj == null) {
            return null;
        }
        m13062Lj.f14457c = referralLaunchContext;
        return C19665r0.m13047OA(string, m13062Lj, referralLaunchContext);
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Is */
    public void mo13067Is(Uri uri) {
        this.f54579c.mo13067Is(uri);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19653m0
    /* renamed from: Iv */
    public void mo13082Iv(String str, ReferralUrl referralUrl, ReferralManager.ReferralLaunchContext referralLaunchContext, String str2) {
        if (getActivity() == null || !isAdded()) {
            return;
        }
        C26907a c26907a = new C26907a(getChildFragmentManager());
        c26907a.m1128e(null);
        c26907a.mo1122k(0, str2 == null ? C19665r0.m13047OA(str, referralUrl, referralLaunchContext) : C19665r0.m13046PA(str, referralUrl, referralLaunchContext, str2), C19665r0.class.getSimpleName(), 1);
        c26907a.mo1126g();
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Kx */
    public void mo13064Kx() {
        this.f54579c.mo13064Kx();
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Ky */
    public void mo13063Ky(ReferralManager.ReferralLaunchContext referralLaunchContext) {
        this.f54579c.mo13063Ky(referralLaunchContext);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19653m0
    /* renamed from: M */
    public void mo13081M(String str) {
        Toast.makeText(requireContext(), str, 0).show();
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Mf */
    public void mo13061Mf(String str) {
        C19657o0 c19657o0 = this.f54579c;
        AssertionUtil.isNotNull(c19657o0.f57683a, new String[0]);
        ((AbstractC19653m0) c19657o0.f57683a).mo13079V9(str, ReferralManager.ReferralLaunchContext.PUSH_NOTIFICATION);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19653m0
    /* renamed from: Pv */
    public void mo13080Pv() {
    }

    /* renamed from: QA */
    public final void m13083QA(String str, Contact contact, BulkSmsView.PromoLayout promoLayout, ReferralManager.ReferralLaunchContext referralLaunchContext, String str2, boolean z) {
        Fragment m13024OA = contact == null ? C19674v.m13024OA(str, promoLayout, referralLaunchContext, str2) : C19674v.m13022PA(str, contact, promoLayout, referralLaunchContext, str2, z);
        C26907a c26907a = new C26907a(getChildFragmentManager());
        c26907a.mo1122k(0, m13024OA, "BulkSmsDialog", 1);
        c26907a.m1128e(null);
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p1159q4.AbstractC19653m0
    /* renamed from: V9 */
    public void mo13079V9(String str, final ReferralManager.ReferralLaunchContext referralLaunchContext) {
        g$a g_a = new g$a(requireContext());
        View inflate = LayoutInflater.from(requireContext()).inflate(C2752R.layout.dialog_referral_applied, (ViewGroup) null);
        ((TextView) inflate.findViewById(2131364785)).setText(str);
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f171u = inflate;
        c0037b.f170t = 0;
        g_a.m3660i(C2752R.string.referral_dialog_share, new DialogInterface.OnClickListener() { // from class: e.a.q4.h
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C19651l0 c19651l0 = C19651l0.this;
                ReferralManager.ReferralLaunchContext referralLaunchContext2 = referralLaunchContext;
                C19657o0 c19657o0 = c19651l0.f54579c;
                c19657o0.f54602s = referralLaunchContext2;
                AssertionUtil.isNotNull(c19657o0.f57683a, new String[0]);
                if (!h.j(c19657o0.f54587d.getString("referralLink"))) {
                    ((AbstractC19653m0) c19657o0.f57683a).mo13082Iv(c19657o0.f54587d.getString("referralCode"), c19657o0.m13065Kj(), referralLaunchContext2, c19657o0.f54585b);
                    return;
                }
                c19657o0.f54601r = C19657o0.EnumC19659b.REFERRAL;
                c19657o0.f54589f.m13048a(c19657o0);
            }
        });
        g_a.m3662g(C2752R.string.dialog_got_it, DialogInterface$OnClickListenerC19644i.f54569a);
        this.f54578b = g_a.m3652q();
    }

    @Override // p193e.p194a.p1159q4.AbstractC19653m0
    /* renamed from: Vu */
    public void mo13078Vu(String str, BulkSmsView.PromoLayout promoLayout, ReferralManager.ReferralLaunchContext referralLaunchContext, String str2) {
        m13083QA(str, null, promoLayout, referralLaunchContext, str2, false);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19653m0
    /* renamed from: Wk */
    public /* bridge */ /* synthetic */ Activity mo13077Wk() {
        return C19651l0.super.getActivity();
    }

    @Override // p193e.p194a.p1159q4.AbstractC19668s0
    /* renamed from: X6 */
    public Fragment mo13043X6(String str) {
        C19657o0 c19657o0 = this.f54579c;
        if (c19657o0 == null) {
            return null;
        }
        ReferralManager.ReferralLaunchContext referralLaunchContext = ReferralManager.ReferralLaunchContext.PROMO_POPUP;
        c19657o0.f54602s = referralLaunchContext;
        c19657o0.f54601r = C19657o0.EnumC19659b.REFERRAL;
        String string = c19657o0.f54587d.getString("referralCode");
        ReferralUrl m13062Lj = this.f54579c.m13062Lj();
        if (h.j(string) || m13062Lj == null) {
            return null;
        }
        return "App Chooser".equalsIgnoreCase(str) ? C19665r0.m13047OA(string, m13062Lj, referralLaunchContext) : C19674v.m13024OA(this.f54579c.m13060Mj(), new BulkSmsView.PromoLayout(C2752R.layout.include_large_icon_with_title_subtitle, new int[]{2131366469, 2131366110}, new String[]{getString((int) C2752R.string.referral_dialog_title_v2), getString((int) C2752R.string.referral_bulk_sms_cost_disclaimer)}, new int[]{2131364203}, new int[]{C2752R.C2753drawable.ic_invite_present}, null), referralLaunchContext, null);
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: Xa */
    public void mo13053Xa(ReferralManager.ReferralLaunchContext referralLaunchContext) {
        this.f54579c.mo13053Xa(referralLaunchContext);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19653m0
    /* renamed from: Xg */
    public void mo13076Xg() {
        DialogC12697c3 dialogC12697c3 = this.f54577a;
        if (dialogC12697c3 == null || !dialogC12697c3.isShowing()) {
            return;
        }
        this.f54577a.dismiss();
    }

    @Override // com.truecaller.referral.ReferralManager
    public void clear() {
        C19657o0 c19657o0 = this.f54579c;
        Objects.requireNonNull(c19657o0);
        for (String str : AbstractC21179b.f59357a) {
            c19657o0.f54587d.remove(str);
        }
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: dg */
    public boolean mo13052dg(Contact contact) {
        return this.f54579c.mo13052dg(contact);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19653m0
    /* renamed from: fc */
    public void mo13075fc(String str) {
        DialogC12697c3 dialogC12697c3 = new DialogC12697c3(requireContext(), true);
        this.f54577a = dialogC12697c3;
        dialogC12697c3.show();
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: j8 */
    public void mo13051j8() {
        this.f54579c.mo13051j8();
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: oe */
    public void mo13050oe(String str) {
        C19657o0 c19657o0 = this.f54579c;
        c19657o0.f54585b = str;
        c19657o0.mo13053Xa(ReferralManager.ReferralLaunchContext.DEEP_LINK);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C19651l0.super.onCreate(bundle);
        AbstractC15539j2 mo10154s = TrueApp.m36032b0().mo10154s();
        Objects.requireNonNull(mo10154s);
        C19655n0 c19655n0 = new C19655n0(10);
        C25225a.m3846s(c19655n0, C19655n0.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C19657o0 c19657o0 = (C19657o0) new C19624b0(c19655n0, mo10154s, null).f54546l.get();
        this.f54579c = c19657o0;
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        Objects.requireNonNull(c19657o0);
        if (bundle2 != null) {
            if (bundle2.containsKey("referral_launch_context")) {
                c19657o0.f54602s = (ReferralManager.ReferralLaunchContext) bundle2.getSerializable("referral_launch_context");
            }
            if (bundle2.containsKey("single_contact")) {
                c19657o0.f54603t = (Contact) bundle2.getParcelable("single_contact");
            }
        }
        this.f54579c.f57683a = this;
    }

    public void onDestroy() {
        C19651l0.super.onDestroy();
        this.f54579c.mo9806c();
    }

    public void onSaveInstanceState(Bundle bundle) {
        C19651l0.super.onSaveInstanceState(bundle);
        C19657o0 c19657o0 = this.f54579c;
        bundle.putParcelable("single_contact", c19657o0.f54603t);
        bundle.putSerializable("referral_launch_context", c19657o0.f54602s);
    }

    @Override // p193e.p194a.p1159q4.AbstractC19653m0
    /* renamed from: oo */
    public void mo13074oo() {
        g gVar = this.f54578b;
        if (gVar != null) {
            gVar.dismiss();
        }
    }

    @Override // p193e.p194a.p1159q4.AbstractC19653m0
    /* renamed from: pn */
    public void mo13073pn(String str, Contact contact, BulkSmsView.PromoLayout promoLayout, ReferralManager.ReferralLaunchContext referralLaunchContext, String str2, boolean z) {
        m13083QA(str, contact, promoLayout, referralLaunchContext, str2, z);
    }

    @Override // com.truecaller.referral.ReferralManager
    /* renamed from: sx */
    public void mo13049sx(ReferralManager.ReferralLaunchContext referralLaunchContext, Contact contact) {
        C19657o0 c19657o0 = this.f54579c;
        c19657o0.f54603t = contact;
        c19657o0.mo13053Xa(referralLaunchContext);
    }
}
