package p193e.p194a.p1349x.p1350a;

import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionLayout$h;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.fragment.app.Fragment;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.ArrowImageViewAnimation;
import com.truecaller.common.p156ui.HeartbeatRippleView;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.tag.TagXView;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import com.truecaller.ghost_call.C4002R;
import com.truecaller.ghost_call.analytics.events.GhostCallInCallUIAction;
import com.truecaller.incallui.C4013R;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.timezone.TimezoneView;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1349x.p1351h0.C21337a;
import p193e.p194a.p1349x.p1351h0.p1352b.C21339b;
import p193e.p194a.p1349x.p1354j0.C21359a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
import s1.z.c.y;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018�� ;2\u00020\u00012\u00020\u0002:\u0001<B\u0007¢\u0006\u0004\b:\u0010\u0011J+\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0017\u0010\u0011J\u000f\u0010\u0018\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0018\u0010\u0011J\u0019\u0010\u001b\u001a\u00020\r2\b\b\u0001\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001d\u0010\u0011J\u0019\u0010\u001f\u001a\u00020\r2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u001f\u0010\u0016J\u000f\u0010 \u001a\u00020\rH\u0016¢\u0006\u0004\b \u0010\u0011J\u000f\u0010!\u001a\u00020\rH\u0016¢\u0006\u0004\b!\u0010\u0011R\u0016\u0010%\u001a\u00020\"8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0016\u00101\u001a\u00020.8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b/\u00100R\u001d\u00107\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u0016\u00109\u001a\u00020\"8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b8\u0010$¨\u0006="}, d2 = {"Le/a/x/a/a;", "Le/a/x/b;", "Le/a/x/a/h;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "M2", "()V", "r1", "", "number", "setPhoneNumber", "(Ljava/lang/String;)V", "J", "Z", "", "rippleColor", "L0", "(I)V", "M0", "profileName", "setProfileName", "L", "onDestroyView", "Landroid/widget/TextView;", "PA", "()Landroid/widget/TextView;", "regularCallerLabel", "Le/a/x/a/g;", "g", "Le/a/x/a/g;", "getPresenter", "()Le/a/x/a/g;", "setPresenter", "(Le/a/x/a/g;)V", "presenter", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "OA", "()Lcom/truecaller/common/ui/avatar/AvatarXView;", "avatar", "Le/a/x/j0/a;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "UA", "()Le/a/x/j0/a;", "binding", "QA", "simSlot", "<init>", "i", AbstractC2405c.f7629a, "ghost-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.x.a.a */
/* loaded from: classes9-dex2jar.jar:e/a/x/a/a.class */
public final class C21311a extends AbstractC21322i implements AbstractC21321h {

    /* renamed from: h */
    public static final /* synthetic */ l[] f59694h = {C22128a.m8621g0(C21311a.class, "binding", "getBinding()Lcom/truecaller/ghost_call/databinding/FragmentGhostcalluiIncomingBinding;", 0)};

    /* renamed from: i */
    public static final C21314c f59695i = new C21314c(null);

    /* renamed from: f */
    public final ViewBindingProperty f59696f = new C19350a(new C21313b());
    @Inject

    /* renamed from: g */
    public AbstractC21320g f59697g;

    /* renamed from: e.a.x.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/x/a/a$a.class */
    public static final class View$OnClickListenerC21312a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f59698a;

        /* renamed from: b */
        public final /* synthetic */ Object f59699b;

        public View$OnClickListenerC21312a(int i, Object obj) {
            this.f59698a = i;
            this.f59699b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f59698a;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                if (((C21311a) this.f59699b).f59697g != null) {
                    return;
                }
                s1.z.c.l.l("presenter");
                throw null;
            }
            AbstractC21320g abstractC21320g = ((C21311a) this.f59699b).f59697g;
            if (abstractC21320g == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            C21319f c21319f = (C21319f) abstractC21320g;
            c21319f.f59709g.mo9830v();
            C21337a c21337a = c21319f.f59710h;
            GhostCallInCallUIAction ghostCallInCallUIAction = GhostCallInCallUIAction.CallDeclined;
            Objects.requireNonNull(c21337a);
            s1.z.c.l.e(ghostCallInCallUIAction, "ghostCallInCallUIAction");
            C10480a.m26037O1(new C21339b(ghostCallInCallUIAction, c21337a.f59734d.m17200a()), c21337a);
        }
    }

    /* renamed from: e.a.x.a.a$b */
    /* loaded from: classes9-dex2jar.jar:e/a/x/a/a$b.class */
    public static final class C21313b extends m implements s1.z.b.l<C21311a, C21359a> {
        public C21313b() {
            super(1);
        }

        /* renamed from: d */
        public Object m9905d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            MotionLayout requireView = fragment.requireView();
            int i = C4002R.C4004id.button_accept_call;
            FloatingActionButton findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C4002R.C4004id.button_reject_call;
                FloatingActionButton findViewById2 = requireView.findViewById(i);
                if (findViewById2 != null) {
                    i = C4002R.C4004id.button_reject_call_message;
                    FloatingActionButton findViewById3 = requireView.findViewById(i);
                    if (findViewById3 != null) {
                        i = C4002R.C4004id.context_call_container_view_stub;
                        ViewStub viewStub = (ViewStub) requireView.findViewById(i);
                        if (viewStub != null) {
                            i = C4002R.C4004id.external_message_container;
                            FrameLayout frameLayout = (FrameLayout) requireView.findViewById(i);
                            if (frameLayout != null) {
                                i = C4002R.C4004id.ghost_call_label;
                                TextView textView = (TextView) requireView.findViewById(i);
                                if (textView != null) {
                                    i = C4002R.C4004id.guideline_answer_button_end;
                                    Guideline guideline = (Guideline) requireView.findViewById(i);
                                    if (guideline != null) {
                                        i = C4002R.C4004id.image_profile_picture;
                                        AvatarXView avatarXView = (AvatarXView) requireView.findViewById(i);
                                        if (avatarXView != null) {
                                            i = C4002R.C4004id.img_user_badge;
                                            ImageView imageView = (ImageView) requireView.findViewById(i);
                                            if (imageView != null) {
                                                MotionLayout motionLayout = requireView;
                                                i = C4002R.C4004id.search_warning_container_view_Stub;
                                                ViewStub viewStub2 = (ViewStub) requireView.findViewById(i);
                                                if (viewStub2 != null) {
                                                    i = C4002R.C4004id.spam_caller_container;
                                                    ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                                                    if (constraintLayout != null) {
                                                        i = C4002R.C4004id.spam_caller_icon;
                                                        TintedImageView tintedImageView = (TintedImageView) requireView.findViewById(i);
                                                        if (tintedImageView != null) {
                                                            i = C4002R.C4004id.spam_caller_label;
                                                            TextView textView2 = (TextView) requireView.findViewById(i);
                                                            if (textView2 != null) {
                                                                i = C4002R.C4004id.text_alt_name;
                                                                GoldShineTextView goldShineTextView = (GoldShineTextView) requireView.findViewById(i);
                                                                if (goldShineTextView != null) {
                                                                    i = C4002R.C4004id.text_caller_label;
                                                                    GoldShineTextView goldShineTextView2 = (GoldShineTextView) requireView.findViewById(i);
                                                                    if (goldShineTextView2 != null) {
                                                                        i = C4002R.C4004id.text_carrier;
                                                                        GoldShineTextView goldShineTextView3 = (GoldShineTextView) requireView.findViewById(i);
                                                                        if (goldShineTextView3 != null) {
                                                                            i = C4002R.C4004id.text_incoming_call;
                                                                            GoldShineTextView goldShineTextView4 = (GoldShineTextView) requireView.findViewById(i);
                                                                            if (goldShineTextView4 != null) {
                                                                                i = C4002R.C4004id.text_job_details;
                                                                                GoldShineTextView goldShineTextView5 = (GoldShineTextView) requireView.findViewById(i);
                                                                                if (goldShineTextView5 != null) {
                                                                                    i = C4002R.C4004id.text_location;
                                                                                    GoldShineTextView goldShineTextView6 = (GoldShineTextView) requireView.findViewById(i);
                                                                                    if (goldShineTextView6 != null) {
                                                                                        i = C4002R.C4004id.text_number;
                                                                                        GoldShineTextView goldShineTextView7 = (GoldShineTextView) requireView.findViewById(i);
                                                                                        if (goldShineTextView7 != null) {
                                                                                            i = C4002R.C4004id.text_phonebook_number;
                                                                                            GoldShineTextView goldShineTextView8 = (GoldShineTextView) requireView.findViewById(i);
                                                                                            if (goldShineTextView8 != null) {
                                                                                                i = C4002R.C4004id.text_profile_name;
                                                                                                GoldShineTextView goldShineTextView9 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                if (goldShineTextView9 != null) {
                                                                                                    i = C4002R.C4004id.text_sim_slot;
                                                                                                    GoldShineTextView goldShineTextView10 = (GoldShineTextView) requireView.findViewById(i);
                                                                                                    if (goldShineTextView10 != null) {
                                                                                                        i = C4002R.C4004id.timezone_view;
                                                                                                        TimezoneView timezoneView = (TimezoneView) requireView.findViewById(i);
                                                                                                        if (timezoneView != null) {
                                                                                                            i = C4002R.C4004id.view_answer_arrows;
                                                                                                            ArrowImageViewAnimation arrowImageViewAnimation = (ArrowImageViewAnimation) requireView.findViewById(i);
                                                                                                            if (arrowImageViewAnimation != null) {
                                                                                                                i = C4002R.C4004id.view_ripple;
                                                                                                                HeartbeatRippleView heartbeatRippleView = (HeartbeatRippleView) requireView.findViewById(i);
                                                                                                                if (heartbeatRippleView != null) {
                                                                                                                    i = C4002R.C4004id.view_tag;
                                                                                                                    TagXView tagXView = (TagXView) requireView.findViewById(i);
                                                                                                                    if (tagXView != null) {
                                                                                                                        i = C4002R.C4004id.view_tag_business;
                                                                                                                        TagXView tagXView2 = (TagXView) requireView.findViewById(i);
                                                                                                                        if (tagXView2 != null) {
                                                                                                                            return new C21359a(motionLayout, findViewById, findViewById2, findViewById3, viewStub, frameLayout, textView, guideline, avatarXView, imageView, motionLayout, viewStub2, constraintLayout, tintedImageView, textView2, goldShineTextView, goldShineTextView2, goldShineTextView3, goldShineTextView4, goldShineTextView5, goldShineTextView6, goldShineTextView7, goldShineTextView8, goldShineTextView9, goldShineTextView10, timezoneView, arrowImageViewAnimation, heartbeatRippleView, tagXView, tagXView2);
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

    /* renamed from: e.a.x.a.a$c */
    /* loaded from: classes9-dex2jar.jar:e/a/x/a/a$c.class */
    public static final class C21314c {
        public C21314c(f fVar) {
        }
    }

    /* renamed from: TA */
    public static final void m9907TA(C21311a c21311a) {
        MotionLayout motionLayout = c21311a.m9906UA().f59785f;
        AbstractC21320g abstractC21320g = c21311a.f59697g;
        if (abstractC21320g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        float progress = motionLayout.getProgress();
        int currentState = motionLayout.getCurrentState();
        int startState = motionLayout.getStartState();
        int endState = motionLayout.getEndState();
        C21319f c21319f = (C21319f) abstractC21320g;
        boolean z = ((double) progress) >= 0.95d || currentState == C4013R.C4015id.incoming_incallui_answer_end_set;
        if (!(startState == C4013R.C4015id.incoming_incallui_answer_start_set)) {
            return;
        }
        boolean z2 = false;
        if (endState == C4013R.C4015id.incoming_incallui_answer_end_set) {
            z2 = true;
        }
        if (!z2 || !z) {
            return;
        }
        d.w2(c21319f, (s1.w.f) null, (j0) null, new C21318e(c21319f, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1349x.p1350a.AbstractC21321h
    /* renamed from: J */
    public void mo9899J() {
        GoldShineTextView goldShineTextView = m9906UA().f59787h;
        s1.z.c.l.d(goldShineTextView, "binding.textNumber");
        C19286f.m13689O(goldShineTextView);
    }

    @Override // p193e.p194a.p1349x.p1350a.AbstractC21321h
    /* renamed from: L */
    public void mo9898L() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            FloatingActionButton floatingActionButton = m9906UA().f59780a;
            int i = C4002R.color.incallui_action_end_call_background_color;
            Object obj = C26467a.f74235a;
            ColorStateList valueOf = ColorStateList.valueOf(C26467a.C26471d.m1787a(activity, i));
            AtomicInteger atomicInteger = C26614s.f74505a;
            floatingActionButton.setBackgroundTintList(valueOf);
            m9906UA().f59780a.setImageResource(C4002R.C4003drawable.ic_button_incallui_hangup);
            MotionLayout motionLayout = m9906UA().f59785f;
            motionLayout.f1(1.0f);
            motionLayout.setTransitionListener((MotionLayout$h) null);
            MotionLayout motionLayout2 = m9906UA().f59785f;
            s1.z.c.l.d(motionLayout2, "binding.motionLayout");
            motionLayout2.setProgress(0.0f);
            motionLayout.q1(C4002R.C4004id.incoming_incallui_answer_end_set, C4002R.C4004id.incoming_incallui_accepted_end_set);
            motionLayout.f1(1.0f);
        }
    }

    @Override // p193e.p194a.p1349x.p1350a.AbstractC21321h
    /* renamed from: L0 */
    public void mo9897L0(int i) {
        HeartbeatRippleView heartbeatRippleView = m9906UA().f59791l;
        AvatarXView avatarXView = m9906UA().f59784e;
        s1.z.c.l.d(avatarXView, "binding.imageProfilePicture");
        int i2 = HeartbeatRippleView.f11004f;
        heartbeatRippleView.m35705e(i, avatarXView, true);
    }

    @Override // p193e.p194a.p1349x.p1350a.AbstractC21321h
    /* renamed from: M0 */
    public void mo9896M0() {
        m9906UA().f59791l.m35706d();
    }

    @Override // p193e.p194a.p1349x.p1350a.AbstractC21321h
    /* renamed from: M2 */
    public void mo9895M2() {
        FloatingActionButton floatingActionButton = m9906UA().f59782c;
        s1.z.c.l.d(floatingActionButton, "binding.buttonRejectCallMessage");
        C19286f.m13684T(floatingActionButton);
    }

    @Override // p193e.p194a.p1349x.AbstractC21324b
    /* renamed from: OA */
    public AvatarXView mo9865OA() {
        AvatarXView avatarXView = m9906UA().f59784e;
        s1.z.c.l.d(avatarXView, "binding.imageProfilePicture");
        return avatarXView;
    }

    @Override // p193e.p194a.p1349x.AbstractC21324b
    /* renamed from: PA */
    public TextView mo9864PA() {
        GoldShineTextView goldShineTextView = m9906UA().f59786g;
        s1.z.c.l.d(goldShineTextView, "binding.textCallerLabel");
        return goldShineTextView;
    }

    @Override // p193e.p194a.p1349x.AbstractC21324b
    /* renamed from: QA */
    public TextView mo9863QA() {
        GoldShineTextView goldShineTextView = m9906UA().f59790k;
        s1.z.c.l.d(goldShineTextView, "binding.textSimSlot");
        return goldShineTextView;
    }

    /* renamed from: UA */
    public final C21359a m9906UA() {
        return (C21359a) this.f59696f.m34468b(this, f59694h[0]);
    }

    @Override // p193e.p194a.p1349x.p1350a.AbstractC21321h
    /* renamed from: Z */
    public void mo9894Z() {
        GoldShineTextView goldShineTextView = m9906UA().f59788i;
        s1.z.c.l.d(goldShineTextView, "binding.textPhonebookNumber");
        C19286f.m13689O(goldShineTextView);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4002R.layout.fragment_ghostcallui_incoming, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…coming, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        AbstractC21320g abstractC21320g = this.f59697g;
        if (abstractC21320g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C21319f) abstractC21320g).mo9806c();
        C21311a.super.onDestroyView();
    }

    @Override // p193e.p194a.p1349x.AbstractC21324b
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
        AbstractC21320g abstractC21320g = this.f59697g;
        if (abstractC21320g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C21319f) abstractC21320g).mo9029Y0(this);
        AbstractC21320g abstractC21320g2 = this.f59697g;
        if (abstractC21320g2 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C21319f) abstractC21320g2).m9900Jj();
        m9906UA().f59781b.setOnClickListener(new View$OnClickListenerC21312a(0, this));
        m9906UA().f59782c.setOnClickListener(new View$OnClickListenerC21312a(1, this));
        y yVar = new y();
        yVar.a = false;
        y yVar2 = new y();
        yVar2.a = false;
        MotionLayout motionLayout = m9906UA().f59785f;
        motionLayout.setOnTouchListener(new View$OnTouchListenerC21315b(motionLayout, this, yVar, yVar2));
        motionLayout.setTransitionListener(new C21316c(this, yVar, yVar2));
    }

    @Override // p193e.p194a.p1349x.p1350a.AbstractC21321h
    /* renamed from: r1 */
    public void mo9893r1() {
        C8243a c8243a = this.f59716a;
        if (c8243a != null) {
            c8243a.m28738pk(false);
        } else {
            s1.z.c.l.l("avatarPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1349x.p1350a.AbstractC21321h
    public void setPhoneNumber(String str) {
        s1.z.c.l.e(str, "number");
        GoldShineTextView goldShineTextView = m9906UA().f59787h;
        goldShineTextView.setText(str);
        C19286f.m13684T(goldShineTextView);
    }

    @Override // p193e.p194a.p1349x.p1350a.AbstractC21321h
    public void setProfileName(String str) {
        GoldShineTextView goldShineTextView = m9906UA().f59789j;
        goldShineTextView.setText(str);
        C19286f.m13684T(goldShineTextView);
    }
}
