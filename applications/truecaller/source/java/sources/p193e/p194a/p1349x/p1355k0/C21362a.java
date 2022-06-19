package p193e.p194a.p1349x.p1355k0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.textview.GoldShineChronometer;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.ghost_call.C4002R;
import com.truecaller.incallui.utils.OngoingCallActionButton;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.timezone.TimezoneView;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.p187ui.utils.ToastWithActionView;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1349x.p1354j0.C21360b;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p717f.p718a.p721b.p723b.C13568a;
import p193e.p194a.p717f.p732x.C13752k;
import s1.a.l;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018�� U2\u00020\u00012\u00020\u0002:\u0001VB\u0007¢\u0006\u0004\bT\u0010\u0015J+\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\r2\b\b\u0001\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001a\u0010\u0013J\u0017\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001b\u0010\u0013J\u0017\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\rH\u0016¢\u0006\u0004\b \u0010\u0015J\u0017\u0010!\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b!\u0010\u0013J\u000f\u0010\"\u001a\u00020\rH\u0016¢\u0006\u0004\b\"\u0010\u0015J\u0019\u0010$\u001a\u00020\r2\b\u0010#\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b$\u0010\u001fJ\u0019\u0010&\u001a\u00020\r2\b\b\u0001\u0010%\u001a\u00020\u0010H\u0016¢\u0006\u0004\b&\u0010\u0013J\u0019\u0010(\u001a\u00020\r2\b\b\u0001\u0010'\u001a\u00020\u0010H\u0016¢\u0006\u0004\b(\u0010\u0013J\u000f\u0010)\u001a\u00020\rH\u0016¢\u0006\u0004\b)\u0010\u0015J\u000f\u0010*\u001a\u00020\rH\u0016¢\u0006\u0004\b*\u0010\u0015J\u0017\u0010+\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b+\u0010\u0013J#\u0010-\u001a\u00020\r2\b\b\u0001\u0010,\u001a\u00020\u00102\b\b\u0001\u0010%\u001a\u00020\u0010H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\rH\u0016¢\u0006\u0004\b/\u0010\u0015J\u000f\u00100\u001a\u00020\rH\u0017¢\u0006\u0004\b0\u0010\u0015J\u000f\u00101\u001a\u00020\rH\u0016¢\u0006\u0004\b1\u0010\u0015J\u000f\u00102\u001a\u00020\rH\u0016¢\u0006\u0004\b2\u0010\u0015J\u000f\u00103\u001a\u00020\rH\u0016¢\u0006\u0004\b3\u0010\u0015J\u000f\u00104\u001a\u00020\rH\u0016¢\u0006\u0004\b4\u0010\u0015R\"\u0010<\u001a\u0002058\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u0016\u0010@\u001a\u00020=8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?R\u001d\u0010F\u001a\u00020A8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER\u0016\u0010J\u001a\u00020G8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bH\u0010IR%\u0010Q\u001a\n L*\u0004\u0018\u00010K0K8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010PR\u0016\u0010S\u001a\u00020G8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bR\u0010I¨\u0006W"}, d2 = {"Le/a/x/k0/a;", "Le/a/x/b;", "Le/a/x/k0/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", RemoteMessageConst.Notification.COLOR, "L4", "(I)V", "s1", "()V", "", "chronometerBase", "t5", "(J)V", "D3", "i4", "", "number", "setPhoneNumber", "(Ljava/lang/String;)V", "J", "i1", "r1", "profileName", "setProfileName", "textColor", "p0", "textSize", "S0", "P2", "Z", "U0", "backgroundColor", "Mj", "(II)V", "X5", "y5", "z", "M1", "cc", "onDestroyView", "Le/a/x/k0/d;", "f", "Le/a/x/k0/d;", "getPresenter", "()Le/a/x/k0/d;", "setPresenter", "(Le/a/x/k0/d;)V", "presenter", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "OA", "()Lcom/truecaller/common/ui/avatar/AvatarXView;", "avatar", "Le/a/x/j0/b;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "TA", "()Le/a/x/j0/b;", "binding", "Landroid/widget/TextView;", "QA", "()Landroid/widget/TextView;", "simSlot", "Landroid/view/animation/Animation;", "kotlin.jvm.PlatformType", "g", "Ls1/g;", "getFadeInAnimation", "()Landroid/view/animation/Animation;", "fadeInAnimation", "PA", "regularCallerLabel", "<init>", "j", C22021b.f61237c, "ghost-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.x.k0.a */
/* loaded from: classes9-dex2jar.jar:e/a/x/k0/a.class */
public final class C21362a extends AbstractC21372g implements AbstractC21370e {

    /* renamed from: i */
    public static final /* synthetic */ l[] f59807i = {C22128a.m8621g0(C21362a.class, "binding", "getBinding()Lcom/truecaller/ghost_call/databinding/FragmentGhostcalluiOngoingBinding;", 0)};

    /* renamed from: j */
    public static final C21364b f59808j = new C21364b(null);
    @Inject

    /* renamed from: f */
    public AbstractC21369d f59809f;

    /* renamed from: g */
    public final g f59810g = C25225a.m3978P1(new C21365c());

    /* renamed from: h */
    public final ViewBindingProperty f59811h = new C19350a(new C21363a());

    /* renamed from: e.a.x.k0.a$a */
    /* loaded from: classes9-dex2jar.jar:e/a/x/k0/a$a.class */
    public static final class C21363a extends m implements s1.z.b.l<C21362a, C21360b> {
        public C21363a() {
            super(1);
        }

        /* renamed from: d */
        public Object m9861d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4002R.C4004id.barrier;
            Barrier barrier = (Barrier) requireView.findViewById(i);
            if (barrier != null) {
                i = C4002R.C4004id.btn_group_container;
                View findViewById = requireView.findViewById(i);
                if (findViewById != null) {
                    C13752k m21233a = C13752k.m21233a(findViewById);
                    i = C4002R.C4004id.button_end_call;
                    FloatingActionButton findViewById2 = requireView.findViewById(i);
                    if (findViewById2 != null) {
                        i = C4002R.C4004id.button_record;
                        com.truecaller.common.p156ui.fab.FloatingActionButton floatingActionButton = (com.truecaller.common.p156ui.fab.FloatingActionButton) requireView.findViewById(i);
                        if (floatingActionButton != null) {
                            i = C4002R.C4004id.button_voip;
                            FloatingActionButton findViewById3 = requireView.findViewById(i);
                            if (findViewById3 != null) {
                                i = C4002R.C4004id.chronometer;
                                GoldShineChronometer goldShineChronometer = (GoldShineChronometer) requireView.findViewById(i);
                                if (goldShineChronometer != null) {
                                    i = C4002R.C4004id.contextCallView;
                                    ToastWithActionView toastWithActionView = (ToastWithActionView) requireView.findViewById(i);
                                    if (toastWithActionView != null) {
                                        i = C4002R.C4004id.ghost_call_label;
                                        TextView textView = (TextView) requireView.findViewById(i);
                                        if (textView != null) {
                                            i = C4002R.C4004id.image_profile_picture;
                                            AvatarXView avatarXView = (AvatarXView) requireView.findViewById(i);
                                            if (avatarXView != null) {
                                                i = C4002R.C4004id.img_user_badge;
                                                ImageView imageView = (ImageView) requireView.findViewById(i);
                                                if (imageView != null) {
                                                    i = C4002R.C4004id.linear_status;
                                                    LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                                                    if (linearLayout != null) {
                                                        ConstraintLayout constraintLayout = (ConstraintLayout) requireView;
                                                        i = C4002R.C4004id.profile_name_container;
                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) requireView.findViewById(i);
                                                        if (constraintLayout2 != null) {
                                                            i = C4002R.C4004id.spam_caller_container;
                                                            ConstraintLayout constraintLayout3 = (ConstraintLayout) requireView.findViewById(i);
                                                            if (constraintLayout3 != null) {
                                                                i = C4002R.C4004id.spam_caller_icon;
                                                                TintedImageView tintedImageView = (TintedImageView) requireView.findViewById(i);
                                                                if (tintedImageView != null) {
                                                                    i = C4002R.C4004id.spam_caller_label;
                                                                    TextView textView2 = (TextView) requireView.findViewById(i);
                                                                    if (textView2 != null) {
                                                                        i = C4002R.C4004id.text_caller_label;
                                                                        GoldShineTextView goldShineTextView = (GoldShineTextView) requireView.findViewById(i);
                                                                        if (goldShineTextView != null) {
                                                                            i = C4002R.C4004id.text_number;
                                                                            GoldShineTextView goldShineTextView2 = (GoldShineTextView) requireView.findViewById(i);
                                                                            if (goldShineTextView2 != null) {
                                                                                i = C4002R.C4004id.text_phonebook_number;
                                                                                GoldShineTextView goldShineTextView3 = (GoldShineTextView) requireView.findViewById(i);
                                                                                if (goldShineTextView3 != null) {
                                                                                    i = C4002R.C4004id.text_profile_name;
                                                                                    GoldShineTextView goldShineTextView4 = (GoldShineTextView) requireView.findViewById(i);
                                                                                    if (goldShineTextView4 != null) {
                                                                                        i = C4002R.C4004id.text_sim_slot;
                                                                                        GoldShineTextView goldShineTextView5 = (GoldShineTextView) requireView.findViewById(i);
                                                                                        if (goldShineTextView5 != null) {
                                                                                            i = C4002R.C4004id.text_status;
                                                                                            GoldShineTextView goldShineTextView6 = (GoldShineTextView) requireView.findViewById(i);
                                                                                            if (goldShineTextView6 != null) {
                                                                                                i = C4002R.C4004id.timezone_view;
                                                                                                TimezoneView timezoneView = (TimezoneView) requireView.findViewById(i);
                                                                                                if (timezoneView != null) {
                                                                                                    i = C4002R.C4004id.view_keypad;
                                                                                                    FrameLayout frameLayout = (FrameLayout) requireView.findViewById(i);
                                                                                                    if (frameLayout != null) {
                                                                                                        return new C21360b(constraintLayout, barrier, m21233a, findViewById2, floatingActionButton, findViewById3, goldShineChronometer, toastWithActionView, textView, avatarXView, imageView, linearLayout, constraintLayout, constraintLayout2, constraintLayout3, tintedImageView, textView2, goldShineTextView, goldShineTextView2, goldShineTextView3, goldShineTextView4, goldShineTextView5, goldShineTextView6, timezoneView, frameLayout);
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

    /* renamed from: e.a.x.k0.a$b */
    /* loaded from: classes9-dex2jar.jar:e/a/x/k0/a$b.class */
    public static final class C21364b {
        public C21364b(f fVar) {
        }
    }

    /* renamed from: e.a.x.k0.a$c */
    /* loaded from: classes9-dex2jar.jar:e/a/x/k0/a$c.class */
    public static final class C21365c extends m implements a<Animation> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21365c() {
            super(0);
            C21362a.this = r4;
        }

        public Object invoke() {
            return AnimationUtils.loadAnimation(C21362a.this.getContext(), C4002R.anim.fast_fade_in);
        }
    }

    /* renamed from: e.a.x.k0.a$d */
    /* loaded from: classes9-dex2jar.jar:e/a/x/k0/a$d.class */
    public static final class View$OnClickListenerC21366d implements View.OnClickListener {
        public View$OnClickListenerC21366d() {
            C21362a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC21369d abstractC21369d = C21362a.this.f59809f;
            if (abstractC21369d != null) {
                ((C21371f) abstractC21369d).f59816g.mo9830v();
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: D3 */
    public void mo9858D3(int i) {
        GoldShineChronometer goldShineChronometer = m9862TA().f59794c;
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        goldShineChronometer.setTextColor(C26467a.C26471d.m1787a(requireContext, i));
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: J */
    public void mo9857J() {
        GoldShineTextView goldShineTextView = m9862TA().f59799h;
        s1.z.c.l.d(goldShineTextView, "binding.textNumber");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: L4 */
    public void mo9856L4(int i) {
        GoldShineTextView goldShineTextView = m9862TA().f59803l;
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        goldShineTextView.setTextColor(C26467a.C26471d.m1787a(requireContext, i));
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: M1 */
    public void mo9855M1() {
        ToastWithActionView toastWithActionView = m9862TA().f59795d;
        s1.z.c.l.d(toastWithActionView, "binding.contextCallView");
        C19286f.m13689O(toastWithActionView);
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: Mj */
    public void mo9854Mj(int i, int i2) {
        GoldShineTextView goldShineTextView = m9862TA().f59798g;
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        goldShineTextView.setTextColor(C26467a.C26471d.m1787a(requireContext, i2));
        goldShineTextView.setBackgroundResource(C4002R.C4003drawable.bg_incallui_caller_label_identified);
        goldShineTextView.getBackground().setTint(C26467a.C26471d.m1787a(requireContext(), i));
    }

    @Override // p193e.p194a.p1349x.AbstractC21324b
    /* renamed from: OA */
    public AvatarXView mo9865OA() {
        AvatarXView avatarXView = m9862TA().f59796e;
        s1.z.c.l.d(avatarXView, "binding.imageProfilePicture");
        return avatarXView;
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: P2 */
    public void mo9853P2() {
        ImageView imageView = m9862TA().f59797f;
        s1.z.c.l.d(imageView, "binding.imgUserBadge");
        C19286f.m13689O(imageView);
    }

    @Override // p193e.p194a.p1349x.AbstractC21324b
    /* renamed from: PA */
    public TextView mo9864PA() {
        GoldShineTextView goldShineTextView = m9862TA().f59798g;
        s1.z.c.l.d(goldShineTextView, "binding.textCallerLabel");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p1349x.AbstractC21324b
    /* renamed from: QA */
    public TextView mo9863QA() {
        GoldShineTextView goldShineTextView = m9862TA().f59802k;
        s1.z.c.l.d(goldShineTextView, "binding.textSimSlot");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: S0 */
    public void mo9852S0(int i) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            m9862TA().f59801j.setTextSize(0, activity.getResources().getDimension(i));
        }
    }

    /* renamed from: TA */
    public final C21360b m9862TA() {
        return (C21360b) this.f59811h.m34468b(this, f59807i[0]);
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: U0 */
    public void mo9851U0(int i) {
        m9862TA().f59800i.setTextColorRes(i);
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: X5 */
    public void mo9850X5() {
        OngoingCallActionButton ongoingCallActionButton = m9862TA().f59792a.f39886j;
        s1.z.c.l.d(ongoingCallActionButton, "binding.btnGroupContainer.messageAction");
        C19286f.m13684T(ongoingCallActionButton);
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: Z */
    public void mo9849Z() {
        GoldShineTextView goldShineTextView = m9862TA().f59800i;
        s1.z.c.l.d(goldShineTextView, "binding.textPhonebookNumber");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: cc */
    public void mo9848cc() {
        C13752k c13752k = m9862TA().f59792a;
        s1.z.c.l.d(c13752k, "binding.btnGroupContainer");
        ConstraintLayout constraintLayout = c13752k.f39877a;
        s1.z.c.l.d(constraintLayout, "binding.btnGroupContainer.root");
        if (!C19286f.m13663p(constraintLayout)) {
            C13752k c13752k2 = m9862TA().f59792a;
            s1.z.c.l.d(c13752k2, "binding.btnGroupContainer");
            ConstraintLayout constraintLayout2 = c13752k2.f39877a;
            s1.z.c.l.d(constraintLayout2, "binding.btnGroupContainer.root");
            constraintLayout2.setVisibility(0);
            C13752k c13752k3 = m9862TA().f59792a;
            s1.z.c.l.d(c13752k3, "binding.btnGroupContainer");
            c13752k3.f39877a.startAnimation((Animation) this.f59810g.getValue());
        }
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: i1 */
    public void mo9847i1(int i) {
        GoldShineTextView goldShineTextView = m9862TA().f59799h;
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        goldShineTextView.setTextColor(C26467a.C26471d.m1787a(requireContext, i));
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: i4 */
    public void mo9846i4(int i) {
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        int m1787a = C26467a.C26471d.m1787a(requireContext, i);
        GoldShineTextView goldShineTextView = m9862TA().f59802k;
        goldShineTextView.setTextColor(m1787a);
        MediaSessionCompat.m43212o1(goldShineTextView, ColorStateList.valueOf(m1787a));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4002R.layout.fragment_ghostcallui_ongoing, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…ngoing, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        AbstractC21369d abstractC21369d = this.f59809f;
        if (abstractC21369d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC21369d).mo9806c();
        C21362a.super.onDestroyView();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1349x.AbstractC21324b
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
        AbstractC21369d abstractC21369d = this.f59809f;
        if (abstractC21369d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC21369d).f57683a = this;
        if (abstractC21369d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C21371f) abstractC21369d).m9839Jj();
        m9862TA().f59793b.setOnClickListener(new View$OnClickListenerC21366d());
        m9862TA().f59792a.f39882f.setOnClickListener((p<? super View, ? super Boolean, s>) new C21367b(this));
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: p0 */
    public void mo9845p0(int i) {
        m9862TA().f59801j.setTextColorRes(i);
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: r1 */
    public void mo9844r1() {
        C8243a c8243a = this.f59716a;
        if (c8243a != null) {
            c8243a.m28738pk(false);
        } else {
            s1.z.c.l.l("avatarPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: s1 */
    public void mo9843s1() {
        GoldShineTextView goldShineTextView = m9862TA().f59803l;
        s1.z.c.l.d(goldShineTextView, "binding.textStatus");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    public void setPhoneNumber(String str) {
        s1.z.c.l.e(str, "number");
        GoldShineTextView goldShineTextView = m9862TA().f59799h;
        goldShineTextView.setText(str);
        C19286f.m13684T(goldShineTextView);
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    public void setProfileName(String str) {
        GoldShineTextView goldShineTextView = m9862TA().f59801j;
        s1.z.c.l.d(goldShineTextView, "binding.textProfileName");
        C19286f.m13683U(goldShineTextView, !(str == null || str.length() == 0));
        GoldShineTextView goldShineTextView2 = m9862TA().f59801j;
        goldShineTextView2.setText(str);
        goldShineTextView2.setSelected(true);
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: t5 */
    public void mo9842t5(long j) {
        GoldShineChronometer goldShineChronometer = m9862TA().f59794c;
        C19286f.m13684T(goldShineChronometer);
        goldShineChronometer.setBase(j);
        goldShineChronometer.start();
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: y5 */
    public void mo9841y5() {
        FragmentManager supportFragmentManager;
        n3.r.a.l activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        s1.z.c.l.d(supportFragmentManager, "activity?.supportFragmentManager ?: return");
        C26907a c26907a = new C26907a(supportFragmentManager);
        int i = C4002R.C4004id.view_keypad;
        Objects.requireNonNull(C13568a.f39331i);
        c26907a.mo1122k(i, new C13568a(), "KEYPAD_FRAGMENT_TAG", 1);
        c26907a.m1128e("KEYPAD_FRAGMENT_TAG");
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p1349x.p1355k0.AbstractC21370e
    /* renamed from: z */
    public void mo9840z() {
        TimezoneView timezoneView = m9862TA().f59804m;
        s1.z.c.l.d(timezoneView, "binding.timezoneView");
        C19286f.m13689O(timezoneView);
    }
}
