package p193e.p194a.p1126p2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.truecaller.aftercall.AfterCallPromotionActivity;
/* renamed from: e.a.p2.h */
/* loaded from: classes3-dex2jar.jar:e/a/p2/h.class */
public class C19211h extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ AfterCallPromotionActivity f53587a;

    public C19211h(AfterCallPromotionActivity afterCallPromotionActivity) {
        this.f53587a = afterCallPromotionActivity;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        AfterCallPromotionActivity afterCallPromotionActivity = this.f53587a;
        afterCallPromotionActivity.j = -1L;
        afterCallPromotionActivity.overridePendingTransition(0, 0);
        this.f53587a.finish();
    }
}
