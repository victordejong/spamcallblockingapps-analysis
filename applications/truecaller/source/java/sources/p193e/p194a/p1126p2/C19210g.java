package p193e.p194a.p1126p2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.truecaller.aftercall.AfterCallPromotionActivity;
/* renamed from: e.a.p2.g */
/* loaded from: classes3-dex2jar.jar:e/a/p2/g.class */
public class C19210g extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ AfterCallPromotionActivity f53586a;

    public C19210g(AfterCallPromotionActivity afterCallPromotionActivity) {
        this.f53586a = afterCallPromotionActivity;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f53586a.i = -1L;
    }
}
