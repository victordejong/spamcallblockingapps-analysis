package com.truecaller.callhero_assistant.onboarding;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import java.io.Serializable;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.AbstractC26914b0;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1188r3.AbstractC19897a;
import p193e.p194a.p1188r3.p1189j.AbstractC19917a;
import p193e.p194a.p1188r3.p1189j.C19918b;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.AbstractC20012e;
import p193e.p194a.p1195s.p1207q.AbstractC20109a;
import p193e.p194a.p1195s.p1207q.AbstractC20110b;
import p193e.p194a.p1195s.p1207q.C20112d;
import p193e.p194a.p1195s.p1207q.p1208e.C20119d;
import p193e.p194a.p1195s.p1207q.p1209f.C20131b;
import p193e.p194a.p1195s.p1207q.p1210g.C20145b;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import s1.i;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0016\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;", "Le/a/r3/a;", "Le/a/s/q/b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "()V", "Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;", "step", "i3", "(Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;)V", "Le/a/s/q/a;", "a", "Le/a/s/q/a;", "getPresenter", "()Le/a/s/q/a;", "setPresenter", "(Le/a/s/q/a;)V", "presenter", "<init>", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity.class */
public final class AssistantOnboardingActivity extends AbstractC19897a implements AbstractC20110b {
    @Inject

    /* renamed from: a */
    public AbstractC20109a f10675a;

    /* renamed from: com.truecaller.callhero_assistant.onboarding.AssistantOnboardingActivity$a */
    /* loaded from: classes17-dex2jar.jar:com/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity$a.class */
    public static final class C3610a implements AbstractC26914b0 {
        public C3610a() {
            AssistantOnboardingActivity.this = r4;
        }

        @Override // p1727n3.p1859r.p1860a.AbstractC26914b0
        /* renamed from: a */
        public final void mo1168a(String str, Bundle bundle) {
            AbstractC20110b abstractC20110b;
            l.e(str, "<anonymous parameter 0>");
            l.e(bundle, "result");
            AbstractC20109a abstractC20109a = AssistantOnboardingActivity.this.f10675a;
            if (abstractC20109a == null) {
                l.l("presenter");
                throw null;
            }
            Serializable serializable = bundle.getSerializable("step");
            Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.truecaller.callhero_assistant.onboarding.OnboardingStep");
            OnboardingStep onboardingStep = (OnboardingStep) serializable;
            C20112d c20112d = (C20112d) abstractC20109a;
            l.e(onboardingStep, "step");
            int ordinal = onboardingStep.ordinal();
            if (ordinal == 0) {
                AbstractC20110b abstractC20110b2 = (AbstractC20110b) c20112d.f57683a;
                if (abstractC20110b2 == null) {
                    return;
                }
                abstractC20110b2.mo11529i3(OnboardingStep.FORWARD);
            } else if (ordinal != 1) {
                if (ordinal != 2 || (abstractC20110b = (AbstractC20110b) c20112d.f57683a) == null) {
                    return;
                }
                abstractC20110b.finish();
            } else {
                AbstractC20110b abstractC20110b3 = (AbstractC20110b) c20112d.f57683a;
                if (abstractC20110b3 == null) {
                    return;
                }
                abstractC20110b3.mo11529i3(OnboardingStep.VALIDATION);
            }
        }
    }

    @Override // p193e.p194a.p1195s.p1207q.AbstractC20110b
    /* renamed from: i3 */
    public void mo11529i3(OnboardingStep onboardingStep) {
        Fragment fragment;
        l.e(onboardingStep, "step");
        int ordinal = onboardingStep.ordinal();
        if (ordinal == 0) {
            fragment = new C20145b();
        } else if (ordinal == 1) {
            fragment = new C20119d();
        } else if (ordinal != 2) {
            throw new i();
        } else {
            fragment = new C20131b();
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        C26907a c26907a = new C26907a(supportFragmentManager);
        l.d(c26907a, "beginTransaction()");
        c26907a.f75332p = true;
        c26907a.m1120m(16908290, fragment, null);
        c26907a.mo1127f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        AssistantOnboardingActivity.super.onCreate(bundle);
        getSupportFragmentManager().m42895p0("step_completed", this, new C3610a());
        l.e(this, AnalyticsConstants.CONTEXT);
        C19918b c19918b = C19918b.f56363b;
        AbstractC19917a m11813a = C19918b.m11813a(this, AbstractC20012e.AbstractC20013a.class, DynamicFeature.CALLHERO_ASSISTANT);
        Objects.requireNonNull(m11813a, "null cannot be cast to non-null type com.truecaller.callhero_assistant.CallAssistantComponent");
        AbstractC20009b abstractC20009b = (AbstractC20009b) m11813a;
        C25225a.m3846s(abstractC20009b, AbstractC20009b.class);
        f mo11644e = abstractC20009b.mo11644e();
        Objects.requireNonNull(mo11644e, "Cannot return null from a non-@Nullable component method");
        AbstractC20168a mo11660A = abstractC20009b.mo11660A();
        Objects.requireNonNull(mo11660A, "Cannot return null from a non-@Nullable component method");
        C20112d c20112d = new C20112d(mo11644e, mo11660A);
        this.f10675a = c20112d;
        c20112d.mo9029Y0(this);
    }

    public void onDestroy() {
        AbstractC20109a abstractC20109a = this.f10675a;
        if (abstractC20109a == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC20109a).mo9806c();
        AssistantOnboardingActivity.super.onDestroy();
    }
}
