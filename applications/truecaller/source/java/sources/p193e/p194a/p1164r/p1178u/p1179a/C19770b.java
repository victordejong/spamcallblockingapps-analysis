package p193e.p194a.p1164r.p1178u.p1179a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import com.truecaller.wizard.internal.components.VerificationEditText;
/* renamed from: e.a.r.u.a.b */
/* loaded from: classes16-dex2jar.jar:e/a/r/u/a/b.class */
public class C19770b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ TextView f54818a;

    public C19770b(VerificationEditText verificationEditText, TextView textView) {
        this.f54818a = textView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f54818a.setText("");
    }
}
