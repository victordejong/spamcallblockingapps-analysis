package p000;

import android.animation.ValueAnimator;
import carbon.widget.EditText;
/* renamed from: df0 */
/* loaded from: classes-dex2jar.jar:df0.class */
public final /* synthetic */ class df0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ EditText f5842a;

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f5842a.x(valueAnimator);
    }
}
