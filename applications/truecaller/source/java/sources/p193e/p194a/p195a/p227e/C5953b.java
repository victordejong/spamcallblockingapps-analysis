package p193e.p194a.p195a.p227e;

import android.animation.Animator;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.banner.BannerViewX;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.inboxcleanup.CleanupResult;
import com.truecaller.messaging.inboxcleanup.InboxCleanupPreviewActivity;
import com.truecaller.messaging.inboxcleanup.Mode;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.d;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1411b.p1412a.C21913e;
import p193e.p1411b.p1412a.C21914f;
import p193e.p1411b.p1412a.C21942p;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.C21846z1;
import p193e.p194a.p1059m3.C18156e0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1268u.a$b;
import p193e.p194a.p195a.p227e.C5999k;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import s1.a.l;
import s1.s;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\r\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� t2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001^B\u0007¢\u0006\u0004\bs\u0010$J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00112\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J9\u0010\u001c\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010!\u001a\u00020\u00062\b\b\u0001\u0010\u001f\u001a\u00020\u001e2\b\b\u0001\u0010 \u001a\u00020\u001eH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b%\u0010$J\u000f\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010$J\u0017\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b)\u0010*J\u0017\u0010+\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b+\u0010*J\u0017\u0010,\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b,\u0010*J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020'H\u0016¢\u0006\u0004\b.\u0010*J\u000f\u0010/\u001a\u00020\u0006H\u0016¢\u0006\u0004\b/\u0010$J\u0017\u00100\u001a\u00020\u00062\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b0\u0010*J/\u00106\u001a\u00020\u00062\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u00020\u001e2\u0006\u00105\u001a\u00020\u001eH\u0016¢\u0006\u0004\b6\u00107J'\u00108\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u00020\u001e2\u0006\u00105\u001a\u00020\u001eH\u0016¢\u0006\u0004\b8\u00109J/\u0010;\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u00020\u001e2\u0006\u00105\u001a\u00020\u001e2\u0006\u0010:\u001a\u00020'H\u0016¢\u0006\u0004\b;\u0010<J'\u0010=\u001a\u00020\u00062\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u00020\u001e2\u0006\u00105\u001a\u00020\u001eH\u0016¢\u0006\u0004\b=\u00109J\u000f\u0010>\u001a\u00020\u0006H\u0016¢\u0006\u0004\b>\u0010$J\u0017\u0010?\u001a\u00020\u00062\u0006\u0010-\u001a\u00020'H\u0016¢\u0006\u0004\b?\u0010*J\u0017\u0010@\u001a\u00020\u00062\u0006\u0010-\u001a\u00020'H\u0016¢\u0006\u0004\b@\u0010*J\u0017\u0010A\u001a\u00020\u00062\u0006\u0010-\u001a\u00020'H\u0016¢\u0006\u0004\bA\u0010*J\u0017\u0010C\u001a\u00020\u00062\u0006\u0010B\u001a\u00020\u001eH\u0016¢\u0006\u0004\bC\u0010DJ\u0017\u0010E\u001a\u00020\u00062\u0006\u0010B\u001a\u00020\u001eH\u0016¢\u0006\u0004\bE\u0010DJ\u0017\u0010F\u001a\u00020\u00062\u0006\u0010B\u001a\u00020\u001eH\u0016¢\u0006\u0004\bF\u0010DJ\u0017\u0010H\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u001eH\u0016¢\u0006\u0004\bH\u0010DJ\u0017\u0010I\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u001eH\u0016¢\u0006\u0004\bI\u0010DJ\u0017\u0010J\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u001eH\u0016¢\u0006\u0004\bJ\u0010DJ\u000f\u0010K\u001a\u00020\u0006H\u0016¢\u0006\u0004\bK\u0010$J\u0017\u0010M\u001a\u00020\u00062\u0006\u0010L\u001a\u00020'H\u0016¢\u0006\u0004\bM\u0010*J\u000f\u0010N\u001a\u00020\u0006H\u0016¢\u0006\u0004\bN\u0010$J\u000f\u0010O\u001a\u00020\u0006H\u0016¢\u0006\u0004\bO\u0010$J\u000f\u0010P\u001a\u00020\u0006H\u0016¢\u0006\u0004\bP\u0010$J\u000f\u0010Q\u001a\u00020\u0006H\u0016¢\u0006\u0004\bQ\u0010$J\u000f\u0010R\u001a\u00020\u0006H\u0016¢\u0006\u0004\bR\u0010$J\u000f\u0010S\u001a\u00020\u0006H\u0016¢\u0006\u0004\bS\u0010$J\u000f\u0010T\u001a\u00020\u0006H\u0016¢\u0006\u0004\bT\u0010$R\"\u0010\\\u001a\u00020U8��@��X\u0081.¢\u0006\u0012\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R\u001d\u0010b\u001a\u00020]8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010_\u001a\u0004\b`\u0010aR\u0016\u0010f\u001a\u00020c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bd\u0010eR\"\u0010n\u001a\u00020g8��@��X\u0081.¢\u0006\u0012\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\u0016\u0010r\u001a\u00020o8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bp\u0010q¨\u0006u"}, d2 = {"Le/a/a/e/b;", "Landroidx/fragment/app/Fragment;", "Le/a/a/e/v;", "Le/a/u/a$b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "Lcom/truecaller/messaging/data/types/Message;", "otpMessages", "promotionalMessages", "spamMessages", "Hb", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "", "title", "subtitle", "Z0", "(II)V", "Ko", "()V", "L9", "Hs", "", AnalyticsConstants.SHOW, "ac", "(Z)V", "cp", "Vr", "enabled", "vc", "qm", "Mm", "", "relativeDate", "otpCount", "promotionalCount", "spamCount", "Uu", "(Ljava/lang/CharSequence;III)V", "oh", "(III)V", "showNextStep", "jm", "(IIIZ)V", "uy", "onStart", "si", "g7", "la", "days", "ea", "(I)V", "Hq", "Ld", "count", "hv", "kt", "U6", "U7", "enable", "vu", "onDestroyView", "r4", "U3", "d5", "Y5", "o5", "A5", "Le/a/a/e/h0;", "d", "Le/a/a/e/h0;", "getInboxCleanupShareHelper$truecaller_googlePlayRelease", "()Le/a/a/e/h0;", "setInboxCleanupShareHelper$truecaller_googlePlayRelease", "(Le/a/a/e/h0;)V", "inboxCleanupShareHelper", "Le/a/m3/e0;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/e0;", "binding", "Le/m/a/g/e/d;", "a", "Le/m/a/g/e/d;", "loadingDialog", "Le/a/a/e/u;", AbstractC2405c.f7629a, "Le/a/a/e/u;", "PA", "()Le/a/a/e/u;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/e/u;)V", "presenter", "Landroid/content/BroadcastReceiver;", C22021b.f61237c, "Landroid/content/BroadcastReceiver;", "cleanupBroadcastReceiver", "<init>", "g", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.e.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/b.class */
public final class C5953b extends Fragment implements AbstractC6020v, a$b {

    /* renamed from: f */
    public static final /* synthetic */ l[] f19865f = {C22128a.m8621g0(C5953b.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentInboxCleanupBinding;", 0)};

    /* renamed from: g */
    public static final C5958e f19866g = new C5958e(null);

    /* renamed from: a */
    public d f19867a;

    /* renamed from: b */
    public BroadcastReceiver f19868b;
    @Inject

    /* renamed from: c */
    public AbstractC6019u f19869c;
    @Inject

    /* renamed from: d */
    public AbstractC5995h0 f19870d;

    /* renamed from: e */
    public final ViewBindingProperty f19871e = new C19350a(new C5957d());

    /* renamed from: e.a.a.e.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/e/b$a.class */
    public static final class View$OnClickListenerC5954a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f19872a;

        /* renamed from: b */
        public final /* synthetic */ Object f19873b;

        public View$OnClickListenerC5954a(int i, Object obj) {
            this.f19872a = i;
            this.f19873b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f19872a;
            if (i == 0) {
                ((C5953b) this.f19873b).requireActivity().onBackPressed();
            } else if (i != 1) {
                throw null;
            } else {
                ((C5953b) this.f19873b).m32112PA().mo31965c6();
            }
        }
    }

    /* renamed from: e.a.a.e.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/e/b$b.class */
    public static final class C5955b extends m implements a<s> {

        /* renamed from: b */
        public final /* synthetic */ int f19874b;

        /* renamed from: c */
        public final /* synthetic */ Object f19875c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5955b(int i, Object obj) {
            super(0);
            this.f19874b = i;
            this.f19875c = obj;
        }

        public final Object invoke() {
            s sVar = s.a;
            int i = this.f19874b;
            if (i == 0) {
                ((C5953b) this.f19875c).m32112PA().mo31964e9();
                return sVar;
            } else if (i == 1) {
                ((C5953b) this.f19875c).m32112PA().mo31965c6();
                return sVar;
            } else if (i != 2) {
                throw null;
            } else {
                ((C5953b) this.f19875c).m32112PA().mo31962g3();
                return sVar;
            }
        }
    }

    /* renamed from: e.a.a.e.b$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/b$c.class */
    public static final class View$OnClickListenerC5956c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ d f19876a;

        public View$OnClickListenerC5956c(d dVar) {
            this.f19876a = dVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f19876a.dismiss();
        }
    }

    /* renamed from: e.a.a.e.b$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/b$d.class */
    public static final class C5957d extends m implements s1.z.b.l<C5953b, C18156e0> {
        public C5957d() {
            super(1);
        }

        /* renamed from: d */
        public Object m32111d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362137;
            ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(C2752R.C2754id.allTimeStats);
            if (constraintLayout != null) {
                i = 2131362212;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) requireView.findViewById(C2752R.C2754id.autoCleanupContainer);
                if (constraintLayout2 != null) {
                    i = 2131362313;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.bgOtp);
                    if (appCompatImageView != null) {
                        i = 2131362314;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.bgPromotional);
                        if (appCompatImageView2 != null) {
                            i = 2131362315;
                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.bgSpam);
                            if (appCompatImageView3 != null) {
                                i = 2131362403;
                                MaterialButton findViewById = requireView.findViewById(C2752R.C2754id.btnAutoViewPrefs);
                                if (findViewById != null) {
                                    i = 2131362410;
                                    Button button = (Button) requireView.findViewById(C2752R.C2754id.btnChangeOtp);
                                    if (button != null) {
                                        i = 2131362411;
                                        Button button2 = (Button) requireView.findViewById(C2752R.C2754id.btnChangePromotional);
                                        if (button2 != null) {
                                            i = 2131362412;
                                            Button button3 = (Button) requireView.findViewById(C2752R.C2754id.btnChangeSpam);
                                            if (button3 != null) {
                                                i = 2131362413;
                                                MaterialButton findViewById2 = requireView.findViewById(C2752R.C2754id.btnCleanupNow);
                                                if (findViewById2 != null) {
                                                    i = 2131362752;
                                                    CheckBox checkBox = (CheckBox) requireView.findViewById(C2752R.C2754id.checkBoxOtp);
                                                    if (checkBox != null) {
                                                        i = 2131362753;
                                                        CheckBox checkBox2 = (CheckBox) requireView.findViewById(C2752R.C2754id.checkBoxPromotional);
                                                        if (checkBox2 != null) {
                                                            i = 2131362754;
                                                            CheckBox checkBox3 = (CheckBox) requireView.findViewById(C2752R.C2754id.checkBoxSpam);
                                                            if (checkBox3 != null) {
                                                                i = 2131364056;
                                                                Group group = (Group) requireView.findViewById(C2752R.C2754id.groupPromotional);
                                                                if (group != null) {
                                                                    i = 2131364057;
                                                                    Group group2 = (Group) requireView.findViewById(C2752R.C2754id.groupPromotionalAllTime);
                                                                    if (group2 != null) {
                                                                        i = 2131364058;
                                                                        Group group3 = (Group) requireView.findViewById(C2752R.C2754id.groupPromotionalStats);
                                                                        if (group3 != null) {
                                                                            i = 2131364311;
                                                                            AppCompatImageView appCompatImageView4 = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.imgOtp);
                                                                            if (appCompatImageView4 != null) {
                                                                                i = 2131364312;
                                                                                AppCompatImageView appCompatImageView5 = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.imgPromotional);
                                                                                if (appCompatImageView5 != null) {
                                                                                    i = 2131364313;
                                                                                    AppCompatImageView appCompatImageView6 = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.imgSpam);
                                                                                    if (appCompatImageView6 != null) {
                                                                                        i = 2131364722;
                                                                                        ConstraintLayout constraintLayout3 = (ConstraintLayout) requireView.findViewById(C2752R.C2754id.manualCleanupStats);
                                                                                        if (constraintLayout3 != null) {
                                                                                            i = 2131365048;
                                                                                            View findViewById3 = requireView.findViewById(C2752R.C2754id.otpDivider);
                                                                                            if (findViewById3 != null) {
                                                                                                i = 2131365287;
                                                                                                BannerViewX bannerViewX = (BannerViewX) requireView.findViewById(C2752R.C2754id.promoBanner);
                                                                                                if (bannerViewX != null) {
                                                                                                    i = 2131365299;
                                                                                                    View findViewById4 = requireView.findViewById(C2752R.C2754id.promotionalDivider);
                                                                                                    if (findViewById4 != null) {
                                                                                                        i = 2131365312;
                                                                                                        ConstraintLayout constraintLayout4 = (ConstraintLayout) requireView.findViewById(C2752R.C2754id.quickCleanupContainer);
                                                                                                        if (constraintLayout4 != null) {
                                                                                                            i = 2131365866;
                                                                                                            AppCompatImageView appCompatImageView7 = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.shareAllTime);
                                                                                                            if (appCompatImageView7 != null) {
                                                                                                                i = 2131366070;
                                                                                                                View findViewById5 = requireView.findViewById(C2752R.C2754id.statsDividerOtp);
                                                                                                                if (findViewById5 != null) {
                                                                                                                    i = 2131366071;
                                                                                                                    View findViewById6 = requireView.findViewById(C2752R.C2754id.statsDividerPromotional);
                                                                                                                    if (findViewById6 != null) {
                                                                                                                        i = 2131366167;
                                                                                                                        SwitchCompat switchCompat = (SwitchCompat) requireView.findViewById(C2752R.C2754id.switchAutoCleanup);
                                                                                                                        if (switchCompat != null) {
                                                                                                                            i = 2131366512;
                                                                                                                            MaterialToolbar findViewById7 = requireView.findViewById(2131366512);
                                                                                                                            if (findViewById7 != null) {
                                                                                                                                i = 2131366643;
                                                                                                                                TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.txtAllTime);
                                                                                                                                if (textView != null) {
                                                                                                                                    i = 2131366644;
                                                                                                                                    TextView textView2 = (TextView) requireView.findViewById(C2752R.C2754id.txtAllTimeOtp);
                                                                                                                                    if (textView2 != null) {
                                                                                                                                        i = 2131366645;
                                                                                                                                        TextView textView3 = (TextView) requireView.findViewById(C2752R.C2754id.txtAllTimeOtpCount);
                                                                                                                                        if (textView3 != null) {
                                                                                                                                            i = 2131366646;
                                                                                                                                            TextView textView4 = (TextView) requireView.findViewById(C2752R.C2754id.txtAllTimePromotional);
                                                                                                                                            if (textView4 != null) {
                                                                                                                                                i = 2131366647;
                                                                                                                                                TextView textView5 = (TextView) requireView.findViewById(C2752R.C2754id.txtAllTimePromotionalCount);
                                                                                                                                                if (textView5 != null) {
                                                                                                                                                    i = 2131366648;
                                                                                                                                                    TextView textView6 = (TextView) requireView.findViewById(C2752R.C2754id.txtAllTimeSpam);
                                                                                                                                                    if (textView6 != null) {
                                                                                                                                                        i = 2131366649;
                                                                                                                                                        TextView textView7 = (TextView) requireView.findViewById(C2752R.C2754id.txtAllTimeSpamCount);
                                                                                                                                                        if (textView7 != null) {
                                                                                                                                                            i = 2131366650;
                                                                                                                                                            TextView textView8 = (TextView) requireView.findViewById(C2752R.C2754id.txtAutoCleanupSubtitle);
                                                                                                                                                            if (textView8 != null) {
                                                                                                                                                                i = 2131366651;
                                                                                                                                                                TextView textView9 = (TextView) requireView.findViewById(C2752R.C2754id.txtDeleteOtp);
                                                                                                                                                                if (textView9 != null) {
                                                                                                                                                                    i = 2131366652;
                                                                                                                                                                    TextView textView10 = (TextView) requireView.findViewById(C2752R.C2754id.txtDeletePromotional);
                                                                                                                                                                    if (textView10 != null) {
                                                                                                                                                                        i = 2131366653;
                                                                                                                                                                        TextView textView11 = (TextView) requireView.findViewById(C2752R.C2754id.txtDeleteSpam);
                                                                                                                                                                        if (textView11 != null) {
                                                                                                                                                                            i = 2131366654;
                                                                                                                                                                            TextView textView12 = (TextView) requireView.findViewById(C2752R.C2754id.txtLastCleanup);
                                                                                                                                                                            if (textView12 != null) {
                                                                                                                                                                                i = 2131366655;
                                                                                                                                                                                TextView textView13 = (TextView) requireView.findViewById(C2752R.C2754id.txtManualStatsOtp);
                                                                                                                                                                                if (textView13 != null) {
                                                                                                                                                                                    i = 2131366656;
                                                                                                                                                                                    TextView textView14 = (TextView) requireView.findViewById(C2752R.C2754id.txtManualStatsPromotional);
                                                                                                                                                                                    if (textView14 != null) {
                                                                                                                                                                                        i = 2131366657;
                                                                                                                                                                                        TextView textView15 = (TextView) requireView.findViewById(C2752R.C2754id.txtManualStatsSpam);
                                                                                                                                                                                        if (textView15 != null) {
                                                                                                                                                                                            i = 2131366662;
                                                                                                                                                                                            TextView textView16 = (TextView) requireView.findViewById(C2752R.C2754id.txtOtpPeriod);
                                                                                                                                                                                            if (textView16 != null) {
                                                                                                                                                                                                i = 2131366663;
                                                                                                                                                                                                TextView textView17 = (TextView) requireView.findViewById(C2752R.C2754id.txtOtpTitle);
                                                                                                                                                                                                if (textView17 != null) {
                                                                                                                                                                                                    i = 2131366667;
                                                                                                                                                                                                    TextView textView18 = (TextView) requireView.findViewById(C2752R.C2754id.txtPromotionalPeriod);
                                                                                                                                                                                                    if (textView18 != null) {
                                                                                                                                                                                                        i = 2131366669;
                                                                                                                                                                                                        TextView textView19 = (TextView) requireView.findViewById(C2752R.C2754id.txtPromotionalTitle);
                                                                                                                                                                                                        if (textView19 != null) {
                                                                                                                                                                                                            i = 2131366670;
                                                                                                                                                                                                            TextView textView20 = (TextView) requireView.findViewById(C2752R.C2754id.txtQuickCleanup);
                                                                                                                                                                                                            if (textView20 != null) {
                                                                                                                                                                                                                i = 2131366674;
                                                                                                                                                                                                                TextView textView21 = (TextView) requireView.findViewById(C2752R.C2754id.txtSpamPeriod);
                                                                                                                                                                                                                if (textView21 != null) {
                                                                                                                                                                                                                    i = 2131366676;
                                                                                                                                                                                                                    TextView textView22 = (TextView) requireView.findViewById(C2752R.C2754id.txtSpamTitle);
                                                                                                                                                                                                                    if (textView22 != null) {
                                                                                                                                                                                                                        return new C18156e0((ConstraintLayout) requireView, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, appCompatImageView3, findViewById, button, button2, button3, findViewById2, checkBox, checkBox2, checkBox3, group, group2, group3, appCompatImageView4, appCompatImageView5, appCompatImageView6, constraintLayout3, findViewById3, bannerViewX, findViewById4, constraintLayout4, appCompatImageView7, findViewById5, findViewById6, switchCompat, findViewById7, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20, textView21, textView22);
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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

    /* renamed from: e.a.a.e.b$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/b$e.class */
    public static final class C5958e {
        public C5958e(f fVar) {
        }
    }

    /* renamed from: e.a.a.e.b$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/b$f.class */
    public static final class C5959f extends m implements s1.z.b.l<View, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5959f() {
            super(1);
            C5953b.this = r4;
        }

        /* renamed from: d */
        public Object m32110d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            C5953b.this.m32112PA().mo31961g7();
            return s.a;
        }
    }

    /* renamed from: e.a.a.e.b$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/b$g.class */
    public static final class C5960g extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5960g() {
            super(0);
            C5953b.this = r4;
        }

        public Object invoke() {
            C5953b.this.m32112PA().mo31956o7();
            return s.a;
        }
    }

    /* renamed from: e.a.a.e.b$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/b$h.class */
    public static final class C5961h implements AbstractC6017s {
        public C5961h() {
            C5953b.this = r4;
        }

        @Override // p193e.p194a.p195a.p227e.AbstractC6017s
        /* renamed from: a */
        public void mo32022a(Mode mode) {
            s1.z.c.l.e(mode, AnalyticsConstants.MODE);
            C5953b c5953b = C5953b.this;
            Context requireContext = c5953b.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(mode, AnalyticsConstants.MODE);
            Intent intent = new Intent(requireContext, InboxCleanupPreviewActivity.class);
            intent.putExtra(AnalyticsConstants.MODE, mode.name());
            c5953b.startActivity(intent);
        }

        @Override // p193e.p194a.p195a.p227e.AbstractC6017s
        /* renamed from: r1 */
        public void mo32021r1() {
            C5953b.this.m32112PA().mo31959jf();
        }
    }

    /* renamed from: e.a.a.e.b$i */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/b$i.class */
    public static final class C5962i extends m implements s1.z.b.l<Animator, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5962i(Context context) {
            super(1);
            C5953b.this = r4;
        }

        /* renamed from: d */
        public Object m32109d(Object obj) {
            Animator animator = (Animator) obj;
            d dVar = C5953b.this.f19867a;
            if (dVar == null) {
                s1.z.c.l.l("loadingDialog");
                throw null;
            }
            dVar.dismiss();
            C5953b.this.m32112PA().mo31977I8();
            return s.a;
        }
    }

    /* renamed from: e.a.a.e.b$j */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/b$j.class */
    public static final class C5963j extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5963j() {
            super(0);
            C5953b.this = r4;
        }

        public Object invoke() {
            C5953b.this.m32112PA().mo31967Zf();
            return s.a;
        }
    }

    /* renamed from: e.a.a.e.b$k */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/b$k.class */
    public static final class C5964k extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5964k() {
            super(0);
            C5953b.this = r4;
        }

        public Object invoke() {
            C5953b.this.m32112PA().mo31967Zf();
            return s.a;
        }
    }

    /* renamed from: e.a.a.e.b$l */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/b$l.class */
    public static final class C5965l extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5965l() {
            super(0);
            C5953b.this = r4;
        }

        public Object invoke() {
            C5953b.this.m32112PA().mo31967Zf();
            return s.a;
        }
    }

    @Override // p193e.p194a.p1268u.a$b
    /* renamed from: A5 */
    public void mo11029A5() {
        AbstractC5995h0 abstractC5995h0 = this.f19870d;
        if (abstractC5995h0 != null) {
            abstractC5995h0.mo32077A5();
        } else {
            s1.z.c.l.l("inboxCleanupShareHelper");
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [e.a.a.e.c, android.app.Dialog] */
    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: Hb */
    public void mo32020Hb(List<Message> list, List<Message> list2, List<Message> list3) {
        s1.z.c.l.e(list, "otpMessages");
        s1.z.c.l.e(list2, "promotionalMessages");
        s1.z.c.l.e(list3, "spamMessages");
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        new C5967c(requireActivity, list, list2, list3, new C5961h()).show();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: Hq */
    public void mo32019Hq(int i) {
        TextView textView = m32113OA().f51187L;
        s1.z.c.l.d(textView, "binding.txtPromotionalPeriod");
        C10480a.m26084C2(textView, i);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: Hs */
    public void mo32018Hs() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        new DialogC5949a(requireContext, Mode.SPAM, true, new C5965l()).show();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: Ko */
    public void mo32017Ko() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        new DialogC5949a(requireContext, Mode.OTP, true, new C5963j()).show();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: L9 */
    public void mo32016L9() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        new DialogC5949a(requireContext, Mode.PROMOTIONAL, true, new C5964k()).show();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: Ld */
    public void mo32015Ld(int i) {
        TextView textView = m32113OA().f51188M;
        s1.z.c.l.d(textView, "binding.txtSpamPeriod");
        C10480a.m26084C2(textView, i);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: Mm */
    public void mo32014Mm(boolean z) {
        ConstraintLayout constraintLayout = m32113OA().f51202n;
        s1.z.c.l.d(constraintLayout, "binding.manualCleanupStats");
        C19286f.m13683U(constraintLayout, z);
        ConstraintLayout constraintLayout2 = m32113OA().f51189a;
        s1.z.c.l.d(constraintLayout2, "binding.allTimeStats");
        C19286f.m13683U(constraintLayout2, z);
    }

    /* renamed from: OA */
    public final C18156e0 m32113OA() {
        return (C18156e0) this.f19871e.m34468b(this, f19865f[0]);
    }

    /* renamed from: PA */
    public final AbstractC6019u m32112PA() {
        AbstractC6019u abstractC6019u = this.f19869c;
        if (abstractC6019u != null) {
            return abstractC6019u;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1268u.a$b
    /* renamed from: U3 */
    public void mo11028U3() {
        AbstractC5995h0 abstractC5995h0 = this.f19870d;
        if (abstractC5995h0 != null) {
            abstractC5995h0.mo32076U3();
        } else {
            s1.z.c.l.l("inboxCleanupShareHelper");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: U6 */
    public void mo32013U6(int i) {
        CheckBox checkBox = m32113OA().f51198j;
        s1.z.c.l.d(checkBox, "binding.checkBoxSpam");
        C19286f.m13684T(checkBox);
        CheckBox checkBox2 = m32113OA().f51198j;
        s1.z.c.l.d(checkBox2, "binding.checkBoxSpam");
        checkBox2.setText(String.valueOf(i));
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: U7 */
    public void mo32012U7() {
        CheckBox checkBox = m32113OA().f51196h;
        s1.z.c.l.d(checkBox, "binding.checkBoxOtp");
        C19286f.m13683U(checkBox, false);
        CheckBox checkBox2 = m32113OA().f51197i;
        s1.z.c.l.d(checkBox2, "binding.checkBoxPromotional");
        C19286f.m13683U(checkBox2, false);
        CheckBox checkBox3 = m32113OA().f51198j;
        s1.z.c.l.d(checkBox3, "binding.checkBoxSpam");
        C19286f.m13683U(checkBox3, false);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: Uu */
    public void mo32011Uu(CharSequence charSequence, int i, int i2, int i3) {
        Resources resources;
        Resources resources2;
        Resources resources3;
        s1.z.c.l.e(charSequence, "relativeDate");
        TextView textView = m32113OA().f51182C;
        s1.z.c.l.d(textView, "binding.txtLastCleanup");
        textView.setText(getString((int) C2752R.string.inbox_cleanup_last_cleanup, new Object[]{charSequence}));
        TextView textView2 = m32113OA().f51183D;
        s1.z.c.l.d(textView2, "binding.txtManualStatsOtp");
        Context context = getContext();
        textView2.setText((context == null || (resources3 = context.getResources()) == null) ? null : resources3.getQuantityString(C2752R.plurals.inbox_cleanup_stats_messages_deleted, i, Integer.valueOf(i)));
        TextView textView3 = m32113OA().f51184E;
        s1.z.c.l.d(textView3, "binding.txtManualStatsPromotional");
        Context context2 = getContext();
        textView3.setText((context2 == null || (resources2 = context2.getResources()) == null) ? null : resources2.getQuantityString(C2752R.plurals.inbox_cleanup_stats_messages_deleted, i2, Integer.valueOf(i2)));
        TextView textView4 = m32113OA().f51185J;
        s1.z.c.l.d(textView4, "binding.txtManualStatsSpam");
        Context context3 = getContext();
        textView4.setText((context3 == null || (resources = context3.getResources()) == null) ? null : resources.getQuantityString(C2752R.plurals.inbox_cleanup_stats_messages_deleted, i3, Integer.valueOf(i3)));
        Group group = m32113OA().f51201m;
        s1.z.c.l.d(group, "binding.groupPromotionalStats");
        AbstractC6019u abstractC6019u = this.f19869c;
        if (abstractC6019u != null) {
            C19286f.m13683U(group, abstractC6019u.mo31955p9());
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: Vr */
    public void mo32010Vr(boolean z) {
        ConstraintLayout constraintLayout = m32113OA().f51190b;
        s1.z.c.l.d(constraintLayout, "binding.autoCleanupContainer");
        C19286f.m13683U(constraintLayout, z);
    }

    @Override // p193e.p194a.p1268u.a$b
    /* renamed from: Y5 */
    public void mo11027Y5() {
        AbstractC5995h0 abstractC5995h0 = this.f19870d;
        if (abstractC5995h0 != null) {
            abstractC5995h0.mo32075Y5();
        } else {
            s1.z.c.l.l("inboxCleanupShareHelper");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: Z0 */
    public void mo32009Z0(int i, int i2) {
        String string = getString(i);
        s1.z.c.l.d(string, "getString(title)");
        String string2 = getString(i2);
        s1.z.c.l.d(string2, "getString(subtitle)");
        C21846z1 c21846z1 = new C21846z1(string, string2);
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        c21846z1.m8995cB(childFragmentManager);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: ac */
    public void mo32008ac(boolean z) {
        BannerViewX bannerViewX = m32113OA().f51204p;
        s1.z.c.l.d(bannerViewX, "binding.promoBanner");
        C19286f.m13683U(bannerViewX, z);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: cp */
    public void mo32007cp(boolean z) {
        if (z) {
            d dVar = new d(requireContext());
            View inflate = View.inflate(dVar.getContext(), C2752R.layout.bottom_sheet_inbox_cleaner_anim, null);
            ((Button) inflate.findViewById(C2752R.C2754id.btnRunInBg)).setOnClickListener(new View$OnClickListenerC5956c(dVar));
            dVar.setContentView(inflate);
            dVar.show();
            this.f19867a = dVar;
            return;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        d dVar2 = this.f19867a;
        if (dVar2 == null) {
            return;
        }
        if (dVar2 == null) {
            s1.z.c.l.l("loadingDialog");
            throw null;
        }
        LottieAnimationView lottieAnimationView = (LottieAnimationView) dVar2.findViewById(C2752R.C2754id.lottieView);
        if (lottieAnimationView == null) {
            return;
        }
        C21942p<C21913e> m8900d = C21914f.m8900d(requireContext, C19291g.m13559d0(requireContext, C2752R.attr.tcx_inboxCleanerAnimComplete));
        s1.z.c.l.d(m8900d, "LottieCompositionFactory…nboxCleanerAnimComplete))");
        C21913e c21913e = m8900d.f60927a;
        if (c21913e != null) {
            lottieAnimationView.setComposition(c21913e);
        } else {
            lottieAnimationView.m42594d();
            lottieAnimationView.setAnimation(C19291g.m13559d0(requireContext, C2752R.attr.tcx_inboxCleanerAnimComplete));
        }
        lottieAnimationView.m42591g();
        lottieAnimationView.setRepeatCount(0);
        C12864a2.m22579O(lottieAnimationView, new C5962i(requireContext));
    }

    @Override // p193e.p194a.p1268u.a$b
    /* renamed from: d5 */
    public void mo11026d5() {
        AbstractC5995h0 abstractC5995h0 = this.f19870d;
        if (abstractC5995h0 != null) {
            abstractC5995h0.mo32071d5();
        } else {
            s1.z.c.l.l("inboxCleanupShareHelper");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: ea */
    public void mo32006ea(int i) {
        TextView textView = m32113OA().f51186K;
        s1.z.c.l.d(textView, "binding.txtOtpPeriod");
        C10480a.m26084C2(textView, i);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: g7 */
    public void mo32005g7(boolean z) {
        CheckBox checkBox = m32113OA().f51197i;
        s1.z.c.l.d(checkBox, "binding.checkBoxPromotional");
        checkBox.setChecked(z);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: hv */
    public void mo32004hv(int i) {
        CheckBox checkBox = m32113OA().f51196h;
        s1.z.c.l.d(checkBox, "binding.checkBoxOtp");
        C19286f.m13684T(checkBox);
        CheckBox checkBox2 = m32113OA().f51196h;
        s1.z.c.l.d(checkBox2, "binding.checkBoxOtp");
        checkBox2.setText(String.valueOf(i));
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [e.a.a.e.e, android.app.Dialog] */
    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: jm */
    public void mo32003jm(int i, int i2, int i3, boolean z) {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        new C5982e(requireContext, i, i2, i3, z, new C5955b(0, this), new C5955b(1, this), new C5955b(2, this)).show();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: kt */
    public void mo32002kt(int i) {
        CheckBox checkBox = m32113OA().f51197i;
        s1.z.c.l.d(checkBox, "binding.checkBoxPromotional");
        C19286f.m13684T(checkBox);
        CheckBox checkBox2 = m32113OA().f51197i;
        s1.z.c.l.d(checkBox2, "binding.checkBoxPromotional");
        checkBox2.setText(String.valueOf(i));
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: la */
    public void mo32001la(boolean z) {
        CheckBox checkBox = m32113OA().f51198j;
        s1.z.c.l.d(checkBox, "binding.checkBoxSpam");
        checkBox.setChecked(z);
    }

    @Override // p193e.p194a.p1268u.a$b
    /* renamed from: o5 */
    public void mo11025o5() {
        AbstractC5995h0 abstractC5995h0 = this.f19870d;
        if (abstractC5995h0 != null) {
            abstractC5995h0.mo32070o5();
        } else {
            s1.z.c.l.l("inboxCleanupShareHelper");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: oh */
    public void mo32000oh(int i, int i2, int i3) {
        Resources resources;
        Resources resources2;
        Resources resources3;
        TextView textView = m32113OA().f51212x;
        s1.z.c.l.d(textView, "binding.txtAllTimeOtpCount");
        textView.setText(String.valueOf(i));
        TextView textView2 = m32113OA().f51211w;
        s1.z.c.l.d(textView2, "binding.txtAllTimeOtp");
        Context context = getContext();
        textView2.setText((context == null || (resources3 = context.getResources()) == null) ? null : resources3.getQuantityString(C2752R.plurals.inbox_cleanup_all_time_stats_messages_otp, i3));
        TextView textView3 = m32113OA().f51214z;
        s1.z.c.l.d(textView3, "binding.txtAllTimePromotionalCount");
        textView3.setText(String.valueOf(i2));
        TextView textView4 = m32113OA().f51213y;
        s1.z.c.l.d(textView4, "binding.txtAllTimePromotional");
        Context context2 = getContext();
        textView4.setText((context2 == null || (resources2 = context2.getResources()) == null) ? null : resources2.getQuantityString(C2752R.plurals.inbox_cleanup_all_time_stats_messages_promotional, i2));
        TextView textView5 = m32113OA().f51181B;
        s1.z.c.l.d(textView5, "binding.txtAllTimeSpamCount");
        textView5.setText(String.valueOf(i3));
        TextView textView6 = m32113OA().f51180A;
        s1.z.c.l.d(textView6, "binding.txtAllTimeSpam");
        Context context3 = getContext();
        textView6.setText((context3 == null || (resources = context3.getResources()) == null) ? null : resources.getQuantityString(C2752R.plurals.inbox_cleanup_all_time_stats_messages_spam, i3));
        Group group = m32113OA().f51200l;
        s1.z.c.l.d(group, "binding.groupPromotionalAllTime");
        AbstractC6019u abstractC6019u = this.f19869c;
        if (abstractC6019u != null) {
            C19286f.m13683U(group, abstractC6019u.mo31955p9());
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C5953b.super.onAttach(context);
        this.f19868b = new C6018t(this);
        C27062a m968b = C27062a.m968b(context);
        BroadcastReceiver broadcastReceiver = this.f19868b;
        if (broadcastReceiver == null) {
            s1.z.c.l.l("cleanupBroadcastReceiver");
            throw null;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.truecaller.inboxcleanup.CLEANUP_DONE");
        intentFilter.addAction("com.truecaller.inboxcleanup.CLEANUP_IN_PROGRESS");
        m968b.m967c(broadcastReceiver, intentFilter);
    }

    public void onCreate(Bundle bundle) {
        C5953b.super.onCreate(bundle);
        C5999k.C6001b m32061a = C5999k.m32061a();
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        Context applicationContext = requireActivity.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        m32061a.f19979a = mo10154s;
        C5999k c5999k = (C5999k) m32061a.m32060a();
        this.f19869c = (AbstractC6019u) c5999k.f19968d.get();
        this.f19870d = (AbstractC5995h0) c5999k.f19970f.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_inbox_cleanup, viewGroup, false);
    }

    public void onDestroyView() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            C27062a m968b = C27062a.m968b(context);
            BroadcastReceiver broadcastReceiver = this.f19868b;
            if (broadcastReceiver == null) {
                s1.z.c.l.l("cleanupBroadcastReceiver");
                throw null;
            }
            m968b.m965e(broadcastReceiver);
        }
        AbstractC6019u abstractC6019u = this.f19869c;
        if (abstractC6019u == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC6019u.mo9806c();
        AbstractC5995h0 abstractC5995h0 = this.f19870d;
        if (abstractC5995h0 == null) {
            s1.z.c.l.l("inboxCleanupShareHelper");
            throw null;
        }
        abstractC5995h0.mo32073a();
        C5953b.super.onDestroyView();
    }

    public void onStart() {
        C5953b.super.onStart();
        AbstractC6019u abstractC6019u = this.f19869c;
        if (abstractC6019u != null) {
            abstractC6019u.onStart();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        String string;
        CleanupResult cleanupResult;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5953b.super.onViewCreated(view, bundle);
        h activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof h)) {
            lVar = null;
        }
        h hVar = lVar;
        if (hVar != null) {
            hVar.setSupportActionBar(m32113OA().f51210v);
            AbstractC25393a supportActionBar = hVar.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.mo3553n(true);
            }
        }
        m32113OA().f51210v.setNavigationOnClickListener(new View$OnClickListenerC5954a(0, this));
        m32113OA().f51204p.setPrimaryButtonCLickListener(new C5959f());
        m32113OA().f51206r.setOnClickListener(new View$OnClickListenerC5954a(1, this));
        m32113OA().f51209u.setOnClickListener(new o(0, this));
        m32113OA().f51191c.setOnClickListener(new o(1, this));
        m32113OA().f51196h.setOnCheckedChangeListener(new w(0, this));
        m32113OA().f51197i.setOnCheckedChangeListener(new w(1, this));
        m32113OA().f51198j.setOnCheckedChangeListener(new w(2, this));
        m32113OA().f51195g.setOnClickListener(new n0(0, this));
        m32113OA().f51192d.setOnClickListener(new n0(1, this));
        m32113OA().f51193e.setOnClickListener(new n0(2, this));
        m32113OA().f51194f.setOnClickListener(new n0(3, this));
        Group group = m32113OA().f51199k;
        s1.z.c.l.d(group, "binding.groupPromotional");
        AbstractC6019u abstractC6019u = this.f19869c;
        if (abstractC6019u == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19286f.m13683U(group, abstractC6019u.mo31955p9());
        AbstractC6019u abstractC6019u2 = this.f19869c;
        if (abstractC6019u2 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC6019u2.mo9029Y0(this);
        AbstractC5995h0 abstractC5995h0 = this.f19870d;
        if (abstractC5995h0 == null) {
            s1.z.c.l.l("inboxCleanupShareHelper");
            throw null;
        }
        abstractC5995h0.mo32074Z5(this);
        Bundle arguments = getArguments();
        if (arguments != null && (cleanupResult = (CleanupResult) arguments.getParcelable("cleanup_result")) != null) {
            AbstractC6019u abstractC6019u3 = this.f19869c;
            if (abstractC6019u3 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            } else {
                s1.z.c.l.d(cleanupResult, "it");
                abstractC6019u3.mo31968T4(cleanupResult);
            }
        }
        Bundle arguments2 = getArguments();
        if (arguments2 != null && (string = arguments2.getString("analytics_context")) != null) {
            AbstractC6019u abstractC6019u4 = this.f19869c;
            if (abstractC6019u4 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            } else {
                s1.z.c.l.d(string, "it");
                abstractC6019u4.mo31969S8(string);
            }
        }
        Bundle arguments3 = getArguments();
        if (arguments3 == null) {
            return;
        }
        int i = arguments3.getInt("action");
        AbstractC6019u abstractC6019u5 = this.f19869c;
        if (abstractC6019u5 != null) {
            abstractC6019u5.mo31958lj(i);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: qm */
    public void mo31999qm() {
        new C5971d(new C5960g()).show(getChildFragmentManager(), "AutoCleanupBottomSheet");
    }

    @Override // p193e.p194a.p1268u.a$b
    /* renamed from: r4 */
    public void mo11024r4() {
        AbstractC5995h0 abstractC5995h0 = this.f19870d;
        if (abstractC5995h0 != null) {
            abstractC5995h0.mo32069r4();
        } else {
            s1.z.c.l.l("inboxCleanupShareHelper");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: si */
    public void mo31998si(boolean z) {
        CheckBox checkBox = m32113OA().f51196h;
        s1.z.c.l.d(checkBox, "binding.checkBoxOtp");
        checkBox.setChecked(z);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: uy */
    public void mo31997uy(int i, int i2, int i3) {
        AbstractC5995h0 abstractC5995h0 = this.f19870d;
        if (abstractC5995h0 == null) {
            s1.z.c.l.l("inboxCleanupShareHelper");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        abstractC5995h0.mo32072a6(requireContext, i, i2, i3);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: vc */
    public void mo31996vc(boolean z) {
        SwitchCompat switchCompat = m32113OA().f51209u;
        s1.z.c.l.d(switchCompat, "binding.switchAutoCleanup");
        switchCompat.setChecked(z);
        MaterialButton materialButton = m32113OA().f51191c;
        s1.z.c.l.d(materialButton, "binding.btnAutoViewPrefs");
        C19286f.m13683U(materialButton, z);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC6020v
    /* renamed from: vu */
    public void mo31995vu(boolean z) {
        MaterialButton materialButton = m32113OA().f51195g;
        s1.z.c.l.d(materialButton, "binding.btnCleanupNow");
        materialButton.setEnabled(z);
    }
}
