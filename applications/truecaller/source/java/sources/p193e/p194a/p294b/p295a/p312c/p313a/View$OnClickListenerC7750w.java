package p193e.p194a.p294b.p295a.p312c.p313a;

import android.view.View;
import com.truecaller.bizmon.newBusiness.onboarding.p149ui.OnboardingSuccessActivity;
import com.truecaller.bizmon.newBusiness.profile.p150ui.BizProfileActivity;
/* renamed from: e.a.b.a.c.a.w */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/w.class */
public final class View$OnClickListenerC7750w implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ OnboardingSuccessActivity f24211a;

    public View$OnClickListenerC7750w(OnboardingSuccessActivity onboardingSuccessActivity) {
        this.f24211a = onboardingSuccessActivity;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingSuccessActivity, android.app.Activity] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingSuccessActivity, android.app.Activity] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ?? r0 = this.f24211a;
        r0.startActivity(BizProfileActivity.C3509b.m35853a(r0));
        this.f24211a.finish();
    }
}
