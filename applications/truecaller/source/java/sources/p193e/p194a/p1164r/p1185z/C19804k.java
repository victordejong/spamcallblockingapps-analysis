package p193e.p194a.p1164r.p1185z;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import com.truecaller.wizard.C4861R;
import s1.z.c.l;
/* renamed from: e.a.r.z.k */
/* loaded from: classes16-dex2jar.jar:e/a/r/z/k.class */
public final class C19804k extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ l f54850a;

    public C19804k(l lVar) {
        this.f54850a = lVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        l.e(animator, "animation");
        TextView textView = this.f54850a.j;
        if (textView == null) {
            l.l("titleView");
            throw null;
        }
        textView.setText(C4861R.string.CallVerification_title2);
        TextView textView2 = this.f54850a.k;
        if (textView2 != null) {
            textView2.setText(C4861R.string.CallVerification_details);
        } else {
            l.l("detailsView");
            throw null;
        }
    }
}
