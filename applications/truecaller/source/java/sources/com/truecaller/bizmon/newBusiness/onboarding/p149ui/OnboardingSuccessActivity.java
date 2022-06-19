package com.truecaller.bizmon.newBusiness.onboarding.p149ui;

import android.animation.Animator;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.airbnb.lottie.LottieAnimationView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.bizmon.C3478R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p295a.p312c.p313a.View$OnClickListenerC7750w;
import p193e.p194a.p294b.p295a.p312c.p313a.View$OnClickListenerC7751x;
import p193e.p194a.p294b.p295a.p321e.AbstractC7761a;
import p193e.p194a.p294b.p295a.p321e.AbstractC7775b;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8065g;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u000fJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R(\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\b\u0010\t\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "getFeaturesRegistry", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "getFeaturesRegistry$annotations", "()V", "featuresRegistry", "Le/a/b/a/e/b;", "a", "Le/a/b/a/e/b;", "getBusinessAnalyticsManager", "()Le/a/b/a/e/b;", "setBusinessAnalyticsManager", "(Le/a/b/a/e/b;)V", "businessAnalyticsManager", "Le/a/b/m/g;", AbstractC2405c.f7629a, "Le/a/b/m/g;", "binding", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingSuccessActivity */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity.class */
public final class OnboardingSuccessActivity extends h {
    @Inject

    /* renamed from: a */
    public AbstractC7775b f10336a;
    @Inject

    /* renamed from: b */
    public C20592g f10337b;

    /* renamed from: c */
    public C8065g f10338c;

    /* renamed from: com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingSuccessActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity$a.class */
    public static final class C3505a extends m implements l<Animator, s> {

        /* renamed from: b */
        public final /* synthetic */ C8065g f10339b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3505a(C8065g c8065g) {
            super(1);
            this.f10339b = c8065g;
        }

        /* renamed from: d */
        public Object m35858d(Object obj) {
            Animator animator = (Animator) obj;
            Group group = this.f10339b.f24891f;
            s1.z.c.l.d(group, "informationGroup");
            C19286f.m13684T(group);
            LottieAnimationView lottieAnimationView = this.f10339b.f24888c;
            s1.z.c.l.d(lottieAnimationView, "animationView");
            C19286f.m13687Q(lottieAnimationView);
            return s.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        OnboardingSuccessActivity.super.onCreate(bundle);
        View inflate = LayoutInflater.from(this).inflate(C3478R.layout.activity_success_onboarding, (ViewGroup) null, false);
        int i = C3478R.C3480id.addMoreBtn;
        Button button = (Button) inflate.findViewById(i);
        if (button != null) {
            i = C3478R.C3480id.animationView;
            LottieAnimationView lottieAnimationView = (LottieAnimationView) inflate.findViewById(i);
            if (lottieAnimationView != null) {
                i = C3478R.C3480id.backgroundView;
                View findViewById = inflate.findViewById(i);
                if (findViewById != null) {
                    i = C3478R.C3480id.doneBtn;
                    Button button2 = (Button) inflate.findViewById(i);
                    if (button2 != null) {
                        i = C3478R.C3480id.header;
                        TextView textView = (TextView) inflate.findViewById(i);
                        if (textView != null) {
                            i = C3478R.C3480id.infolineFirst;
                            TextView textView2 = (TextView) inflate.findViewById(i);
                            if (textView2 != null) {
                                i = C3478R.C3480id.infolineSecond;
                                TextView textView3 = (TextView) inflate.findViewById(i);
                                if (textView3 != null) {
                                    i = C3478R.C3480id.infolineThird;
                                    TextView textView4 = (TextView) inflate.findViewById(i);
                                    if (textView4 != null) {
                                        i = C3478R.C3480id.informationGroup;
                                        Group group = (Group) inflate.findViewById(i);
                                        if (group != null) {
                                            i = C3478R.C3480id.pitchImage;
                                            ImageView imageView = (ImageView) inflate.findViewById(i);
                                            if (imageView != null) {
                                                i = C3478R.C3480id.pointerFirst;
                                                ImageView imageView2 = (ImageView) inflate.findViewById(i);
                                                if (imageView2 != null) {
                                                    i = C3478R.C3480id.pointerSecond;
                                                    ImageView imageView3 = (ImageView) inflate.findViewById(i);
                                                    if (imageView3 != null) {
                                                        i = C3478R.C3480id.pointerThird;
                                                        ImageView imageView4 = (ImageView) inflate.findViewById(i);
                                                        if (imageView4 != null) {
                                                            i = C3478R.C3480id.spaceView;
                                                            View findViewById2 = inflate.findViewById(i);
                                                            if (findViewById2 != null) {
                                                                i = C3478R.C3480id.subHeader;
                                                                TextView textView5 = (TextView) inflate.findViewById(i);
                                                                if (textView5 != null) {
                                                                    C8065g c8065g = new C8065g((ConstraintLayout) inflate, button, lottieAnimationView, findViewById, button2, textView, textView2, textView3, textView4, group, imageView, imageView2, imageView3, imageView4, findViewById2, textView5);
                                                                    s1.z.c.l.d(c8065g, "ActivitySuccessOnboardin…ayoutInflater.from(this))");
                                                                    this.f10338c = c8065g;
                                                                    if (c8065g == null) {
                                                                        s1.z.c.l.l("binding");
                                                                        throw null;
                                                                    }
                                                                    setContentView(c8065g.f24886a);
                                                                    C8065g c8065g2 = this.f10338c;
                                                                    if (c8065g2 == null) {
                                                                        s1.z.c.l.l("binding");
                                                                        throw null;
                                                                    }
                                                                    LottieAnimationView lottieAnimationView2 = c8065g2.f24888c;
                                                                    s1.z.c.l.d(lottieAnimationView2, "animationView");
                                                                    C12864a2.m22579O(lottieAnimationView2, new C3505a(c8065g2));
                                                                    C7805e c7805e = (C7805e) C18334g0.m15219l(this);
                                                                    this.f10336a = (AbstractC7775b) c7805e.f24274O.get();
                                                                    C20592g mo12343i5 = c7805e.f24288b.mo12343i5();
                                                                    Objects.requireNonNull(mo12343i5, "Cannot return null from a non-@Nullable component method");
                                                                    this.f10337b = mo12343i5;
                                                                    C8065g c8065g3 = this.f10338c;
                                                                    if (c8065g3 == null) {
                                                                        s1.z.c.l.l("binding");
                                                                        throw null;
                                                                    }
                                                                    C15314a c15314a = C15314a.f43582g;
                                                                    AbstractC15317d m18938a = C15314a.m18938a();
                                                                    if ((m18938a instanceof AbstractC15317d.C15320c) || (m18938a instanceof AbstractC15317d.C15318a)) {
                                                                        c8065g3.f24892g.setImageResource(C3478R.C3479drawable.biz_illustration_done_light);
                                                                    } else if (!(m18938a instanceof AbstractC15317d.C15321d) && !(m18938a instanceof AbstractC15317d.C15319b)) {
                                                                        c8065g3.f24892g.setImageResource(C3478R.C3479drawable.biz_illustration_done_light);
                                                                    } else {
                                                                        c8065g3.f24892g.setImageResource(C3478R.C3479drawable.biz_illustration_done_dark);
                                                                    }
                                                                    C8065g c8065g4 = this.f10338c;
                                                                    if (c8065g4 == null) {
                                                                        s1.z.c.l.l("binding");
                                                                        throw null;
                                                                    }
                                                                    c8065g4.f24890e.setOnClickListener(new View$OnClickListenerC7751x(this));
                                                                    C8065g c8065g5 = this.f10338c;
                                                                    if (c8065g5 == null) {
                                                                        s1.z.c.l.l("binding");
                                                                        throw null;
                                                                    }
                                                                    C20592g c20592g = this.f10337b;
                                                                    if (c20592g == null) {
                                                                        s1.z.c.l.l("featuresRegistry");
                                                                        throw null;
                                                                    }
                                                                    if (c20592g.m10944x().isEnabled()) {
                                                                        Button button3 = c8065g5.f24887b;
                                                                        s1.z.c.l.d(button3, "addMoreBtn");
                                                                        C19286f.m13684T(button3);
                                                                        c8065g5.f24887b.setOnClickListener(new View$OnClickListenerC7750w(this));
                                                                    }
                                                                    AbstractC7775b abstractC7775b = this.f10336a;
                                                                    if (abstractC7775b != null) {
                                                                        abstractC7775b.mo29295a(AbstractC7761a.C7772k.f24232a);
                                                                        return;
                                                                    } else {
                                                                        s1.z.c.l.l("businessAnalyticsManager");
                                                                        throw null;
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
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }
}
