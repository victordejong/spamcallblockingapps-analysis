package com.truecaller.bizmon.newBusiness.onboarding.p149ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.profile.p150ui.BizProfileActivity;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7742o;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7743p;
import p193e.p194a.p294b.p295a.p312c.p313a.View$OnClickListenerC7739l;
import p193e.p194a.p294b.p295a.p312c.p313a.View$OnClickListenerC7740m;
import p193e.p194a.p294b.p295a.p312c.p313a.View$OnClickListenerC7741n;
import p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7670b;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8059e;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001fB\u0007¢\u0006\u0004\b&\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\f\u0010\nJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\nJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\nJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\nJ\u000f\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\nJ\u000f\u0010\u0019\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0019\u0010\nJ\u000f\u0010\u001a\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\nR\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006'"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity;", "Ln3/b/a/h;", "Le/a/b/a/c/a/p;", "Le/a/b/a/c/a/a/b$b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "()V", "onBackPressed", "f0", "j0", "e1", "", "url", C22021b.f61237c, "(Ljava/lang/String;)V", "privacyUrl", "termsUrl", "s5", "(Ljava/lang/String;Ljava/lang/String;)V", "f3", "Z1", "a0", "b0", "Le/a/b/m/e;", "Le/a/b/m/e;", "binding", "Le/a/b/a/c/a/o;", "a", "Le/a/b/a/c/a/o;", "pa", "()Le/a/b/a/c/a/o;", "setPresenter", "(Le/a/b/a/c/a/o;)V", "presenter", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingIntroActivity */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity.class */
public final class OnboardingIntroActivity extends h implements AbstractC7743p, C7670b.AbstractC7672b {

    /* renamed from: c */
    public static final /* synthetic */ int f10332c = 0;
    @Inject

    /* renamed from: a */
    public AbstractC7742o f10333a;

    /* renamed from: b */
    public C8059e f10334b;

    /* renamed from: com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingIntroActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity$a.class */
    public static final class C3503a {
        /* renamed from: a */
        public static final Intent m35860a(Context context) {
            return C22128a.m8581q0(context, AnalyticsConstants.CONTEXT, context, OnboardingIntroActivity.class);
        }
    }

    /* renamed from: com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingIntroActivity$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingIntroActivity$b.class */
    public static final class C3504b extends m implements l<String, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3504b() {
            super(1);
            OnboardingIntroActivity.this = r4;
        }

        /* renamed from: d */
        public Object m35859d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, "it");
            OnboardingIntroActivity.this.m35861pa().mo29351x4(str);
            return s.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7743p
    /* renamed from: Z1 */
    public void mo29350Z1() {
        s1.z.c.l.e(this, AnalyticsConstants.CONTEXT);
        startActivity(new Intent((Context) this, (Class<?>) BizProfileActivity.class));
        finish();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7743p
    /* renamed from: a0 */
    public void mo29349a0() {
        C8059e c8059e = this.f10334b;
        if (c8059e == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        ProgressBar progressBar = c8059e.f24847g;
        s1.z.c.l.d(progressBar, "binding.progressBar");
        C19286f.m13684T(progressBar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7743p
    /* renamed from: b */
    public void mo29348b(String str) {
        s1.z.c.l.e(str, "url");
        C19291g.m13596Q0(str, this);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7743p
    /* renamed from: b0 */
    public void mo29347b0() {
        C8059e c8059e = this.f10334b;
        if (c8059e == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        ProgressBar progressBar = c8059e.f24847g;
        s1.z.c.l.d(progressBar, "binding.progressBar");
        C19286f.m13689O(progressBar);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7743p
    /* renamed from: e1 */
    public void mo29346e1() {
        C7670b c7670b = new C7670b();
        c7670b.f24052a = this;
        c7670b.show(getSupportFragmentManager(), c7670b.getTag());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7670b.AbstractC7672b
    /* renamed from: f0 */
    public void mo29455f0() {
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7743p
    /* renamed from: f3 */
    public void mo29345f3() {
        s1.z.c.l.e(this, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent((Context) this, (Class<?>) OnboardingActivity.class);
        intent.addFlags(33554432);
        startActivity(intent);
        finish();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.p314a.C7670b.AbstractC7672b
    /* renamed from: j0 */
    public void mo29454j0() {
        AbstractC7742o abstractC7742o = this.f10333a;
        if (abstractC7742o != null) {
            abstractC7742o.mo29354j0();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onBackPressed() {
        AbstractC7742o abstractC7742o = this.f10333a;
        if (abstractC7742o != null) {
            abstractC7742o.mo29353uj();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        OnboardingIntroActivity.super.onCreate(bundle);
        View inflate = LayoutInflater.from(this).inflate(C3478R.layout.activity_new_onboarding, (ViewGroup) null, false);
        int i = C3478R.C3480id.backgroundView;
        View findViewById = inflate.findViewById(i);
        if (findViewById != null) {
            i = C3478R.C3480id.continueBtn;
            Button button = (Button) inflate.findViewById(i);
            if (button != null) {
                i = C3478R.C3480id.guideline_top;
                Guideline guideline = (Guideline) inflate.findViewById(i);
                if (guideline != null) {
                    i = C3478R.C3480id.headline;
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
                                    i = C3478R.C3480id.information;
                                    TextView textView5 = (TextView) inflate.findViewById(i);
                                    if (textView5 != null) {
                                        i = C3478R.C3480id.laterBtn;
                                        Button button2 = (Button) inflate.findViewById(i);
                                        if (button2 != null) {
                                            i = C3478R.C3480id.logoImageView;
                                            ImageView imageView = (ImageView) inflate.findViewById(i);
                                            if (imageView != null) {
                                                i = C3478R.C3480id.onboardingIntroToolbar;
                                                Toolbar toolbar = (Toolbar) inflate.findViewById(i);
                                                if (toolbar != null) {
                                                    i = C3478R.C3480id.pitchImage;
                                                    ImageView imageView2 = (ImageView) inflate.findViewById(i);
                                                    if (imageView2 != null) {
                                                        i = C3478R.C3480id.pointerFirst;
                                                        ImageView imageView3 = (ImageView) inflate.findViewById(i);
                                                        if (imageView3 != null) {
                                                            i = C3478R.C3480id.pointerSecond;
                                                            ImageView imageView4 = (ImageView) inflate.findViewById(i);
                                                            if (imageView4 != null) {
                                                                i = C3478R.C3480id.pointerThird;
                                                                ImageView imageView5 = (ImageView) inflate.findViewById(i);
                                                                if (imageView5 != null) {
                                                                    i = C3478R.C3480id.progressBar;
                                                                    ProgressBar progressBar = (ProgressBar) inflate.findViewById(i);
                                                                    if (progressBar != null) {
                                                                        i = C3478R.C3480id.spaceView;
                                                                        View findViewById2 = inflate.findViewById(i);
                                                                        if (findViewById2 != null) {
                                                                            i = C3478R.C3480id.terms;
                                                                            TextView textView6 = (TextView) inflate.findViewById(i);
                                                                            if (textView6 != null) {
                                                                                C8059e c8059e = new C8059e((ConstraintLayout) inflate, findViewById, button, guideline, textView, textView2, textView3, textView4, textView5, button2, imageView, toolbar, imageView2, imageView3, imageView4, imageView5, progressBar, findViewById2, textView6);
                                                                                s1.z.c.l.d(c8059e, "ActivityNewOnboardingBin…ayoutInflater.from(this))");
                                                                                this.f10334b = c8059e;
                                                                                setContentView(c8059e.f24841a);
                                                                                this.f10333a = (AbstractC7742o) ((C7805e) C18334g0.m15219l(this)).f24283X.get();
                                                                                s1.z.c.l.e(this, AnalyticsConstants.CONTEXT);
                                                                                C26702l m1431n = C26702l.m1431n(this);
                                                                                s1.z.c.l.d(m1431n, "WorkManager.getInstance(context)");
                                                                                C21782c.m9083c(m1431n, "AvailableTagsDownloadWorkAction", this, null, null, 12);
                                                                                AbstractC7742o abstractC7742o = this.f10333a;
                                                                                if (abstractC7742o == null) {
                                                                                    s1.z.c.l.l("presenter");
                                                                                    throw null;
                                                                                }
                                                                                abstractC7742o.mo9029Y0(this);
                                                                                AbstractC7742o abstractC7742o2 = this.f10333a;
                                                                                if (abstractC7742o2 == null) {
                                                                                    s1.z.c.l.l("presenter");
                                                                                    throw null;
                                                                                }
                                                                                abstractC7742o2.mo29352wa();
                                                                                C8059e c8059e2 = this.f10334b;
                                                                                if (c8059e2 == null) {
                                                                                    s1.z.c.l.l("binding");
                                                                                    throw null;
                                                                                }
                                                                                Toolbar toolbar2 = c8059e2.f24845e;
                                                                                s1.z.c.l.d(toolbar2, "onboardingIntroToolbar");
                                                                                toolbar2.setTitle("");
                                                                                setSupportActionBar(c8059e2.f24845e);
                                                                                AbstractC25393a supportActionBar = getSupportActionBar();
                                                                                if (supportActionBar != null) {
                                                                                    supportActionBar.mo3553n(true);
                                                                                }
                                                                                AbstractC25393a supportActionBar2 = getSupportActionBar();
                                                                                if (supportActionBar2 != null) {
                                                                                    supportActionBar2.mo3552o(true);
                                                                                }
                                                                                c8059e2.f24845e.setNavigationOnClickListener(new View$OnClickListenerC7741n(this));
                                                                                C8059e c8059e3 = this.f10334b;
                                                                                if (c8059e3 == null) {
                                                                                    s1.z.c.l.l("binding");
                                                                                    throw null;
                                                                                }
                                                                                C15314a c15314a = C15314a.f43582g;
                                                                                AbstractC15317d m18938a = C15314a.m18938a();
                                                                                if ((m18938a instanceof AbstractC15317d.C15320c) || (m18938a instanceof AbstractC15317d.C15318a)) {
                                                                                    c8059e3.f24846f.setImageResource(C3478R.C3479drawable.biz_illustration_light);
                                                                                } else if (!(m18938a instanceof AbstractC15317d.C15321d) && !(m18938a instanceof AbstractC15317d.C15319b)) {
                                                                                    c8059e3.f24846f.setImageResource(C3478R.C3479drawable.biz_illustration_light);
                                                                                } else {
                                                                                    c8059e3.f24846f.setImageResource(C3478R.C3479drawable.biz_illustration_dark);
                                                                                }
                                                                                C8059e c8059e4 = this.f10334b;
                                                                                if (c8059e4 == null) {
                                                                                    s1.z.c.l.l("binding");
                                                                                    throw null;
                                                                                }
                                                                                c8059e4.f24844d.setOnClickListener(new View$OnClickListenerC7740m(this));
                                                                                C8059e c8059e5 = this.f10334b;
                                                                                if (c8059e5 != null) {
                                                                                    c8059e5.f24843c.setOnClickListener(new View$OnClickListenerC7739l(this));
                                                                                    return;
                                                                                } else {
                                                                                    s1.z.c.l.l("binding");
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroy() {
        OnboardingIntroActivity.super.onDestroy();
        AbstractC7742o abstractC7742o = this.f10333a;
        if (abstractC7742o != null) {
            abstractC7742o.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* renamed from: pa */
    public final AbstractC7742o m35861pa() {
        AbstractC7742o abstractC7742o = this.f10333a;
        if (abstractC7742o != null) {
            return abstractC7742o;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7743p
    /* renamed from: s5 */
    public void mo29344s5(String str, String str2) {
        s1.z.c.l.e(str, "privacyUrl");
        s1.z.c.l.e(str2, "termsUrl");
        C8059e c8059e = this.f10334b;
        if (c8059e == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView = c8059e.f24849i;
        s1.z.c.l.d(textView, "binding.terms");
        C19291g.m13507u1(textView, C3478R.string.BusinessProfile_LegalInfo, str2, str);
        C19291g.m13526o0(textView, new C3504b());
    }
}
