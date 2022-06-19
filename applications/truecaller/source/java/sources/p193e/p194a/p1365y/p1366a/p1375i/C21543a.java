package p193e.p194a.p1365y.p1366a.p1375i;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.truecaller.flashsdk.p166ui.onboarding.FlashOnBoardingActivity;
import s1.z.c.l;
/* renamed from: e.a.y.a.i.a */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/i/a.class */
public final class C21543a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ FlashOnBoardingActivity f60133a;

    public C21543a(FlashOnBoardingActivity flashOnBoardingActivity) {
        this.f60133a = flashOnBoardingActivity;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        AbstractC21544b abstractC21544b = this.f60133a.f12187j;
        if (abstractC21544b != null) {
            abstractC21544b.mo9462U0();
        } else {
            l.l("onBoardingPresenter");
            throw null;
        }
    }
}
