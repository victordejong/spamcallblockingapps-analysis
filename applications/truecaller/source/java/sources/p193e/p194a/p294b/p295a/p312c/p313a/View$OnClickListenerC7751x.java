package p193e.p194a.p294b.p295a.p312c.p313a;

import android.view.View;
import com.truecaller.bizmon.newBusiness.onboarding.p149ui.OnboardingSuccessActivity;
/* renamed from: e.a.b.a.c.a.x */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/x.class */
public final class View$OnClickListenerC7751x implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ OnboardingSuccessActivity f24212a;

    public View$OnClickListenerC7751x(OnboardingSuccessActivity onboardingSuccessActivity) {
        this.f24212a = onboardingSuccessActivity;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingSuccessActivity, android.app.Activity] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingSuccessActivity, android.app.Activity] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f24212a.setResult(-1);
        this.f24212a.finish();
    }
}
