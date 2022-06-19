package p193e.p194a.p1334w.p1335a;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.data.entity.Contact;
import com.truecaller.referral.C4390R;
import com.truecaller.referrals.analytics.ReferralAnalytics$Action;
import com.truecaller.referrals.analytics.ReferralAnalytics$ShareContext;
import com.truecaller.referrals.analytics.ReferralAnalytics$Source;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.d.y.n;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1159q4.p1160w0.C19678a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p997k3.p1000l.C16496d;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018�� 22\u00020\u00012\u00020\u0002:\u00013B\u0007¢\u0006\u0004\b1\u0010\"J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u0010H\u0016¢\u0006\u0004\b \u0010\u0013J\u000f\u0010!\u001a\u00020\rH\u0016¢\u0006\u0004\b!\u0010\"R\u001d\u0010(\u001a\u00020#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00064"}, d2 = {"Le/a/w/a/a;", "Le/m/a/g/e/e;", "Le/a/w/a/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "title", "setTitle", "(Ljava/lang/String;)V", "", "shouldShow", "Hi", "(Z)V", "Landroid/content/Intent;", "whatsAppIntent", "X7", "(Landroid/content/Intent;)V", "normalizedNumber", "shareMessage", "dm", "(Ljava/lang/String;Ljava/lang/String;)V", "ro", "onDestroy", "()V", "Le/a/q4/w0/a;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/q4/w0/a;", "binding", "Le/a/w/a/d;", "e", "Le/a/w/a/d;", "RA", "()Le/a/w/a/d;", "setPresenter", "(Le/a/w/a/d;)V", "presenter", "<init>", "h", AbstractC2405c.f7629a, "referral_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.w.a.a */
/* loaded from: classes12-dex2jar.jar:e/a/w/a/a.class */
public final class C21167a extends AbstractC21171b implements AbstractC21174e {

    /* renamed from: g */
    public static final /* synthetic */ l[] f59335g = {C22128a.m8621g0(C21167a.class, "binding", "getBinding()Lcom/truecaller/referral/databinding/FragmentReferralShareSheetBinding;", 0)};

    /* renamed from: h */
    public static final C21170c f59336h = new C21170c(null);
    @Inject

    /* renamed from: e */
    public AbstractC21173d f59337e;

    /* renamed from: f */
    public final ViewBindingProperty f59338f = new C19350a(new C21169b());

    /* renamed from: e.a.w.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/w/a/a$a.class */
    public static final class View$OnClickListenerC21168a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f59339a;

        /* renamed from: b */
        public final /* synthetic */ Object f59340b;

        public View$OnClickListenerC21168a(int i, Object obj) {
            this.f59339a = i;
            this.f59340b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f59339a;
            if (i == 0) {
                C21175f c21175f = (C21175f) ((C21167a) this.f59340b).m10180RA();
                ReferralAnalytics$Source referralAnalytics$Source = c21175f.f59346c;
                if (referralAnalytics$Source == null) {
                    s1.z.c.l.l("source");
                    throw null;
                }
                String value = referralAnalytics$Source.getValue();
                String value2 = ReferralAnalytics$Action.SHARE_INVITE.getValue();
                String value3 = ReferralAnalytics$ShareContext.WHATSAPP.getValue();
                s1.z.c.l.e(value2, "action");
                n.B0(new ViewActionEvent(value2, value3, value), c21175f.f59352i);
                AbstractC21174e abstractC21174e = (AbstractC21174e) c21175f.f57683a;
                if (abstractC21174e != null) {
                    C16496d m10167Jj = c21175f.m10167Jj();
                    if (m10167Jj == null) {
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    Intent intent = m10167Jj.f46384c;
                    s1.z.c.l.d(intent, "requireNotNull(whatsAppAction).actionIntent");
                    abstractC21174e.mo10172X7(intent);
                }
                AbstractC21174e abstractC21174e2 = (AbstractC21174e) c21175f.f57683a;
                if (abstractC21174e2 == null) {
                    return;
                }
                abstractC21174e2.dismiss();
            } else if (i != 1) {
                if (i != 2) {
                    throw null;
                }
                C21175f c21175f2 = (C21175f) ((C21167a) this.f59340b).m10180RA();
                ReferralAnalytics$Source referralAnalytics$Source2 = c21175f2.f59346c;
                if (referralAnalytics$Source2 == null) {
                    s1.z.c.l.l("source");
                    throw null;
                }
                String value4 = referralAnalytics$Source2.getValue();
                String value5 = ReferralAnalytics$Action.SHARE_INVITE.getValue();
                String value6 = ReferralAnalytics$ShareContext.OTHER.getValue();
                s1.z.c.l.e(value5, "action");
                n.B0(new ViewActionEvent(value5, value6, value4), c21175f2.f59352i);
                AbstractC21174e abstractC21174e3 = (AbstractC21174e) c21175f2.f57683a;
                if (abstractC21174e3 != null) {
                    abstractC21174e3.mo10170ro(c21175f2.m10168Ij());
                }
                AbstractC21174e abstractC21174e4 = (AbstractC21174e) c21175f2.f57683a;
                if (abstractC21174e4 == null) {
                    return;
                }
                abstractC21174e4.dismiss();
            } else {
                C21175f c21175f3 = (C21175f) ((C21167a) this.f59340b).m10180RA();
                ReferralAnalytics$Source referralAnalytics$Source3 = c21175f3.f59346c;
                if (referralAnalytics$Source3 == null) {
                    s1.z.c.l.l("source");
                    throw null;
                }
                String value7 = referralAnalytics$Source3.getValue();
                String value8 = ReferralAnalytics$Action.SHARE_INVITE.getValue();
                String value9 = ReferralAnalytics$ShareContext.SMS.getValue();
                s1.z.c.l.e(value8, "action");
                n.B0(new ViewActionEvent(value8, value9, value7), c21175f3.f59352i);
                AbstractC21174e abstractC21174e5 = (AbstractC21174e) c21175f3.f57683a;
                if (abstractC21174e5 != null) {
                    String m10169Hj = c21175f3.m10169Hj();
                    if (m10169Hj == null) {
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    abstractC21174e5.mo10171dm(m10169Hj, c21175f3.m10168Ij());
                }
                AbstractC21174e abstractC21174e6 = (AbstractC21174e) c21175f3.f57683a;
                if (abstractC21174e6 == null) {
                    return;
                }
                abstractC21174e6.dismiss();
            }
        }
    }

    /* renamed from: e.a.w.a.a$b */
    /* loaded from: classes12-dex2jar.jar:e/a/w/a/a$b.class */
    public static final class C21169b extends m implements s1.z.b.l<C21167a, C19678a> {
        public C21169b() {
            super(1);
        }

        /* renamed from: d */
        public Object m10179d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4390R.C4392id.divider;
            View findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C4390R.C4392id.otherAppsContainer;
                LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                if (linearLayout != null) {
                    i = C4390R.C4392id.shareIcon;
                    ImageView imageView = (ImageView) requireView.findViewById(i);
                    if (imageView != null) {
                        i = C4390R.C4392id.shareTitle;
                        TextView textView = (TextView) requireView.findViewById(i);
                        if (textView != null) {
                            i = C4390R.C4392id.smsContainer;
                            LinearLayout linearLayout2 = (LinearLayout) requireView.findViewById(i);
                            if (linearLayout2 != null) {
                                i = C4390R.C4392id.titleInvite;
                                TextView textView2 = (TextView) requireView.findViewById(i);
                                if (textView2 != null) {
                                    i = C4390R.C4392id.whatsappContainer;
                                    LinearLayout linearLayout3 = (LinearLayout) requireView.findViewById(i);
                                    if (linearLayout3 != null) {
                                        return new C19678a((ConstraintLayout) requireView, findViewById, linearLayout, imageView, textView, linearLayout2, textView2, linearLayout3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.w.a.a$c */
    /* loaded from: classes12-dex2jar.jar:e/a/w/a/a$c.class */
    public static final class C21170c {
        public C21170c(f fVar) {
        }

        /* renamed from: a */
        public final C21167a m10178a(Contact contact, ReferralAnalytics$Source referralAnalytics$Source) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            s1.z.c.l.e(referralAnalytics$Source, "source");
            C21167a c21167a = new C21167a();
            Bundle bundle = new Bundle();
            bundle.putParcelable(AnalyticsConstants.CONTACT, contact);
            bundle.putSerializable("source", referralAnalytics$Source);
            c21167a.setArguments(bundle);
            return c21167a;
        }
    }

    @Override // p193e.p194a.p1334w.p1335a.AbstractC21174e
    /* renamed from: Hi */
    public void mo10173Hi(boolean z) {
        LinearLayout linearLayout = m10181QA().f54665e;
        s1.z.c.l.d(linearLayout, "binding.whatsappContainer");
        C19286f.m13683U(linearLayout, z);
    }

    /* renamed from: QA */
    public final C19678a m10181QA() {
        return (C19678a) this.f59338f.m34468b(this, f59335g[0]);
    }

    /* renamed from: RA */
    public final AbstractC21173d m10180RA() {
        AbstractC21173d abstractC21173d = this.f59337e;
        if (abstractC21173d != null) {
            return abstractC21173d;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1334w.p1335a.AbstractC21174e
    /* renamed from: X7 */
    public void mo10172X7(Intent intent) {
        s1.z.c.l.e(intent, "whatsAppIntent");
        requireContext().startActivity(intent);
    }

    @Override // p193e.p194a.p1334w.p1335a.AbstractC21174e
    /* renamed from: dm */
    public void mo10171dm(String str, String str2) {
        s1.z.c.l.e(str, "normalizedNumber");
        s1.z.c.l.e(str2, "shareMessage");
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + str));
        intent.putExtra("sms_body", str2);
        startActivity(intent);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C4390R.layout.fragment_referral_share_sheet, viewGroup, false);
    }

    public void onDestroy() {
        C21167a.super.onDestroy();
        AbstractC21173d abstractC21173d = this.f59337e;
        if (abstractC21173d != null) {
            ((AbstractC20576b) abstractC21173d).f57683a = null;
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C21167a.super.onViewCreated(view, bundle);
        AbstractC21173d abstractC21173d = this.f59337e;
        if (abstractC21173d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC21173d).f57683a = this;
        Bundle arguments = getArguments();
        Contact contact = arguments != null ? (Contact) arguments.getParcelable(AnalyticsConstants.CONTACT) : null;
        if (contact == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        Bundle arguments2 = getArguments();
        ReferralAnalytics$Source serializable = arguments2 != null ? arguments2.getSerializable("source") : null;
        Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.truecaller.referrals.analytics.ReferralAnalytics.Source");
        ReferralAnalytics$Source referralAnalytics$Source = serializable;
        C21175f c21175f = (C21175f) abstractC21173d;
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        s1.z.c.l.e(referralAnalytics$Source, "source");
        c21175f.f59345b = contact;
        c21175f.f59346c = referralAnalytics$Source;
        String value = referralAnalytics$Source.getValue();
        String value2 = ReferralAnalytics$Action.INVITE.getValue();
        n.B0(C22128a.m8584p1(value2, "action", value2, null, value), c21175f.f59352i);
        AbstractC21174e abstractC21174e = (AbstractC21174e) c21175f.f57683a;
        if (abstractC21174e != null) {
            String mo13768b = c21175f.f59349f.mo13768b(C4390R.string.referral_share_sheet_title, contact.m35566G());
            s1.z.c.l.d(mo13768b, "resourceProvider.getStri…heet_title, contact.name)");
            abstractC21174e.setTitle(mo13768b);
        }
        AbstractC21174e abstractC21174e2 = (AbstractC21174e) c21175f.f57683a;
        if (abstractC21174e2 != null) {
            abstractC21174e2.mo10173Hi(c21175f.m10167Jj() != null);
        }
        C19678a m10181QA = m10181QA();
        m10181QA.f54665e.setOnClickListener(new View$OnClickListenerC21168a(0, this));
        m10181QA.f54664d.setOnClickListener(new View$OnClickListenerC21168a(1, this));
        m10181QA.f54662b.setOnClickListener(new View$OnClickListenerC21168a(2, this));
    }

    @Override // p193e.p194a.p1334w.p1335a.AbstractC21174e
    /* renamed from: ro */
    public void mo10170ro(String str) {
        s1.z.c.l.e(str, "shareMessage");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str);
        requireContext().startActivity(intent);
    }

    @Override // p193e.p194a.p1334w.p1335a.AbstractC21174e
    public void setTitle(String str) {
        s1.z.c.l.e(str, "title");
        TextView textView = m10181QA().f54663c;
        s1.z.c.l.d(textView, "binding.shareTitle");
        textView.setText(str);
    }
}
